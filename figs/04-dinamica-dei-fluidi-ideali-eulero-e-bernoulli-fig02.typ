// 3. Tubo di Pitot-statico (semicorpo di Rankine, linee di corrente esatte)
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 0.85cm, {
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
