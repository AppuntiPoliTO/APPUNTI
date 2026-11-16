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
#let fig-tau() = canvas(length: 1.2cm, {
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
#let fig-impianto() = canvas(length: 1cm, {
  import draw: *

  line((0.6, 3.55), (2.75, 3.55), (2.75, 4.35), (0.6, 4.35), close: true, fill: gray.transparentize(92%), stroke: none)
  line((0.6, 4.35), (2.75, 4.35), (2.3, 4.77), (0.15, 4.77), close: true, fill: gray.transparentize(86%), stroke: none)
  line((2.75, 3.55), (2.9, 3.55), (2.9, 4.62), (2.75, 4.62), close: true, fill: gray.transparentize(78%), stroke: none)
  line((2.75, 4.62), (2.9, 4.62), (2.45, 5.04), (2.3, 5.04), close: true, fill: gray.transparentize(72%), stroke: none)
  line((2.9, 3.55), (2.45, 3.97), (2.45, 5.04), (2.9, 4.62), close: true, fill: gray.transparentize(84%), stroke: none)

  line((2.745, 3.959), (6.015, 1.589), (5.885, 1.411), (2.615, 3.781), close: true, fill: gray.transparentize(88%), stroke: none)

  line((0.6, 3.55), (0.15, 3.97), (2.3, 3.97), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.15, 3.97), (0.15, 4.77), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.3, 3.97), (2.3, 5.04), stroke: (dash: "dashed", thickness: 0.6pt))

  line((0.6, 4.35), (0.6, 3.55), (2.75, 3.55), stroke: 0.95pt)
  line((0.6, 4.35), (2.75, 4.35), (2.3, 4.77), (0.15, 4.77), close: true, stroke: 0.85pt)

  line((1.35, 4.72), (1.55, 4.72), (1.45, 4.56), close: true, stroke: 0.7pt)
  line((1.38, 4.48), (1.52, 4.48), stroke: 0.6pt)
  line((1.41, 4.41), (1.49, 4.41), stroke: 0.6pt)
  content((1.45, 3.95), text(size: 8.5pt)[$R$], anchor: "center")

  bezier((2.68, 3.98), (2.63, 3.92), (2.65, 3.98), (2.63, 3.95), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((2.63, 3.92), (2.68, 3.76), (2.63, 3.84), (2.65, 3.79), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((2.68, 3.98), (2.73, 3.82), (2.71, 3.95), (2.73, 3.89), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((2.73, 3.82), (2.68, 3.76), (2.73, 3.78), (2.71, 3.76), stroke: (dash: "dashed", thickness: 0.6pt))

  line((2.745, 3.959), (2.9, 3.847), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.615, 3.781), (2.9, 3.574), stroke: (dash: "dashed", thickness: 0.7pt))

  line((2.75, 3.55), (2.9, 3.55), (2.9, 4.62), (2.75, 4.62), close: true, stroke: 0.95pt)
  line((2.75, 4.62), (2.3, 5.04), (2.45, 5.04), (2.9, 4.62), stroke: 0.95pt)
  line((2.9, 3.55), (2.45, 3.97), (2.45, 5.04), stroke: 0.95pt)

  line((2.9, 3.847), (5.77, 1.766), stroke: 1pt)
  line((2.9, 3.574), (5.77, 1.494), stroke: 1pt)
  line((5.77, 1.766), (6.015, 1.589), stroke: (dash: "dashed", thickness: 0.65pt))
  line((5.77, 1.494), (5.885, 1.411), stroke: (dash: "dashed", thickness: 0.65pt))

  bezier((3.835, 3.169), (3.81, 3.051), (3.857, 3.153), (3.846, 3.1), stroke: 0.7pt)
  bezier((3.81, 3.051), (3.705, 2.991), (3.774, 3.002), (3.727, 2.975), stroke: 0.7pt)
  bezier((3.835, 3.169), (3.73, 3.109), (3.813, 3.185), (3.766, 3.158), stroke: (dash: "dashed", thickness: 0.5pt))
  bezier((3.73, 3.109), (3.705, 2.991), (3.694, 3.06), (3.683, 3.007), stroke: (dash: "dashed", thickness: 0.5pt))

  bezier((4.925, 2.379), (4.9, 2.261), (4.947, 2.363), (4.936, 2.31), stroke: 0.7pt)
  bezier((4.9, 2.261), (4.795, 2.201), (4.864, 2.212), (4.817, 2.185), stroke: 0.7pt)
  bezier((4.925, 2.379), (4.82, 2.319), (4.903, 2.395), (4.856, 2.368), stroke: (dash: "dashed", thickness: 0.5pt))
  bezier((4.82, 2.319), (4.795, 2.201), (4.784, 2.27), (4.773, 2.217), stroke: (dash: "dashed", thickness: 0.5pt))

  line((6.13, 1.05), (6.88, 1.05), (6.88, 1.61), (6.13, 1.61), close: true, fill: gray.transparentize(84%), stroke: none)
  line((6.13, 1.61), (6.88, 1.61), (6.52, 1.95), (5.77, 1.95), close: true, fill: gray.transparentize(78%), stroke: none)
  line((6.88, 1.05), (6.52, 1.39), (6.52, 1.95), (6.88, 1.61), close: true, fill: gray.transparentize(88%), stroke: none)

  line((6.13, 1.05), (5.77, 1.39), (5.77, 1.95), stroke: (dash: "dashed", thickness: 0.6pt))
  line((5.77, 1.39), (6.52, 1.39), stroke: (dash: "dashed", thickness: 0.6pt))

  line((6.13, 1.05), (6.88, 1.05), (6.88, 1.61), (6.13, 1.61), close: true, stroke: 0.95pt)
  line((6.13, 1.61), (5.77, 1.95), (6.52, 1.95), (6.88, 1.61), stroke: 0.95pt)
  line((6.88, 1.05), (6.52, 1.39), (6.52, 1.95), stroke: 0.95pt)

  line((6.692, 1.634), (7.536, 1.737), (7.564, 1.263), (6.708, 1.366), close: true, fill: gray.transparentize(90%), stroke: none)
  line((6.692, 1.634), (7.536, 1.737), stroke: 0.95pt)
  line((6.708, 1.366), (7.564, 1.263), stroke: 0.95pt)

  bezier((6.7, 1.63), (6.734, 1.469), (6.719, 1.613), (6.734, 1.541), stroke: 0.75pt)
  bezier((6.734, 1.469), (6.7, 1.37), (6.734, 1.397), (6.719, 1.353), stroke: 0.75pt)
  bezier((6.7, 1.37), (6.666, 1.531), (6.681, 1.387), (6.666, 1.459), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((6.666, 1.531), (6.7, 1.63), (6.666, 1.603), (6.681, 1.647), stroke: (dash: "dashed", thickness: 0.55pt))

  bezier((7.55, 1.73), (7.61, 1.445), (7.583, 1.7), (7.61, 1.572), stroke: 0.9pt)
  bezier((7.61, 1.445), (7.55, 1.27), (7.61, 1.318), (7.583, 1.24), stroke: 0.9pt)
  bezier((7.55, 1.27), (7.49, 1.555), (7.517, 1.3), (7.49, 1.428), stroke: 0.9pt)
  bezier((7.49, 1.555), (7.55, 1.73), (7.49, 1.682), (7.517, 1.76), stroke: 0.9pt)

  line((3.71, 3.57), (3.565, 3.369), mark: (end: ">"), stroke: 0.65pt)
  line((3.29, 2.99), (3.435, 3.191), mark: (end: ">"), stroke: 0.65pt)
  content((3.78, 3.58), text(size: 7.5pt)[$d = 2" m"$ : diametro], anchor: "west")

  content((4.6, 2.72), text(size: 8pt)[Condotta], anchor: "south-west")

  line((2.56, 3.71), (2.3, 3.34), stroke: 0.55pt)
  line((5.83, 1.34), (5.57, 0.97), stroke: 0.55pt)
  line((3.52, 2.58), (2.36, 3.42), mark: (end: ">"), stroke: 0.7pt)
  line((4.47, 1.89), (5.63, 1.05), mark: (end: ">"), stroke: 0.7pt)
  content((4.0, 2.24), text(size: 8pt)[$L = 1" km"$], anchor: "center")
  content((3.5, 1.55), text(size: 8pt)[$chi = 0.018$], anchor: "center")

  content((6.25, 2.08), text(size: 8pt)[Turbina], anchor: "south")

  line((7.22, 2.04), (7.12, 1.72), mark: (end: ">"), stroke: 0.65pt)
  content((7.38, 2.08), text(size: 7.5pt)[Evacuazione], anchor: "south")

  line((7.55, 1.5), (8.2, 1.5), mark: (end: ">"), stroke: 0.85pt)
  content((8.28, 1.5), text(size: 7.5pt)[Fuga], anchor: "west")

  bezier((7.56, 1.26), (7.78, 0.92), (7.45, 1.08), (7.6, 0.95), stroke: 0.6pt)
  content((7.86, 0.9), text(size: 8pt)[$S_E = 20" m"^2$], anchor: "west")
  content((7.78, 0.38), text(size: 8pt)[$Delta H_E = K rho frac(u_s^2, 2)$], anchor: "west")

  line((2.52, 4.56), (2.9, 4.56), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.9, 4.56), (9.35, 4.56), stroke: 0.55pt)
  line((8.85, 1.5), (9.35, 1.5), stroke: 0.55pt)
  line((9.2, 3.25), (9.2, 4.56), mark: (end: ">"), stroke: 0.7pt)
  line((9.2, 2.8), (9.2, 1.5), mark: (end: ">"), stroke: 0.7pt)
  content((9.2, 3.03), text(size: 8pt)[$Delta z = 300" m"$], anchor: "center")

  content((0.5, 0.72), text(size: 8pt)[Flusso di volume nominale], anchor: "west")
  content((0.9, 0.34), text(size: 8pt)[di $Q = 20" m"^3/"s"$], anchor: "west")
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
