// Figura estratta da main.typ (riga 80) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Riempimento elemento infinitesimo dA
  rect((0.83, 0.26), (1.83, 0.86), fill: rgb(198, 217, 241), stroke: none)

  // Contorno di dA (lati verticali continui, orizzontali tratteggiati come nello schizzo)
  line((0.83, 0.26), (0.83, 0.86), stroke: 0.7pt)
  line((1.83, 0.26), (1.83, 0.86), stroke: 0.7pt)
  line((0.83, 0.86), (1.83, 0.86), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.83, 0.26), (1.83, 0.26), stroke: (dash: "dashed", thickness: 0.7pt))

  // 2. Contorno chiuso della superficie A (4 Bezier C1)
  bezier((-2.77, 0.29), (-0.31, 2.14), (-2.77, 1.55), (-1.60, 2.14), stroke: 1.4pt)
  bezier((-0.31, 2.14), (3.06, 0.14), (1.60, 2.14), (3.06, 1.25), stroke: 1.4pt)
  bezier((3.06, 0.14), (-1.00, -1.80), (3.06, -1.20), (1.10, -1.80), stroke: 1.4pt)
  bezier((-1.00, -1.80), (-2.77, 0.29), (-2.20, -1.80), (-2.77, -0.90), stroke: 1.4pt)

  // 3. Assi e linee di riferimento
  // Retta d'azione tratteggiata sopra P
  line((0, 0.20), (0, 3.20), stroke: (dash: "dashed", thickness: 1.3pt))

  // Asse di riferimento verticale destro tratteggiato
  line((4.46, -3.30), (4.46, 3.20), stroke: (dash: "dashed", thickness: 1.3pt))

  // Linea di riferimento verticale sotto dP per la quota z
  line((1.40, -0.90), (1.40, -2.60), stroke: 0.6pt)

  // 4. Vettori e quote
  // Vettore forza risultante P
  line((0, 0), (0, -3.20), mark: (end: ">", size: 0.3), stroke: 1.6pt)

  // Vettore forza elementare dP
  line((1.33, 0.56), (1.33, -0.25), mark: (end: ">", size: 0.2), stroke: 1.2pt)

  // Quota a
  line((0.12, 2.80), (4.34, 2.80), mark: (start: ">", end: ">", size: 0.18), stroke: 0.7pt)

  // Quota z
  line((1.50, -1.95), (4.34, -1.95), mark: (start: ">", end: ">", size: 0.18), stroke: 0.7pt)

  // 5. Etichette (tutte con text(size: 7pt))
  content((-2.50, 1.85), text(size: 12pt)[$A$], anchor: "east")
  content((2.23, 3.00), text(size: 12pt)[$a$], anchor: "south")
  content((1.92, 0.65), text(size: 12pt, fill: rgb(45, 105, 155))[$d A$], anchor: "west")
  content((1.33, -0.55), text(size: 12pt)[$d P$], anchor: "center")
  content((-0.30, -3.05), text(size: 12pt)[$P$], anchor: "east")
  content((2.92, -2.15), text(size: 10pt)[$z$], anchor: "north")
})
