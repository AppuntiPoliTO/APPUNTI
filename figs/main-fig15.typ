// Figura estratta da main.typ (riga 1101) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.85cm, {
  import draw: *
  // Contorno chiuso della superficie A
  bezier((-3.0, 0.2), (-0.2, 2.0), (-3.0, 1.4), (-1.6, 2.0), stroke: 1.4pt)
  bezier((-0.2, 2.0), (2.5, 0.2), (1.3, 2.0), (2.5, 1.2), stroke: 1.4pt)
  bezier((2.5, 0.2), (0.1, -1.5), (2.5, -1.0), (1.3, -1.5), stroke: 1.4pt)
  bezier((0.1, -1.5), (-3.0, 0.2), (-1.6, -1.5), (-3.0, -0.9), stroke: 1.4pt)
  content((2.3, 1.8), text(size: 9pt)[$A$])

  // Assi originari z e y centrati in O
  line((0.5, 0), (-3.8, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, -0.4), (0, 2.8), mark: (end: ">"), stroke: 0.8pt)
  content((-3.7, 0.25), text(size: 8pt)[$z$])
  content((0.25, 2.65), text(size: 8pt)[$y$])
  content((0.25, -0.25), text(size: 8pt)[$O$])

  // Assi ruotati a e b (ruotati di alpha = 25 deg come in slide 18)
  line((0.5, 0.23), (-3.5, -1.63), mark: (end: ">"), stroke: 0.8pt + rgb(45, 105, 155))
  line((0.18, -0.4), (-1.2, 2.55), mark: (end: ">"), stroke: 0.8pt + rgb(45, 105, 155))
  content((-3.3, -1.85), text(size: 8pt, fill: rgb(45, 105, 155))[$a$])
  content((-1.45, 2.5), text(size: 8pt, fill: rgb(45, 105, 155))[$b$])

  // Elemento dA nel quadrante (z>0, y>0)
  rect((-1.6, 0.6), (-1.0, 1.0), fill: rgb(198, 217, 241), stroke: 0.6pt)
  content((-1.7, 0.85), text(size: 8pt, fill: rgb(45, 105, 155))[$dif A$], anchor: "east")

  // Proiezioni su z, y (tratteggiate) e su a, b (continue)
  line((-1.3, 0.8), (-1.3, 0), stroke: (dash: "dashed", thickness: 0.5pt))
  line((-1.3, 0.8), (0, 0.8), stroke: (dash: "dashed", thickness: 0.5pt))
  line((-1.3, 0.8), (-0.84, -0.39), stroke: 0.5pt + rgb(45, 105, 155))
  line((-1.3, 0.8), (-0.55, 1.15), stroke: 0.5pt + rgb(45, 105, 155))

  // Arco angolo alpha
  arc((0, 0), start: 180deg, stop: 205deg, radius: 1.7, anchor: "origin", stroke: 0.6pt)
  content((-1.95, -0.42), text(size: 8pt)[$alpha$])
})
