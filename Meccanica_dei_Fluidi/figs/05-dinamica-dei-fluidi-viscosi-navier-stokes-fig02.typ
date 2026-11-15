// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 363) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  // Parete inferiore (ferma) e assi
  parete(0, 7.2, 0)
  freccia((0, 0), (7.7, 0), sp: 1pt)
  freccia((0, 0), (0, 3.0), sp: 0.8pt)
  etichetta((7.75, 0), $x_1$, anchor: "west")
  etichetta((0.12, 3.0), $x_2$, anchor: "west")

  // Piastra superiore (mobile)
  draw.line((7.1, 2.5), (0.2, 2.5), (0.2, 2.2), (7.1, 2.2), stroke: 1pt + c-geo)
  draw.bezier((7.1, 2.5), (7.1, 2.35), (7.02, 2.45), (7.02, 2.40), stroke: 1pt + c-geo)
  draw.bezier((7.1, 2.35), (7.1, 2.2), (7.18, 2.30), (7.18, 2.25), stroke: 1pt + c-geo)

  // Profilo di velocità lineare
  draw.line((2.3, 0), (2.3, 2.2), stroke: 0.6pt + c-aux)
  draw.line((2.3, 0), (4.7, 2.2), stroke: 1pt + c-vel)
  freccia((2.3, 0.35), (2.68, 0.35), col: c-vel, sp: 0.6pt)
  freccia((2.3, 0.72), (3.09, 0.72), col: c-vel, sp: 0.6pt)
  freccia((2.3, 1.10), (3.50, 1.10), col: c-vel, sp: 0.6pt)
  freccia((2.3, 1.47), (3.90, 1.47), col: c-vel, sp: 0.6pt)
  freccia((2.3, 1.85), (4.32, 1.85), col: c-vel, sp: 0.6pt)

  // Velocità della piastra
  freccia((6.8, 2.35), (8.0, 2.35), col: c-vel, sp: 1pt)
  etichetta((7.45, 2.72), $arrow(U)_e$, col: c-vel, anchor: "south")

  // Versori normali uscenti dalle pareti (entranti nel fluido)
  freccia((5.44, 2.2), (5.44, 1.8), col: c-norm)
  etichetta((5.60, 1.8), $arrow(n) = (0, -1, 0)$, col: c-norm, anchor: "west")
  freccia((5.44, 0), (5.44, 0.4), col: c-norm)
  etichetta((5.60, 0.28), $arrow(n) = (0, 1, 0)$, col: c-norm, anchor: "west")

  // Quota h
  quota((0.85, 0.05), (0.85, 2.15))
  etichetta((0.70, 1.1), $h$, anchor: "east")
})
