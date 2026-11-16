// Figura estratta da esami.typ (riga 2229) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi sigma e tau
  line((-0.3, 0), (3.8, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -0.2), (0, 2.2), stroke: 0.6pt, mark: (end: ">"))

  // Semicerchio di Mohr tra sigma_2 = sigma_3 = 0 e sigma_1 = sigma_xx
  arc((1.3, 0), start: 0deg, stop: 180deg, radius: 1.3, anchor: "origin", stroke: 1pt)
  circle((0, 0), radius: 0.05, fill: black)

  // Freccia indicatrice "2 cerchi coincidenti in un punto"
  line((-0.65, 0.35), (-0.1, 0.08), stroke: 0.6pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((3.75, -0.15), text(size: 7pt)[$sigma$], anchor: "north")
  content((-0.15, 2.1), text(size: 7pt)[$tau$], anchor: "east")
  content((0, -0.18), text(size: 7pt)[$sigma_2 = sigma_3$], anchor: "north")
  content((2.6, -0.18), text(size: 7pt)[$sigma_(x x) = sigma_1$], anchor: "north")
  content((-0.7, 0.35), text(size: 7pt)[2 CERCHI COINCIDENTI IN UN PUNTO], anchor: "east")
})
