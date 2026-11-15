// Figura estratta da main.typ (riga 753) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *
  // Contorno chiuso della superficie A
  bezier((-2.5, 0.3), (-0.3, 1.9), (-2.5, 1.4), (-1.5, 1.9), stroke: 1.4pt)
  bezier((-0.3, 1.9), (2.4, 0.2), (1.3, 1.9), (2.4, 1.1), stroke: 1.4pt)
  bezier((2.4, 0.2), (-0.8, -1.5), (2.4, -0.9), (0.9, -1.5), stroke: 1.4pt)
  bezier((-0.8, -1.5), (-2.5, 0.3), (-1.9, -1.5), (-2.5, -0.7), stroke: 1.4pt)

  // Elemento dA
  rect((0.5, 0.3), (1.3, 0.8), fill: rgb(198, 217, 241), stroke: (dash: "dashed", thickness: 0.7pt))
  content((1.35, 0.65), text(size: 9pt, fill: rgb(45, 105, 155))[$dif A$], anchor: "west")
  content((-2.3, 1.6), text(size: 10pt)[$A$], anchor: "east")

  // Assi z (orizzontale inferiore) e y (verticale destro)
  line((3.2, -2.2), (3.2, 2.5), stroke: 1.1pt)
  line((-1.0, -2.2), (3.6, -2.2), stroke: 1.1pt)
  content((2.95, 2.3), text(size: 9pt)[$y$], anchor: "east")
  content((-0.8, -1.95), text(size: 9pt)[$z$], anchor: "south")

  // Quote z e y
  line((0.9, 0.55), (0.9, -2.2), stroke: 0.6pt)
  line((0.9, -1.9), (3.2, -1.9), mark: (start: ">", end: ">", size: 0.15), stroke: 0.6pt)
  content((2.05, -2.1), text(size: 9pt)[$z$], anchor: "north")

  line((0.9, 0.55), (3.2, 0.55), stroke: 0.6pt)
  line((2.8, -2.2), (2.8, 0.55), mark: (start: ">", end: ">", size: 0.15), stroke: 0.6pt)
  content((2.65, -0.8), text(size: 9pt)[$y$], anchor: "east")
})
