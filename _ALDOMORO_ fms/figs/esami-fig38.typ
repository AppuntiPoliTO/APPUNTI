// Figura estratta da esami.typ (riga 2749) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Sezione a doppio T
  line((-1.2, -1.0), (1.2, -1.0), (1.2, -0.7), (0.18, -0.7), (0.18, 0.7), (1.2, 0.7), (1.2, 1.0), (-1.2, 1.0), (-1.2, 0.7), (-0.18, 0.7), (-0.18, -0.7), (-1.2, -0.7), close: true, stroke: 1.2pt)

  // Assi z, y e quote
  line((1.4, 0), (-1.25, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -1.25), (0, 1.25), stroke: 0.6pt, mark: (end: ">"))
  line((-0.18, 0.25), (0.18, 0.25), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((1.55, -0.7), (1.55, 0.7), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((1.9, -1.0), (1.9, 1.0), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((-1.2, -1.6), (1.2, -1.6), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Punto più sollecitato P (in rosso)
  circle((0, 1.0), radius: 0.08, fill: red, stroke: red)

  // Etichette (con text(size: 7pt))
  content((0.12, 1.12), text(size: 7pt, fill: red)[*P*], anchor: "west")
  content((-0.12, 1.2), text(size: 7pt)[$y$], anchor: "east")
  content((-1.2, -0.15), text(size: 7pt)[$z$], anchor: "north")
  content((-0.05, 0.38), text(size: 7pt)[$b$], anchor: "south")
  content((1.65, 0.1), text(size: 7pt)[$h$], anchor: "west")
  content((2.0, 0.05), text(size: 7pt)[$H$], anchor: "west")
  content((0, -1.55), text(size: 7pt)[$B$], anchor: "south")
})
