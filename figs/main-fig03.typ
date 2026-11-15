// Figura estratta da main.typ (riga 241) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.2cm, {
  import draw: *

  // Contorno chiuso della sezione A
  bezier((-2.4, 0.2), (-0.2, 1.8), (-2.4, 1.3), (-1.3, 1.8), stroke: 1.3pt)
  bezier((-0.2, 1.8), (2.2, 0.1), (1.2, 1.8), (2.2, 1.1), stroke: 1.3pt)
  bezier((2.2, 0.1), (-0.7, -1.5), (2.2, -1.0), (0.9, -1.5), stroke: 1.3pt)
  bezier((-0.7, -1.5), (-2.4, 0.2), (-1.8, -1.5), (-2.4, -0.8), stroke: 1.3pt)

  // Assi baricentrici z (sinistra) e y (alto) con origine in G(0,0)
  line((0.5, 0), (-3.2, 0), mark: (end: ">", size: 0.2), stroke: 0.8pt)
  line((0, -1.8), (0, 2.6), mark: (end: ">", size: 0.2), stroke: 0.8pt)
  content((-3.1, -0.3), text(size: 9pt)[$z$])
  content((0.3, 2.5), text(size: 9pt)[$y$])
  content((0.3, -0.3), text(size: 9pt)[$G$])

  // Elemento infinitesimo dA in (-1.2, 0.6)
  rect((-1.45, 0.45), (-0.95, 0.75), fill: rgb(198, 217, 241), stroke: 0.6pt)
  content((-1.55, 0.85), text(size: 9pt, fill: rgb(45, 105, 155))[$dif A$])

  // Proiezioni z e y di dA
  line((-1.2, 0), (-1.2, 0.45), stroke: (dash: "dashed", thickness: 0.5pt))
  line((0, 0.6), (-0.95, 0.6), stroke: (dash: "dashed", thickness: 0.5pt))

  // Retta baricentrica parallela a r (inclinata di alpha = 25 gradi)
  line((-2.5, -1.16), (2.2, 1.03), stroke: 0.7pt + gray)

  // Retta parallela passante per dA (-1.2, 0.6)
  line((-2.8, -0.15), (1.5, 1.86), stroke: 0.7pt + gray)

  // Retta r a distanza d_G sotto G
  line((-1.6, -2.65), (3.1, -0.46), stroke: 1.1pt + gray)
  content((2.4, -1.1), text(size: 9pt)[$r$])

  // Quote d_G e Delta d (lungo la normale a r)
  line((-2.1, -0.98), (-1.35, -2.53), mark: (start: ">", end: ">", size: 0.15), stroke: 0.6pt)
  content((-2.1, -1.9), text(size: 8pt)[$d_G$])

  line((-2.1, -0.98), (-2.48, -0.19), mark: (start: ">", end: ">", size: 0.15), stroke: 0.6pt)
  content((-2.75, -0.55), text(size: 8pt)[$Delta d$])

  // Arco angolo alpha
  arc((-0.8, 0), start: 180deg, stop: 205deg, radius: 0.8, stroke: 0.6pt)
  content((-1.05, -0.22), text(size: 8pt)[$alpha$])
})
