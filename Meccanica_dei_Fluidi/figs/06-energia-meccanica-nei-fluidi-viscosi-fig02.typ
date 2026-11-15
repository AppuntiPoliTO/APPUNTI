// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 233) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.86cm, {
  let x1 = 0.8
  let x2 = 6.6
  let y0 = 0.55
  let y1 = 2.95
  let ym = (y0 + y1) / 2
  let xm = (x1 + x2) / 2

  // Pareti fisse della condotta S_w (interrotta in basso al passaggio dell'albero)
  parete(x1, x2, y1, sotto: false)
  parete(x1, xm - 0.18, y0, sotto: true)
  parete(xm + 0.18, x2, y0, sotto: true)
  etichetta((2.1, y1 + 0.36), $S_w (arrow(u) = 0)$, col: c-geo)

  // Sezioni S_1 e S_2
  sezione-tratteggiata(x1, y0, y1)
  sezione-tratteggiata(x2, y0, y1)
  etichetta((x1 + 0.32, y1 - 0.32), $S_1$, col: c-aux)
  etichetta((x2 - 0.32, y1 - 0.32), $S_2$, col: c-aux)

  // Versori normali uscenti n_1 e n_2
  freccia((x1, ym - 0.55), (x1 - 0.7, ym - 0.55), col: c-norm)
  etichetta((x1 - 0.4, ym - 0.85), $arrow(n)_1$, col: c-norm)
  freccia((x2, ym - 0.55), (x2 + 0.7, ym - 0.55), col: c-norm)
  etichetta((x2 + 0.4, ym - 0.85), $arrow(n)_2$, col: c-norm)

  // Velocità in ingresso e uscita
  freccia((x1 - 0.55, ym + 0.15), (x1 + 0.45, ym + 0.15), col: c-vel, sp: 1pt)
  etichetta((x1 - 0.32, ym + 0.48), $arrow(u)_1$, col: c-vel)
  freccia((x2 - 0.45, ym + 0.15), (x2 + 0.55, ym + 0.15), col: c-vel, sp: 1pt)
  etichetta((x2 + 0.32, ym + 0.48), $arrow(u)_2$, col: c-vel)

  // Girante schematica con pale mobili S_m
  draw.circle((xm, ym - 0.08), radius: 0.80, stroke: (paint: c-aux, thickness: 0.6pt, dash: "dotted"))
  for ang in (35deg, 125deg, 215deg, 305deg) {
    let r-in = 0.22
    let r-out = 0.73
    let p1 = (xm + r-in * calc.cos(ang), ym - 0.08 + r-in * calc.sin(ang))
    let p2 = (xm + r-out * calc.cos(ang + 18deg), ym - 0.08 + r-out * calc.sin(ang + 18deg))
    draw.line(p1, p2, stroke: 1.5pt + c-geo)
  }
  draw.circle((xm, ym - 0.08), radius: 0.22, fill: c-riemp, stroke: 1pt + c-geo)
  etichetta((xm + 0.85, ym - 0.78), $S_m$, col: c-geo)

  // Velocità delle pale
  freccia((xm - 0.32, ym + 0.46), (xm + 0.32, ym + 0.62), col: c-vel, sp: 0.8pt)
  etichetta((xm + 0.05, ym + 0.88), $arrow(u) = arrow(w) != 0$, col: c-vel)

  // Albero e potenza P_m
  draw.line((xm, ym - 0.30), (xm, -0.05), stroke: 1.5pt + c-forza)
  freccia((xm - 0.55, 0.08), (xm - 0.10, 0.08), col: c-forza, sp: 0.9pt)
  etichetta((xm - 0.85, 0.08), $P_m$, col: c-forza)
})
