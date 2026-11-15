// Figura estratta da esami.typ (riga 2623) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Asse trave A-B-C
  line((0, 0), (4.4, 0), stroke: 1.2pt)

  // Diagramma parabolico del momento M (in blu)
  bezier((0, 0), (1.1, 0), (0.35, -0.5), (0.75, -0.5), stroke: (paint: blue.darken(20%), thickness: 1pt))
  bezier((1.1, 0), (2.2, 1.15), (1.5, 0.35), (1.9, 0.78), stroke: (paint: blue.darken(20%), thickness: 1pt))
  bezier((2.2, 1.15), (4.4, 0), (2.8, 0.45), (3.5, 0.05), stroke: (paint: blue.darken(20%), thickness: 1pt))
  line((2.2, 0), (2.2, 1.15), stroke: 0.6pt)

  // Etichette (con text(size: 7pt))
  content((0.55, -0.45), text(size: 7pt, fill: blue.darken(20%))[$375 "Nm"$], anchor: "north")
  content((2.2, 1.25), text(size: 7pt, fill: blue.darken(20%))[$-3000 "Nm"$], anchor: "south")
  content((0.55, -0.18), text(size: 7pt, fill: blue.darken(20%))[$+$], anchor: "center")
  content((1.9, 0.4), text(size: 7pt, fill: blue.darken(20%))[$-$], anchor: "center")
  content((2.45, 0.4), text(size: 7pt, fill: blue.darken(20%))[$-$], anchor: "center")
  content((0, -0.15), text(size: 7pt)[$A$], anchor: "north")
  content((2.2, -0.15), text(size: 7pt)[$B$], anchor: "north")
  content((4.4, -0.15), text(size: 7pt)[$C$], anchor: "north")
})
