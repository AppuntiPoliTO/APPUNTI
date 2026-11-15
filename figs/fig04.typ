// Figure del cap. 4 (rifatte). Ogni figura è una funzione che restituisce un canvas;
// la geometria è ricavata da parametri dichiarati in testa, niente coordinate a mano.
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

// =====================================================================
// 1. Condotto convergente: condizione di impermeabilità u · n = 0
// =====================================================================
#let fig-condotto() = canvas(length: 0.6cm, {
  import draw: *
  let L = 8.0     // lunghezza del condotto
  let b1 = 2.3    // raggio della sezione d'ingresso
  let b2 = 0.85   // raggio della sezione d'uscita
  let k = 0.32    // schiacciamento prospettico delle sezioni (asse orizzontale / verticale)
  // profilo della parete: raccordo a coseno, pendenza nulla agli estremi
  // -> tangente alle ellissi nei loro punti più alto e più basso
  let R(x) = b2 + (b1 - b2) * (1 + calc.cos(calc.pi * x / L)) / 2
  let dR(x) = -(b1 - b2) * calc.pi / (2 * L) * calc.sin(calc.pi * x / L)

  axis-line((-k * b1 - 0.7, 0), (L + k * b2 + 0.7, 0))
  circle((0, 0), radius: (k * b1, b1), stroke: sp-geo + c-geo)
  circle((L, 0), radius: (k * b2, b2), stroke: sp-geo + c-geo)
  line(..campiona(x => (x, R(x)), 0, L), stroke: sp-geo + c-geo)
  line(..campiona(x => (x, -R(x)), 0, L), stroke: sp-geo + c-geo)

  // punto P sulla parete inferiore: tangente t e normale n entrante nel fluido
  let xp = 0.42 * L
  let P = (xp, -R(xp))
  let t = v-unit((1, -dR(xp)))
  let n = v-perp(t)
  let q = 0.24
  line(v-add(P, v-mul(t, q)), v-add(v-add(P, v-mul(t, q)), v-mul(n, q)), v-add(P, v-mul(n, q)),
    stroke: sp-aux + c-aux)
  let ln = 1.1
  let lu = 1.9
  vettore(P, v-add(P, v-mul(n, ln)), col: c-norm)
  vettore(P, v-add(P, v-mul(t, lu)), col: c-vel)
  circle(P, radius: 0.07, fill: c-geo, stroke: none)
  lab(v-add(P, v-mul(n, ln)), $arrow(n)$, col: c-norm, anchor: "east", pad: 0.1)
  lab(v-add(v-add(P, v-mul(t, lu)), v-mul(n, 0.12)), $arrow(u)$, col: c-vel, anchor: "south", pad: 0.06)
})

// =====================================================================
// 2. Profilo alare NACA 2412 e linee di corrente
// =====================================================================
#let naca-yc(xb, m, p) = if xb < p { m / (p * p) * (2 * p * xb - xb * xb) } else {
  m / ((1 - p) * (1 - p)) * ((1 - 2 * p) + 2 * p * xb - xb * xb)
}
#let naca-dyc(xb, m, p) = if xb < p { 2 * m / (p * p) * (p - xb) } else {
  2 * m / ((1 - p) * (1 - p)) * (p - xb)
}
#let naca-yt(xb, tt) = 5 * tt * (
  0.2969 * calc.sqrt(xb) - 0.1260 * xb - 0.3516 * xb * xb + 0.2843 * xb * xb * xb - 0.1036 * xb * xb * xb * xb
)

#let fig-profilo() = canvas(length: 1cm, {
  import draw: *
  let c = 4.0                    // corda
  let (m, p, tt) = (0.02, 0.4, 0.12)   // NACA 2412
  let N = 70
  // punti del profilo (spaziatura a coseno), dorso e ventre
  let dorso = ()
  let ventre = ()
  for i in range(N + 1) {
    let xb = (1 - calc.cos(calc.pi * i / N)) / 2
    let yc = naca-yc(xb, m, p)
    let th = calc.atan(naca-dyc(xb, m, p))
    let yt = naca-yt(xb, tt)
    dorso.push((c * (xb - yt * calc.sin(th)), c * (yc + yt * calc.cos(th))))
    ventre.push((c * (xb + yt * calc.sin(th)), c * (yc - yt * calc.cos(th))))
  }
  let contorno = dorso + ventre.rev()

  // linee di corrente: quota asintotica y0, spostamento che segue il profilo e decade
  // con la distanza; sopra si addensano (fattore 1 - a·phi), sotto si diradano (1 + b·phi)
  let lam = 0.6
  let phi(x) = calc.exp(-calc.pow((x - 1.3) / 1.7, 2))
  let gu(x) = 0.32 * calc.exp(-calc.pow((x - 1.3) / 1.35, 2))   // inviluppo del dorso
  let gl(x) = -0.17 * calc.exp(-calc.pow((x - 1.1) / 1.25, 2))  // inviluppo del ventre
  let sopra(y0) = x => (x, y0 * (1 - 0.32 * phi(x)) + calc.exp(-y0 / lam) * gu(x))
  let sotto(y0) = x => (x, y0 * (1 + 0.22 * phi(x)) + calc.exp(y0 / lam) * gl(x))
  let (xa, xb) = (-1.6, 5.9)
  let y-sopra = (0.34, 0.7, 1.08)
  let y-sotto = (-0.34, -0.7, -1.08)
  for y0 in y-sopra {
    line(..campiona(sopra(y0), xa, xb, n: 90), stroke: sp-vec + c-vel, mark: punta(c-vel))
  }
  for y0 in y-sotto {
    line(..campiona(sotto(y0), xa, xb, n: 90), stroke: sp-vec + c-vel, mark: punta(c-vel))
  }

  line(..contorno, close: true, fill: c-riemp, stroke: sp-geo + c-geo)

  // portanza dal centro di pressione (~25% della corda)
  let xcp = 0.25 * c
  let pcp = (xcp, c * naca-yc(0.25, m, p))
  vettore(pcp, (xcp, 2.05), col: c-forza)
  lab((xcp, 2.05), $F_i$, col: c-forza, anchor: "south", pad: 0.08)

  // annotazioni fuori dal campo di moto, richiami che arrivano sulla linea più esterna
  let xs = 2.9
  let ytop = sopra(y-sopra.last())(xs).at(1)
  let ybot = sotto(y-sotto.last())(xs).at(1)
  leader((3.7, 1.85), (xs, ytop + 0.07), [$u$ cresce, $p$ diminuisce], anchor: "west")
  leader((3.7, -1.95), (xs, ybot - 0.07), [$u$ diminuisce, $p$ aumenta], anchor: "west")
})

// =====================================================================
// 3. Tubo di Pitot-statico (semicorpo di Rankine, linee di corrente esatte)
// =====================================================================
#let fig-pitot() = canvas(length: 0.85cm, {
  import draw: *
  let R = 0.45          // raggio del tubo (asintoto del semicorpo)
  let Lb = 5.0          // ascissa della sezione posteriore
  let r0 = 0.09         // raggio del canale centrale (presa totale)
  let rs = 0.27         // raggio interno del canale della presa statica
  let xs = 3.0          // posizione del foro della presa statica
  let ws = 0.16         // larghezza del foro
  let x1 = -1.7         // sezione 1 a monte
  let a = R / calc.pi   // la punta (punto di ristagno) sta in x = -a
  // semicorpo: r(θ) = R (π - θ) / (π sin θ)
  let corpo(th) = {
    let r = R * (calc.pi - th) / (calc.pi * calc.sin(th))
    (r * calc.cos(th), r * calc.sin(th))
  }
  let yb(x) = {
    // quota della parete all'ascissa x (bisezione su θ)
    let (lo, hi) = (0.01, calc.pi - 0.0001)
    for i in range(50) {
      let mid = (lo + hi) / 2
      if corpo(mid).at(0) > x { lo = mid } else { hi = mid }
    }
    corpo((lo + hi) / 2).at(1)
  }
  // linea di corrente con quota asintotica y0: y = y0 + R (1 - θ/π), x = y / tan θ
  let corrente(y0) = x => {
    // x(θ) = y(θ)/tan θ è decrescente in θ: bisezione
    let (lo, hi) = (0.0001, calc.pi - 0.0001)
    for i in range(60) {
      let mid = (lo + hi) / 2
      let y = y0 + R * (1 - mid / calc.pi)
      if y / calc.tan(mid) > x { lo = mid } else { hi = mid }
    }
    let th = (lo + hi) / 2
    (x, y0 + R * (1 - th / calc.pi))
  }
  let quote-y0 = (0.22, 0.47, 0.75, 1.05)
  let th-max = calc.pi * (1 - r0 / R)          // dove la parete incontra il canale centrale
  let x-bocca = corpo(th-max).at(0)

  let meta = {
    // parete esterna: dalla bocca del canale fino al foro statico, poi fino al fondo
    let pts = range(0, 121).map(i => corpo(th-max - (th-max - 0.02) * i / 120)).filter(q => q.at(0) <= xs)
    line(..pts, (xs, yb(xs)), stroke: sp-geo + c-geo)
    line(..campiona(x => (x, yb(x)), xs + ws, Lb, n: 20), stroke: sp-geo + c-geo)
    // canale centrale (presa totale) aperto in punta
    line((x-bocca, r0), (Lb, r0), stroke: sp-geo + c-geo)
    // presa statica: foro sulla parete e canale anulare verso il fondo
    line((xs, yb(xs)), (xs, rs), (Lb, rs), stroke: sp-geo + c-geo)
    // fondo pieno tra i due canali
    line((Lb, rs), (Lb, r0), stroke: sp-geo + c-geo)
    // linee di corrente sopra il corpo
    for y0 in quote-y0 {
      line(..campiona(corrente(y0), x1, Lb + 0.35, n: 120), stroke: sp-vec + c-vel, mark: punta(c-vel))
      // profilo uniforme a monte della sezione 1, sulla stessa linea di corrente
      let y1 = corrente(y0)(x1).at(1)
      vettore((x1 - 0.55, y1), (x1 - 0.02, y1), col: c-vel)
    }
  }
  meta
  scope({ scale(y: -1); meta })

  // linea di corrente di ristagno, sull'asse fino alla punta
  line((x1, 0), (-a, 0), stroke: sp-vec + c-vel)
  circle((-a, 0), radius: 0.06, fill: c-geo, stroke: none)
  lab((-a - 0.02, -0.1), $0$, anchor: "north-east")

  // sezione 1 a monte, profilo di velocità uniforme
  line((x1, -1.35), (x1, 1.35), stroke: sp-aux + c-aux)
  vettore((x1 - 0.55, 0), (x1 - 0.02, 0), col: c-vel)
  lab((x1, 1.35), $1$, anchor: "south", pad: 0.08)
  lab((x1 - 0.3, -1.25), $u_1$, col: c-vel, anchor: "north")

  // trasduttore differenziale collegato alle due prese
  let (bx0, bx1, by0, by1) = (Lb + 0.85, Lb + 1.95, -0.65, 0.05)
  let ys-tubo = (rs + yb(Lb)) / 2
  line((Lb, 0), (bx0, 0), stroke: sp-aux + c-geo)
  line((Lb, ys-tubo), (bx0 + 0.55, ys-tubo), (bx0 + 0.55, by1), stroke: sp-aux + c-geo)
  rect((bx0, by0), (bx1, by1), fill: c-riemp, stroke: sp-geo + c-geo)
  lab(((bx0 + bx1) / 2, (by0 + by1) / 2 - 0.08), $Delta p$)
  lab((Lb + 0.42, 0), $p_0$, anchor: "north", pad: 0.06)
  lab((bx0 + 0.55, ys-tubo), $p_1$, anchor: "south-west", pad: 0.06)
})

// =====================================================================
// 4-5. Bobina e disco di carta: geometria comune (metà destra + specchio)
// =====================================================================
#let bobina-geo(
  H: 3.0, r1: 0.55, tw: 0.13, r2: 2.25, h: 0.45, pt: 0.07,
  linee: ((0.2, 0.3), (0.4, 0.7)), getto: 0.75, profilo: true,
) = {
  import draw: *
  let meta = {
    // condotto verticale: parete interna (sezionata) ed esterna
    hatch-wall((r1, H), (r1, h), side: 1, step: 0.2, len: 0.09)
    line((r1 + tw, H), (r1 + tw, h + tw), stroke: sp-geo + c-geo)
    // flangia della bobina fino a r2, a distanza h dalla carta
    hatch-wall((r1, h), (r2, h), side: 1, step: 0.2, len: 0.09)
    line((r1 + tw, h + tw), (r2, h + tw), (r2, h), stroke: sp-geo + c-geo)
    // linee di corrente: scendono nel condotto, curvano di 90° in B, corrono radiali in C
    for (x0, f) in linee {
      let ys = f * h
      let rc = 0.15 + 0.6 * (r1 - x0)
      let ytop = H - 0.8
      line((x0, ytop), (x0, ys + rc), stroke: sp-vec + c-vel)
      arc((x0, ys + rc), start: 180deg, stop: 270deg, radius: rc, stroke: sp-vec + c-vel)
      line((x0 + rc, ys), (r2 + getto, ys), stroke: sp-vec + c-vel, mark: punta(c-vel))
      if profilo { vettore((x0, H - 0.2), (x0, ytop + 0.03), col: c-vel) }
    }
    // limiti del getto libero in uscita (D)
    line((r2, h), (r2 + getto, h + 0.22), stroke: (paint: c-aux, thickness: sp-aux, dash: "dashed"))
    line((r2, 0), (r2 + getto, -0.18), stroke: (paint: c-aux, thickness: sp-aux, dash: "dashed"))
  }
  meta
  scope({ scale(x: -1); meta })
  // disco di carta
  rect((-r2, -pt), (r2, 0), fill: c-riemp, stroke: sp-geo + c-geo)
  // profilo uniforme in A: freccia anche sull'asse
  if profilo { vettore((0, H - 0.2), (0, H - 0.77), col: c-vel) }
}

#let fig-bobina() = canvas(length: 1.2cm, {
  import draw: *
  let (H, r1, tw, r2, h, getto) = (3.0, 0.55, 0.13, 2.25, 0.45, 0.75)
  axis-line((0, -1.05), (0, H + 1.3))
  bobina-geo(H: H, r1: r1, tw: tw, r2: r2, h: h, getto: getto)
  // quote
  dim((0, H), (r1, H), $r_1$, off: 0.35, anchor: "south", lab-off: (0, 0.02), bg: false)
  line((r2, h + tw), (r2, H + 1.07), stroke: sp-aux + c-geo)
  dim((0, H + 0.95), (r2, H + 0.95), $r_2$)
  dim((-r2, 0), (-r2, h), $h$, off: getto + 0.3, anchor: "east", lab-off: (-0.06, 0), bg: false)
  // zone
  lab((0, H - 1.35), $A$, bg: true)
  leader((-0.95, -0.85), (-0.45, 0.2), $B$, anchor: "north")
  leader((-1.75, -0.85), (-1.55, 0.2), $C$, anchor: "north")
  leader((r2 + getto + 0.25, -0.75), (r2 + 0.45, 0.2), $D$, anchor: "north-west")
})

#let fig-forze() = canvas(length: 1.65cm, {
  import draw: *
  let (H, r1, tw, r2, h, getto) = (1.7, 0.55, 0.13, 2.25, 0.45, 0.6)
  axis-line((0, -1.3), (0, H + 1.15))
  bobina-geo(H: H, r1: r1, tw: tw, r2: r2, h: h, getto: getto, linee: ((0.43, 0.2),), profilo: false)
  // pressioni
  lab((0, H - 0.4), $P_A = "cost"$, bg: true)
  lab((1.5, 0.6 * h), $P_c (r)$)
  for x in (0.55, 1.25, 1.95) {
    for s in (1, -1) { vettore((s * x, -0.55), (s * x, -0.1), col: c-forza) }
  }
  lab((0.9, -0.55), $P_0$, col: c-forza, anchor: "north", pad: 0.06)
  // quote e asse radiale
  dim((0, H), (r1, H), $r_1$, off: 0.3, anchor: "south", lab-off: (0, 0.02), bg: false)
  line((r2, h + tw), (r2, H + 0.92), stroke: sp-aux + c-geo)
  dim((0, H + 0.8), (r2, H + 0.8), $r_2$)
  draw.line((0, -1.1), (r2 + 0.9, -1.1), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((r2 + 0.9, -1.1), $r$, anchor: "west", pad: 0.08)
})

// =====================================================================
// 6. Forza aerodinamica in funzione dello spessore: F = k / h^2
// =====================================================================
#let fig-fh() = canvas(length: 0.78cm, {
  import draw: *
  let k = 6.0                 // F(h) = k / h^2
  let P = 1.5                 // peso m g
  let heq = calc.sqrt(k / P)  // equilibrio F(h_eq) = P
  let (hmax, fmax) = (5.0, 4.4)
  let h0 = calc.sqrt(k / 4.1)

  line((0, 0), (hmax + 0.4, 0), stroke: sp-geo + c-geo, mark: punta(c-geo))
  line((0, 0), (0, fmax), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((hmax + 0.4, 0), $h$, anchor: "west", pad: 0.08)
  lab((0, fmax), $F$, anchor: "south", pad: 0.08)

  line((0, P), (hmax - 0.3, P), stroke: (paint: c-forza, thickness: sp-aux, dash: "dashed"))
  lab((hmax - 0.3, P), $P = m g$, col: c-forza, anchor: "west", pad: 0.08)
  line(..campiona(x => (x, k / (x * x)), h0, hmax, n: 80), stroke: sp-vec + c-forza)
  lab((h0 + 0.15, k / (h0 * h0) - 0.2), $F(h) prop 1 / h^2$, col: c-forza, anchor: "west")

  line((heq, P), (heq, 0), stroke: (paint: c-aux, thickness: sp-aux, dash: "dashed"))
  circle((heq, P), radius: 0.08, fill: c-geo, stroke: none)
  lab((heq, 0), $h_"eq"$, anchor: "north", pad: 0.1)
  // perturbazioni: in entrambi i versi il sistema si allontana dall'equilibrio
  vettore((heq - 0.2, 0.38), (heq - 1.0, 0.38), col: c-geo)
  vettore((heq + 0.2, 0.38), (heq + 1.0, 0.38), col: c-geo)
})
