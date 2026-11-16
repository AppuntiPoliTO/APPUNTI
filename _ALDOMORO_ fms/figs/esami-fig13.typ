// Figura estratta da esami.typ (riga 1125) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Facce del cubo
  line((-0.7, -0.55), (0.9, -0.55), (0.9, 1.05), (-0.7, 1.05), close: true, stroke: 1pt)
  line((-0.7, 1.05), (0.9, 1.05), (1.6, 1.6), (0, 1.6), close: true, stroke: 1pt)
  line((0.9, -0.55), (1.6, 0), (1.6, 1.6), (0.9, 1.05), close: true, stroke: 1pt)

  // Contrassegni facce per costruzione di Mohr: pallino vuoto su faccia x, pallino pieno su faccia z
  circle((-0.45, 0.65), radius: 0.08, fill: white, stroke: 1pt)
  circle((0.05, 1.35), radius: 0.08, fill: black, stroke: 1pt)

  // Assi e tensioni
  line((0.45, 1.32), (0.45, 2.35), stroke: 1pt, mark: (end: ">"))
  line((1.25, 0.52), (2.5, 0.52), stroke: 1pt, mark: (end: ">"))
  line((0.1, 0.25), (-0.95, -0.58), stroke: 1pt, mark: (end: ">"))

  line((0.65, 1.32), (0.65, 2.15), stroke: 0.6pt, mark: (end: ">"))
  line((1.25, 0.72), (2.15, 0.72), stroke: 0.6pt, mark: (end: ">"))
  line((-0.1, 0.09), (-0.65, -0.35), stroke: 0.6pt, mark: (end: ">"))

  line((0.45, 1.32), (1.2, 1.92), stroke: 0.6pt, mark: (end: ">"))
  line((0.1, -0.35), (0.1, 0.65), stroke: 0.6pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((0.3, 2.3), text(size: 7pt)[$z$], anchor: "east")
  content((2.4, 0.35), text(size: 7pt)[$y$], anchor: "north")
  content((-1.0, -0.62), text(size: 7pt)[$x$], anchor: "north")
  content((0.75, 2.1), text(size: 7pt)[$sigma_(z z)$], anchor: "west")
  content((2.0, 0.85), text(size: 7pt)[$sigma_(y y)$], anchor: "south")
  content((-0.45, -0.38), text(size: 7pt)[$sigma_(x x)$], anchor: "north")
  content((1.25, 1.95), text(size: 7pt)[$tau_(x z)$], anchor: "west")
  content((0.2, -0.15), text(size: 7pt)[$tau_(x z)$], anchor: "west")
})
