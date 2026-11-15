// Figura estratta da esami.typ (riga 3334) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Assi sigma e tau
  line((-1.7, 0), (2.75, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -2.0), (0, 2.0), stroke: 0.6pt, mark: (end: ">"))

  // Tre cerchi di Mohr
  circle((0.45, 0), radius: 1.73, stroke: 1pt)
  circle((-0.64, 0), radius: 0.64, stroke: 0.6pt)
  circle((1.09, 0), radius: 1.09, stroke: 0.6pt)

  // Diametro coniugato tra (0, -1.67) e (0.90, 1.67) passante per (0.45, 0)
  line((0, -1.67), (0.90, 1.67), stroke: 0.6pt)
  line((0.90, 0), (0.90, 1.67), stroke: (dash: "dashed", thickness: 0.6pt))

  // Punti notevoli
  circle((0.90, 1.67), radius: 0.05, fill: black)
  circle((0, -1.67), radius: 0.05, fill: black)
  circle((0.45, 0), radius: 0.04, fill: black)

  // Etichette (con text(size: 7pt))
  content((2.7, -0.15), text(size: 7pt)[$sigma$], anchor: "north")
  content((-0.15, 1.9), text(size: 7pt)[$tau$], anchor: "east")
  content((0.55, 1.05), text(size: 7pt)[$R$], anchor: "east")
  content((-1.32, -0.15), text(size: 7pt)[$sigma_3$], anchor: "north")
  content((-0.15, -0.15), text(size: 7pt)[$sigma_2$], anchor: "north")
  content((0.45, -0.15), text(size: 7pt)[$sigma_C$], anchor: "north")
  content((2.22, -0.15), text(size: 7pt)[$sigma_1$], anchor: "north")
})
