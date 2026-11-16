// Figura estratta da esami.typ (riga 1224) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Assi sigma e tau
  line((-1.1, 0), (3.1, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -1.8), (0, 2.1), stroke: 0.6pt, mark: (end: ">"))

  // Tre cerchi di Mohr
  circle((0.925, 0), radius: 1.475, stroke: 1pt)
  circle((0, 0), radius: 0.55, stroke: 0.6pt)
  circle((1.475, 0), radius: 0.925, stroke: 0.6pt)

  // Raggio verticale C -> (sigma_xx, tau_xz) e arco angolo 2*alpha
  line((0.925, 0), (0.925, 1.475), stroke: 0.6pt)
  arc((0.925, 0), start: 0deg, stop: 90deg, radius: 0.42, anchor: "origin", stroke: 0.6pt)

  // Tacche su tau_xz e -tau_xz e poli
  line((-0.08, 1.475), (0.08, 1.475), stroke: 0.6pt)
  line((-0.08, -1.475), (0.08, -1.475), stroke: 0.6pt)
  circle((0.925, 1.475), radius: 0.07, fill: white, stroke: 1pt)
  circle((0.925, -1.475), radius: 0.07, fill: black, stroke: 1pt)

  // Crocette sulle tensioni principali
  line((-0.62, -0.07), (-0.48, 0.07), stroke: 0.6pt)
  line((-0.62, 0.07), (-0.48, -0.07), stroke: 0.6pt)
  line((0.48, -0.07), (0.62, 0.07), stroke: 0.6pt)
  line((0.48, 0.07), (0.62, -0.07), stroke: 0.6pt)
  line((2.33, -0.07), (2.47, 0.07), stroke: 0.6pt)
  line((2.33, 0.07), (2.47, -0.07), stroke: 0.6pt)

  // Etichette (con text(size: 7pt))
  content((3.05, -0.15), text(size: 7pt)[$sigma$], anchor: "north")
  content((-0.15, 2.0), text(size: 7pt)[$tau$], anchor: "east")
  content((-0.15, 1.475), text(size: 7pt)[$tau_(x z)$], anchor: "east")
  content((-0.15, -1.475), text(size: 7pt)[$-tau_(x z)$], anchor: "east")
  content((0.95, 1.62), text(size: 7pt)[$(sigma_(x x), tau_(x z))$], anchor: "south")
  content((1.25, 0.35), text(size: 7pt)[$2 alpha$], anchor: "south")
  content((-0.6, -0.18), text(size: 7pt)[$sigma_3$], anchor: "north")
  content((0.42, -0.18), text(size: 7pt)[$sigma_2 equiv sigma_(y y)$], anchor: "north")
  content((1.2, -0.18), text(size: 7pt)[$sigma_(x x) equiv C$], anchor: "north")
  content((2.5, -0.18), text(size: 7pt)[$sigma_1$], anchor: "north")
})
