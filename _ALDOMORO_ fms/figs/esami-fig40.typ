// Figura estratta da esami.typ (riga 2844) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Trave e vincoli in A e B
  line((0, 0), (4.0, 0), stroke: 1.2pt)
  line((0, 0), (-0.14, -0.24), (0.14, -0.24), close: true, stroke: 0.6pt)
  line((2.0, 0), (1.86, -0.22), (2.14, -0.22), close: true, stroke: 0.6pt)
  circle((1.93, -0.27), radius: 0.05, stroke: 0.6pt)
  circle((2.07, -0.27), radius: 0.05, stroke: 0.6pt)

  // Carico q1 su AB
  line((0, 0.8), (2.0, 0.8), stroke: 0.6pt)
  line((0, 0.8), (0, 0.04), stroke: 1pt, mark: (end: ">"))
  line((0.5, 0.8), (0.5, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.0, 0.8), (1.0, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.5, 0.8), (1.5, 0.04), stroke: 1pt, mark: (end: ">"))
  line((2.0, 0.8), (2.0, 0.04), stroke: 1pt, mark: (end: ">"))

  // Linea elastica 1 (in rosso) e spostamento v_{C,1}
  bezier((0, 0), (2.0, 0), (0.65, -0.3), (1.35, -0.3), stroke: (paint: red, thickness: 1pt))
  line((2.0, 0), (4.0, 0.9), stroke: (paint: red, thickness: 1pt))
  line((4.0, 0), (4.0, 0.9), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  arc((2.0, 0), start: 0deg, stop: 24deg, radius: 0.45, anchor: "origin", stroke: (paint: red, thickness: 0.6pt))

  // Etichette (con text(size: 7pt))
  content((1.0, 0.9), text(size: 7pt)[$q_1$], anchor: "south")
  content((-0.18, -0.1), text(size: 7pt)[$A$], anchor: "east")
  content((1.82, -0.15), text(size: 7pt)[$B$], anchor: "east")
  content((4.0, -0.15), text(size: 7pt)[$C$], anchor: "north")
  content((2.55, 0.12), text(size: 7pt, fill: red)[$theta_B$], anchor: "west")
  content((4.1, 0.45), text(size: 7pt, fill: red)[$v_("C,1")$], anchor: "west")
})
