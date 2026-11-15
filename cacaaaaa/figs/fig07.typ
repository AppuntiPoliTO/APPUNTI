// Figure del cap. 7 (moto di Poiseuille). Ogni figura è una funzione che restituisce un canvas;
// la geometria è ricavata dai parametri in testa. Stile e colori da style.typ / template.
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#let tratt = (paint: c-aux, thickness: sp-aux, dash: "dashed")

// =====================================================================
// 1. Condotta circolare: coordinate, raggio R, lunghezza L, portata Q_v
// =====================================================================
#let fig-condotta() = canvas(length: 0.95cm, {
  import draw: *
  let (L, R, e) = (5.5, 1.0, 0.3)   // lunghezza, raggio, semiasse prospettico delle sezioni

  axis-line((-e - 0.5, 0), (L + e + 0.6, 0))
  line((0, R), (L, R), stroke: sp-geo + c-geo)
  line((0, -R), (L, -R), stroke: sp-geo + c-geo)
  circle((0, 0), radius: (e, R), stroke: sp-geo + c-geo)
  arc((L, 0), start: -90deg, stop: 90deg, radius: (e, R), anchor: "origin", stroke: sp-geo + c-geo)
  arc((L, 0), start: 90deg, stop: 270deg, radius: (e, R), anchor: "origin", stroke: tratt)

  // assi z (lungo l'asse) e r
  vettore((0, 0), (1.2, 0), col: c-geo)
  lab((1.2, 0), $z$, anchor: "south-west", pad: 0.06)
  vettore((0, 0), (0, R + 0.6), col: c-geo)
  lab((0, R + 0.6), $r$, anchor: "south", pad: 0.06)

  // raggio e lunghezza
  let xr = 0.66 * L
  line((xr, 0), (xr, R), stroke: sp-aux + c-geo, mark: punte(c-geo))
  lab((xr, R / 2), $R$, anchor: "west", pad: 0.08)
  dim((0, -R), (L, -R), [], off: -0.5, bg: false)
  lab((L / 2, -R - 0.5), $L$, anchor: "north", pad: 0.08)

  // portata
  vettore((0.36 * L, -0.45), (0.55 * L, -0.45), col: c-vel)
  lab((0.455 * L, -0.45), $Q_v$, col: c-vel, anchor: "north", pad: 0.08)
})

// =====================================================================
// 2. Profilo parabolico u(r) = u0 (1 - r^2/R^2), velocità media u_d = u0/2
// =====================================================================
#let fig-profilo() = canvas(length: 1cm, {
  import draw: *
  let u0 = 2.6
  let prof(y) = u0 * (1 - y * y)   // r adimensionale: y = r / R
  let (x0, x1) = (-0.3, 3.3)

  hatch-wall((x0, 1), (x1, 1), side: 1)
  hatch-wall((x0, -1), (x1, -1), side: -1)
  axis-line((-0.5, 0), (3.6, 0))
  lab((3.6, 0), $z$, anchor: "west", pad: 0.06)
  line((0, -1.3), (0, 1.5), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, 1.5), $r$, anchor: "south", pad: 0.06)

  // riferimenti u0 e u_d (dietro al profilo)
  for (x, body) in ((u0, $u_0$), (u0 / 2, $u_d = u_0 \/ 2$)) {
    line((x, -1.38), (x, 1.2), stroke: tratt)
    lab((x, -1.38), body, col: c-vel, anchor: "north", pad: 0.06)
  }

  line(..campiona(y => (prof(y), y), -1, 1, n: 60), stroke: sp-vec + c-vel)
  for y in (-0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75) {
    line((0, y), (prof(y), y), stroke: sp-aux + c-vel, mark: punta(c-vel))
  }
})

// =====================================================================
// 3. Sforzo viscoso tau_rz = G r / 2: nullo sull'asse, lineare fino a parete
// =====================================================================
#let fig-tau() = canvas(length: 1cm, {
  import draw: *
  let tw = 1.6                 // |tau_rz| a parete, in scala
  let (x0, x1) = (-3.3, 1.8)

  hatch-wall((x0, 1), (x1, 1), side: 1)
  hatch-wall((x0, -1), (x1, -1), side: -1)
  axis-line((x0 - 0.2, 0), (x1 + 0.3, 0))
  line((0, -1.3), (0, 1.5), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, 1.5), $r$, anchor: "south", pad: 0.06)

  // distribuzione lineare (G < 0: verso opposto al moto), simmetrica rispetto all'asse
  for s in (1, -1) {
    line((0, 0), (-tw, s), stroke: sp-vec + c-forza)
    for k in range(1, 7) {
      let y = k / 6
      line((0, s * y), (-tw * y, s * y), stroke: sp-aux + c-forza, mark: punta(c-forza))
    }
  }
  lab((-tw, 1.22), $tau_(r z)(R) = (G R) / 2$, col: c-forza, anchor: "south", pad: 0.04)
  lab((0, 0), $tau_(r z) = 0$, col: c-forza, anchor: "north-west", pad: 0.08, bg: true)

  vettore((0.6, 0.45), (1.5, 0.45), col: c-vel)
  lab((1.05, 0.45), text(fill: c-vel)[moto], anchor: "south", pad: 0.06)
})

// =====================================================================
// 4. Impianto idroelettrico: serbatoio R, condotta forzata, turbina T, scarico E
// =====================================================================
#let fig-impianto() = canvas(length: 0.85cm, {
  import draw: *
  // serbatoio
  let (xa, xb, yf, yl, yt) = (0.0, 1.8, 1.3, 3.0, 3.4)  // pareti, fondo, pelo libero, bordo
  // condotta forzata: imbocco sulla parete destra, sbocco in turbina
  let (ci, cs) = ((xb, 1.75), (5.2, 0.6))      // generatrice superiore
  let d = 0.3                                   // diametro (in verticale) in scala
  let ci2 = (xb, ci.at(1) - d)
  let cs2 = (cs.at(0), cs.at(1) - d)
  // turbina e canale di scarico
  let (tx0, tx1, ty0, ty1) = (5.2, 6.1, 0.05, 0.85)
  let (sx1, ys1, ys2) = (7.3, cs.at(1), cs2.at(1))
  let yE = (ys1 + ys2) / 2

  // riempimenti di fluido
  rect((xa, yf), (xb, yl), fill: c-fluido, stroke: none)
  line(ci, cs, cs2, ci2, close: true, fill: c-fluido, stroke: none)
  rect((tx1, ys2), (sx1, ys1), fill: c-fluido, stroke: none)

  // pareti del serbatoio (tratteggio verso l'esterno), apertura per la condotta
  hatch-wall((xa, yt), (xa, yf), side: -1)
  hatch-wall((xa, yf), (xb, yf), side: -1)
  hatch-wall((xb, yf), ci2, side: -1)
  hatch-wall(ci, (xb, yt), side: -1)
  line((xa, yl), (xb, yl), stroke: sp-aux + c-geo)
  lab((0.9, yl), [▽], anchor: "south", pad: 0.02)
  lab((0.5, 2.1), [R])

  // condotta
  line(ci, cs, stroke: sp-geo + c-geo)
  line(ci2, cs2, stroke: sp-geo + c-geo)
  lab((3.7, 1.35), [condotta \ $L = 1 "km"$, $D = 2 "m"$ \ $lambda = 0","018$], anchor: "south-west", pad: 0.04)

  // turbina
  rect((tx0, ty0), (tx1, ty1), fill: c-riemp, stroke: sp-geo + c-geo)
  lab(((tx0 + tx1) / 2, (ty0 + ty1) / 2), [T])

  // canale di scarico e sbocco E
  line((tx1, ys1), (sx1, ys1), stroke: sp-geo + c-geo)
  line((tx1, ys2), (sx1, ys2), stroke: sp-geo + c-geo)
  vettore((sx1, yE), (8.0, yE), col: c-vel)
  lab((8.0, yE), [E ($p_"atm"$)], anchor: "west", pad: 0.06)
  lab((6.2, 0.2), [$S_E = 20 "m"^2$, $k = 2$], anchor: "north-west", pad: 0.04)

  // dislivello h tra pelo libero e sbocco
  let xh = 10.3
  line((xb, yl), (xh + 0.3, yl), stroke: tratt)
  line((9.8, yE), (xh + 0.3, yE), stroke: tratt)
  line((xh, yl), (xh, yE), stroke: sp-aux + c-geo, mark: punte(c-geo))
  lab((xh, (yl + yE) / 2), $h = 300 "m"$, anchor: "east", pad: 0.1)
})

// =====================================================================
// 5. Potenza della turbina P = A Q - B Q^3 (in scala: x = Q / sqrt(A/B))
// =====================================================================
#let fig-potenza() = canvas(length: 1cm, {
  import draw: *
  let (sx, sy) = (4.5, 7.5)
  let p(x) = x - x * x * x
  let xo = 1 / calc.sqrt(3)     // massimo: dP/dQ = 0
  let xn = 0.25                 // punto nominale: 20 / sqrt(A/B) = 20 / 80

  line((0, 0), (sx * 1.15, 0), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((sx * 1.15, 0), $Q$, anchor: "west", pad: 0.06)
  line((0, 0), (0, sy * 0.48), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, sy * 0.48), $P$, anchor: "south", pad: 0.06)

  line((sx * xo, 0), (sx * xo, sy * p(xo)), stroke: tratt)
  line(..campiona(x => (sx * x, sy * p(x)), 0, 1, n: 60), stroke: sp-vec + c-norm)
  circle((sx * xo, sy * p(xo)), radius: 0.06, fill: c-geo, stroke: none)
  lab((sx * xo, sy * p(xo)), $P_"max"$, anchor: "south", pad: 0.1)
  lab((sx * xo, 0), $Q_"opt"$, anchor: "north", pad: 0.1)
  line((sx, -0.08), (sx, 0.08), stroke: sp-geo + c-geo)
  lab((sx, 0), $sqrt(A \/ B)$, anchor: "north", pad: 0.1)

  circle((sx * xn, sy * p(xn)), radius: 0.06, fill: c-vel, stroke: none)
  lab((sx * xn, sy * p(xn)), text(fill: c-vel)[nominale], anchor: "north-west", pad: 0.12)
})
