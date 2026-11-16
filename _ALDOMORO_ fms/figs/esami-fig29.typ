// Figura estratta da esami.typ (riga 2145) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.7cm, {
  import draw: *

  // Contorno sezione a doppio T
  line((-1.2, -1.0), (1.2, -1.0), (1.2, -0.7), (0.18, -0.7), (0.18, 0.7), (1.2, 0.7), (1.2, 1.0), (-1.2, 1.0), (-1.2, 0.7), (-0.18, 0.7), (-0.18, -0.7), (-1.2, -0.7), close: true, stroke: 1.2pt)

  // Assi baricentrici z e y
  line((1.5, 0), (-1.25, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, 1.25), (0, -1.25), stroke: 0.6pt, mark: (end: ">"))

  // Quote h e H a destra
  line((1.65, -0.7), (1.65, 0.7), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((2.05, -1.0), (2.05, 1.0), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Quote b e B in basso
  line((-0.18, -1.55), (0.18, -1.55), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((-1.2, -1.95), (1.2, -1.95), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Etichette (con text(size: 7pt))
  content((-1.2, -0.15), text(size: 7pt)[$z$], anchor: "north")
  content((-0.12, 0.85), text(size: 7pt)[$y$], anchor: "east")
  content((1.75, 0.15), text(size: 7pt)[$h$], anchor: "west")
  content((2.15, 0.05), text(size: 7pt)[$H$], anchor: "west")
  content((0, -1.5), text(size: 7pt)[$b$], anchor: "south")
  content((0, -1.9), text(size: 7pt)[$B$], anchor: "south")
})
