// Figura estratta da main.typ (riga 997) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Riempimento e contorno dell'elemento infinitesimo dA
  rect((0.73, 0.31), (1.67, 0.85), fill: rgb(198, 217, 241), stroke: none)
  line((0.73, 0.31), (0.73, 0.85), stroke: 0.7pt)
  line((1.67, 0.31), (1.67, 0.85), stroke: 0.7pt)
  line((0.73, 0.85), (1.67, 0.85), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.73, 0.31), (1.67, 0.31), stroke: (dash: "dashed", thickness: 0.7pt))

  // 2. Contorno chiuso della superficie A (4 Bezier C1)
  bezier((-2.76, 0.18), (-0.45, 2.13), (-2.76, 1.48), (-1.65, 2.13), stroke: 1.6pt)
  bezier((-0.45, 2.13), (2.87, 0.18), (1.45, 2.13), (2.87, 1.30), stroke: 1.6pt)
  bezier((2.87, 0.18), (-0.95, -1.82), (2.87, -1.15), (1.05, -1.82), stroke: 1.6pt)
  bezier((-0.95, -1.82), (-2.76, 0.18), (-2.15, -1.82), (-2.76, -0.95), stroke: 1.6pt)

  // 3. Tre rette parallele inclinate (23.9 gradi)
  // Retta 1 (superiore)
  line((-4.63, -0.41), (3.23, 3.07), stroke: 0.7pt + rgb(70, 70, 75))
  // Retta 2 (intermedia)
  line((-4.21, -0.97), (3.23, 2.33), stroke: 0.7pt + rgb(70, 70, 75))
  // Retta 3 (inferiore, passa per dA)
  line((-1.46, -0.65), (1.74, 0.77), stroke: 0.7pt + rgb(70, 70, 75))

  // 4. Quote ortogonali alle rette (doppia freccia)
  // Quota d (tra Retta 2 e Retta 1)
  line((-3.71, -0.75), (-3.99, -0.13), mark: (start: ">", end: ">", size: 0.18), stroke: 0.5pt)

  // Quota a_2 (tra Retta 3 e Retta 1)
  line((-1.14, -0.51), (-1.75, 0.86), mark: (start: ">", end: ">", size: 0.18), stroke: 0.5pt)

  // Quota a_1 (tra Retta 3 e Retta 2)
  line((0.14, 0.06), (-0.19, 0.81), mark: (start: ">", end: ">", size: 0.18), stroke: 0.5pt)

  // 5. Etichette (tutte con text(size: 7pt))
  content((-2.55, 1.85), text(size: 7pt, fill: rgb(50, 50, 55))[$A$], anchor: "east")
  content((-4.05, -0.55), text(size: 7pt, fill: rgb(50, 50, 55))[$d$], anchor: "east")
  content((-0.15, 0.35), text(size: 7pt, fill: rgb(45, 60, 75))[$a_1$], anchor: "east")
  content((-1.30, -0.30), text(size: 7pt, fill: rgb(45, 60, 75))[$a_2 =$], anchor: "east")
  content((-0.75, -0.95), text(size: 7pt, fill: rgb(45, 60, 75))[$= a_1 + d$], anchor: "center")
  content((1.78, 0.80), text(size: 7pt, fill: rgb(45, 105, 155))[$d A$], anchor: "west")
})
