// Figura estratta da cuscinetti.typ (riga 667) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // Assi cartesiani
  line((0, 6.0), (0, 0), (7.05, 0), stroke: (paint: black, thickness: 1.2pt))

  // Quadratini dei campioni sperimentali (riempimento grigio chiaro, bordo blu/grigio)
  rect((0.89, 5.39), (1.01, 5.51), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((1.47, 4.94), (1.59, 5.06), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((2.07, 4.39), (2.19, 4.51), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((2.59, 3.97), (2.71, 4.09), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((3.29, 3.49), (3.41, 3.61), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((4.19, 3.04), (4.31, 3.16), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((5.32, 2.62), (5.44, 2.74), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))
  rect((5.47, 2.24), (5.59, 2.36), fill: luma(200), stroke: (paint: blue.darken(20%), thickness: 0.5pt))

  // Curva principale blu (arco di cerchio)
  arc((8.223, 12.081), start: 222.36deg, stop: 259.62deg, radius: 9.842, anchor: "origin", stroke: (paint: blue, thickness: 1.5pt))

  // Etichette
  content((-0.35, 5.65), text(size: 7pt)[*P*], anchor: "east")
  content((6.55, -0.35), text(size: 7pt)[*L*], anchor: "north")
})
