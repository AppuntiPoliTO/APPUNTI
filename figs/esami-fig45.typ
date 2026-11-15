// Figura estratta da esami.typ (riga 3187) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Assi di riferimento del diagramma
  line((0, -1.5), (0, 1.75), stroke: 0.8pt, mark: (end: ">"))
  line((-0.8, 0), (1.35, 0), stroke: 0.6pt, mark: (end: ">"))

  // Contorno diagramma a farfalla sigma_xx
  line((0, 1.4), (-0.95, 1.4), (0.95, -1.4), (0, -1.4), stroke: 0.8pt)

  // Frecce interne (compressione in alto, trazione in basso)
  line((0, 1.15), (-0.78, 1.15), stroke: 0.6pt, mark: (end: ">"))
  line((0, 0.85), (-0.58, 0.85), stroke: 0.6pt, mark: (end: ">"))
  line((0, 0.55), (-0.37, 0.55), stroke: 0.6pt, mark: (end: ">"))
  line((0, 0.25), (-0.17, 0.25), stroke: 0.6pt, mark: (end: ">"))
  line((0, -0.25), (0.17, -0.25), stroke: 0.6pt, mark: (end: ">"))
  line((0, -0.55), (0.37, -0.55), stroke: 0.6pt, mark: (end: ">"))
  line((0, -0.85), (0.58, -0.85), stroke: 0.6pt, mark: (end: ">"))
  line((0, -1.15), (0.78, -1.15), stroke: 0.6pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((-0.15, 1.7), text(size: 7pt)[$y$], anchor: "east")
  content((1.35, -0.12), text(size: 7pt)[$x$], anchor: "north")
  content((0, -1.85), text(size: 7pt)[$sigma_(x x)$], anchor: "north")
})
