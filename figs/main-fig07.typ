// Figura estratta da main.typ (riga 523) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  rect((0.69, 0.50), (1.53, 1.03), fill: rgb(198, 217, 241), stroke: none)
  line((0.69, 0.50), (0.69, 1.03), stroke: 0.6pt)
  line((1.53, 0.50), (1.53, 1.03), stroke: 0.6pt)
  line((0.69, 1.03), (1.53, 1.03), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.69, 0.50), (1.53, 0.50), stroke: (dash: "dashed", thickness: 0.6pt))

  // 2. Contorno chiuso della superficie A (4 Bezier C1)
  bezier((-2.34, 0.28), (-0.25, 1.97), (-2.34, 1.40), (-1.35, 1.97), stroke: 1.4pt)
  bezier((-0.25, 1.97), (2.56, 0.19), (1.35, 1.97), (2.56, 1.15), stroke: 1.4pt)
  bezier((2.56, 0.19), (-0.85, -1.44), (2.56, -0.95), (0.95, -1.44), stroke: 1.4pt)
  bezier((-0.85, -1.44), (-2.34, 0.28), (-1.85, -1.44), (-2.34, -0.75), stroke: 1.4pt)

  // 3. Assi tratteggiati e linea di riferimento
  // Retta d'azione di P
  line((0, 0.15), (0, 3.75), stroke: (dash: "dashed", thickness: 1.2pt))

  // Asse y_1
  line((3.72, -2.85), (3.72, 3.00), stroke: (dash: "dashed", thickness: 1.2pt))

  // Asse y_2
  line((4.59, -2.85), (4.59, 3.75), stroke: (dash: "dashed", thickness: 1.2pt))

  // Linea di riferimento verticale dal centro di dA
  line((1.11, 0.70), (1.11, -1.35), stroke: 0.6pt)

  // 4. Vettore P e quote orizzontali
  // Vettore forza risultante P
  line((0, 0), (0, -2.55), mark: (end: ">", size: 0.30), stroke: 1.6pt)

  // Quota b_2 = b_1 + d
  line((0.10, 3.40), (4.49, 3.40), mark: (start: ">", end: ">", size: 0.16), stroke: 0.6pt)

  // Quota b_1
  line((0.10, 2.40), (3.62, 2.40), mark: (start: ">", end: ">", size: 0.16), stroke: 0.6pt)
  // Quota z_1
  line((1.20, -1.05), (3.62, -1.05), mark: (start: ">", end: ">", size: 0.16), stroke: 0.6pt)
  // Quota d
  line((3.80, -1.05), (4.51, -1.05), mark: (start: ">", end: ">", size: 0.14), stroke: 0.6pt)
  // 5. Etichette (tutte con text(size: 7pt))
  content((-2.10, 1.55), text(size: 7pt, fill: rgb(90, 95, 105))[$A$], anchor: "east")
  content((2.30, 3.52), text(size: 7pt)[$b_2 = b_1 + d$], anchor: "south")
  content((1.86, 2.52), text(size: 7pt)[$b_1$], anchor: "south")
  content((1.62, 0.82), text(size: 7pt, fill: rgb(45, 105, 155))[$d A$], anchor: "west")
  content((-0.28, -2.40), text(size: 7pt)[$P$], anchor: "east")
  content((2.41, -1.20), text(size: 7pt)[$z_1$], anchor: "north")
  content((4.15, -1.20), text(size: 7pt)[$d$], anchor: "north")
  content((3.72, -3.02), text(size: 7pt, fill: rgb(70, 75, 85))[$y_1$], anchor: "north")
  content((4.59, -3.02), text(size: 7pt, fill: rgb(70, 75, 85))[$y_2$], anchor: "north")
})
