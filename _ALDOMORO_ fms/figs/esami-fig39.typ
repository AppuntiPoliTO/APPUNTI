// Figura estratta da esami.typ (riga 2805) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Assi sigma e tau
  line((-0.4, 0), (3.4, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -0.3), (0, 1.9), stroke: 0.6pt, mark: (end: ">"))

  // Semicerchio di Mohr (in rosso)
  arc((1.3, 0), start: 0deg, stop: 180deg, radius: 1.3, anchor: "origin", stroke: (paint: red, thickness: 1pt))

  // Etichette (con text(size: 7pt))
  content((3.3, -0.15), text(size: 7pt)[$sigma$], anchor: "north")
  content((0.15, 1.8), text(size: 7pt)[$tau$], anchor: "west")
  content((2.6, -0.15), text(size: 7pt)[$sigma_1$], anchor: "north")
})
