// Figura estratta da esami.typ (riga 2428) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Trave principale e assi
  line((0, 0), (4.0, 0), stroke: 1.2pt)
  line((4.0, 0), (4.6, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, 0), (0, -1.1), stroke: 0.6pt, mark: (end: ">"))

  // Carico q1 su AB
  line((0, 0.95), (2.0, 0.95), stroke: 0.6pt)
  line((0, 0.95), (0, 0.04), stroke: 1pt, mark: (end: ">"))
  line((0.5, 0.95), (0.5, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.0, 0.95), (1.0, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.5, 0.95), (1.5, 0.04), stroke: 1pt, mark: (end: ">"))
  line((2.0, 0.95), (2.0, 0.04), stroke: 1pt, mark: (end: ">"))

  // Carico q2 su BC
  line((2.0, 0.5), (4.0, 0.5), stroke: 0.6pt)
  line((2.4, 0.5), (2.4, 0.04), stroke: 1pt, mark: (end: ">"))
  line((2.8, 0.5), (2.8, 0.04), stroke: 1pt, mark: (end: ">"))
  line((3.2, 0.5), (3.2, 0.04), stroke: 1pt, mark: (end: ">"))
  line((3.6, 0.5), (3.6, 0.04), stroke: 1pt, mark: (end: ">"))
  line((4.0, 0.5), (4.0, 0.04), stroke: 1pt, mark: (end: ">"))

  // Reazioni vincolari V_A, H_A, V_B (in verde)
  line((0, -0.6), (0, -0.05), stroke: (paint: green.darken(30%), thickness: 1pt), mark: (end: ">"))
  line((0, -0.6), (0.65, -0.6), stroke: (paint: green.darken(30%), thickness: 1pt), mark: (end: ">"))
  line((2.0, -0.6), (2.0, -0.05), stroke: (paint: green.darken(30%), thickness: 1pt), mark: (end: ">"))

  // Quote L, L
  line((0, -0.9), (2.0, -0.9), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((2.0, -0.9), (4.0, -0.9), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Etichette (con text(size: 7pt))
  content((1.0, 1.05), text(size: 7pt)[$q_1$], anchor: "south")
  content((3.2, 0.6), text(size: 7pt)[$q_2$], anchor: "south")
  content((-0.15, -0.1), text(size: 7pt)[$A$], anchor: "east")
  content((1.85, -0.12), text(size: 7pt)[$B$], anchor: "east")
  content((4.0, -0.18), text(size: 7pt)[$C$], anchor: "north")
  content((4.5, -0.15), text(size: 7pt)[$x$], anchor: "north")
  content((0.12, -1.05), text(size: 7pt)[$y$], anchor: "west")
  content((0.1, -0.3), text(size: 7pt, fill: green.darken(30%))[$V_A$], anchor: "west")
  content((0.55, -0.48), text(size: 7pt, fill: green.darken(30%))[$H_A$], anchor: "south")
  content((2.1, -0.35), text(size: 7pt, fill: green.darken(30%))[$V_B$], anchor: "west")
  content((1.0, -0.85), text(size: 7pt)[$L$], anchor: "south")
  content((3.0, -0.85), text(size: 7pt)[$L$], anchor: "south")
})
