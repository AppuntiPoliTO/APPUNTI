// Figura estratta da esami.typ (riga 2077) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Trave principale A-B-C e asse x
  line((0, 0), (4.8, 0), stroke: 1.2pt)
  line((4.8, 0), (5.4, 0), stroke: 0.6pt, mark: (end: ">"))

  // Cerniera fissa in A
  line((0, 0), (-0.16, -0.28), (0.16, -0.28), close: true, stroke: 0.6pt)
  line((-0.25, -0.28), (0.25, -0.28), stroke: 0.6pt)
  line((-0.22, -0.4), (-0.1, -0.28), stroke: 0.6pt)
  line((-0.1, -0.4), (0.02, -0.28), stroke: 0.6pt)
  line((0.02, -0.4), (0.14, -0.28), stroke: 0.6pt)
  line((0.14, -0.4), (0.25, -0.28), stroke: 0.6pt)

  // Carrello in B (x = 2.4)
  line((2.4, 0), (2.26, -0.24), (2.54, -0.24), close: true, stroke: 0.6pt)
  circle((2.32, -0.3), radius: 0.06, stroke: 0.6pt)
  circle((2.48, -0.3), radius: 0.06, stroke: 0.6pt)
  line((2.15, -0.36), (2.65, -0.36), stroke: 0.6pt)
  line((2.18, -0.48), (2.3, -0.36), stroke: 0.6pt)
  line((2.3, -0.48), (2.42, -0.36), stroke: 0.6pt)
  line((2.42, -0.48), (2.54, -0.36), stroke: 0.6pt)
  line((2.54, -0.48), (2.65, -0.36), stroke: 0.6pt)

  // Carico distribuito q1 su AB
  line((0, 1.1), (2.4, 1.1), stroke: 0.6pt)
  line((0, 1.1), (0, 0.04), stroke: 1pt, mark: (end: ">"))
  line((0.6, 1.1), (0.6, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.2, 1.1), (1.2, 0.04), stroke: 1pt, mark: (end: ">"))
  line((1.8, 1.1), (1.8, 0.04), stroke: 1pt, mark: (end: ">"))
  line((2.4, 1.1), (2.4, 0.04), stroke: 1pt, mark: (end: ">"))

  // Carico distribuito q2 su BC
  line((2.4, 0.6), (4.8, 0.6), stroke: 0.6pt)
  line((2.88, 0.6), (2.88, 0.04), stroke: 1pt, mark: (end: ">"))
  line((3.36, 0.6), (3.36, 0.04), stroke: 1pt, mark: (end: ">"))
  line((3.84, 0.6), (3.84, 0.04), stroke: 1pt, mark: (end: ">"))
  line((4.32, 0.6), (4.32, 0.04), stroke: 1pt, mark: (end: ">"))
  line((4.8, 0.6), (4.8, 0.04), stroke: 1pt, mark: (end: ">"))

  // Asse y e quote L, L
  line((0, -0.45), (0, -0.9), stroke: 0.6pt, mark: (end: ">"))
  line((0, -1.1), (2.4, -1.1), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((2.4, -1.1), (4.8, -1.1), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Etichette (con text(size: 7pt))
  content((1.2, 1.2), text(size: 7pt)[$q_1$], anchor: "south")
  content((3.84, 0.7), text(size: 7pt)[$q_2$], anchor: "south")
  content((-0.22, -0.08), text(size: 7pt)[$A$], anchor: "east")
  content((2.18, -0.12), text(size: 7pt)[$B$], anchor: "east")
  content((4.8, -0.18), text(size: 7pt)[$C$], anchor: "north")
  content((5.3, -0.15), text(size: 7pt)[$x$], anchor: "north")
  content((0.12, -0.82), text(size: 7pt)[$y$], anchor: "west")
  content((1.2, -1.05), text(size: 7pt)[$L$], anchor: "south")
  content((3.6, -1.05), text(size: 7pt)[$L$], anchor: "south")
})
