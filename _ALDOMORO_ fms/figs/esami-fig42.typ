// Figura estratta da esami.typ (riga 2954) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Mensola BC e incastro in B
  line((0, 0), (2.2, 0), stroke: 1.2pt)
  line((0, -0.3), (0, 0.3), stroke: 0.8pt)
  line((-0.18, -0.3), (0, -0.15), stroke: 0.6pt)
  line((-0.18, -0.15), (0, 0), stroke: 0.6pt)
  line((-0.18, 0), (0, 0.15), stroke: 0.6pt)
  line((-0.18, 0.15), (0, 0.3), stroke: 0.6pt)

  // Carico distribuito q2 su BC
  line((0, 0.55), (2.2, 0.55), stroke: 0.6pt)
  line((0.2, 0.55), (0.2, 0.04), stroke: 1pt, mark: (end: ">"))
  line((0.7, 0.55), (0.7, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.2, 0.55), (1.2, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.7, 0.55), (1.7, 0.04), stroke: 1pt, mark: (end: ">"))
  line((2.2, 0.55), (2.2, 0.04), stroke: 1pt, mark: (end: ">"))

  // Linea elastica 3 (in rosso) e spostamento v_{C,3}
  bezier((0, 0), (2.2, -0.65), (0.8, 0), (1.5, -0.28), stroke: (paint: red, thickness: 1pt))
  line((2.2, 0), (2.2, -0.65), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((1.2, 0.65), text(size: 7pt)[$q_2$], anchor: "south")
  content((-0.22, -0.15), text(size: 7pt)[$B$], anchor: "east")
  content((2.3, -0.1), text(size: 7pt)[$C$], anchor: "west")
  content((2.3, -0.5), text(size: 7pt, fill: red)[$v_("C,3")$], anchor: "west")
})
