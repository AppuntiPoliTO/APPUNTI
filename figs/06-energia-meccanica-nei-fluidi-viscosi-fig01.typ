// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 68) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.90cm, {
  let x1 = 0.8
  let x2 = 7.4
  let y0 = 0.45
  let y1 = 2.10
  let ym = (y0 + y1) / 2

  // Tubi piezometrici / manometri in S_1 e S_2
  let xp1 = 2.0
  let xp2 = 6.2
  // Colonna 1 (p_1 più alta)
  draw.rect((xp1 - 0.18, y1), (xp1 + 0.18, y1 + 1.25), fill: c-fluido, stroke: none)
  draw.line((xp1 - 0.18, y1), (xp1 - 0.18, y1 + 1.5), stroke: 0.8pt + c-geo)
  draw.line((xp1 + 0.18, y1), (xp1 + 0.18, y1 + 1.5), stroke: 0.8pt + c-geo)
  draw.line((xp1 - 0.18, y1 + 1.25), (xp1 + 0.18, y1 + 1.25), stroke: 1pt + c-norm)
  etichetta((xp1, y1 + 1.72), $p_1$, col: c-forza)

  // Colonna 2 (p_2 più bassa nella realtà)
  draw.rect((xp2 - 0.18, y1), (xp2 + 0.18, y1 + 0.58), fill: c-fluido, stroke: none)
  draw.line((xp2 - 0.18, y1), (xp2 - 0.18, y1 + 1.5), stroke: 0.8pt + c-geo)
  draw.line((xp2 + 0.18, y1), (xp2 + 0.18, y1 + 1.5), stroke: 0.8pt + c-geo)
  draw.line((xp2 - 0.18, y1 + 0.58), (xp2 + 0.18, y1 + 0.58), stroke: 1pt + c-norm)
  etichetta((xp2, y1 + 1.72), $p_2 < p_1$, col: c-forza)

  // Livello ideale vs perdita di carico reale
  draw.line((xp1 + 0.2, y1 + 1.25), (xp2 + 0.55, y1 + 1.25), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  draw.line((xp2 + 0.2, y1 + 0.58), (xp2 + 0.55, y1 + 0.58), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  quota((xp2 + 0.42, y1 + 0.58), (xp2 + 0.42, y1 + 1.25), col: c-forza)
  etichetta((xp2 + 0.92, y1 + 0.92), $Delta cal(H)$, col: c-forza)

  // Pareti condotta interrotte ai piezometri
  parete(x1, xp1 - 0.18, y1, sotto: false)
  parete(xp1 + 0.18, xp2 - 0.18, y1, sotto: false)
  parete(xp2 + 0.18, x2, y1, sotto: false)
  parete(x1, x2, y0, sotto: true)
  etichetta((4.1, y0 - 0.42), $S_w$, col: c-geo)

  // Sezioni S_1 e S_2
  sezione-tratteggiata(x1, y0, y1)
  sezione-tratteggiata(x2, y0, y1)
  etichetta((x1 + 0.32, y0 + 0.32), $S_1$, col: c-aux)
  etichetta((x2 - 0.32, y0 + 0.32), $S_2$, col: c-aux)

  // Versori normali e velocità media U_d
  freccia((x1, ym - 0.32), (x1 - 0.75, ym - 0.32), col: c-norm)
  etichetta((x1 - 0.42, ym - 0.62), $arrow(n)_1$, col: c-norm)
  freccia((x2, ym - 0.32), (x2 + 0.75, ym - 0.32), col: c-norm)
  etichetta((x2 + 0.42, ym - 0.62), $arrow(n)_2$, col: c-norm)

  freccia((x1 - 0.55, ym + 0.25), (x1 + 0.55, ym + 0.25), col: c-vel, sp: 1pt)
  etichetta((x1, ym + 0.55), $U_d$, col: c-vel)
  freccia((3.4, ym), (4.8, ym), col: c-vel, sp: 1pt)
  etichetta((4.1, ym + 0.32), $Q_v = U_d A$, col: c-vel)
})
