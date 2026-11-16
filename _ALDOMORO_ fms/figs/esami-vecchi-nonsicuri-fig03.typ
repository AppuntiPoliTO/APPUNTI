// Figura estratta da esami-vecchi-nonsicuri.typ (riga 260) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Incastro a sinistra
  line((1.0, 0.4), (1.0, 2.1), stroke: 1pt)
  line((1.0, 0.55), (0.8, 0.35), stroke: 0.6pt)
  line((1.0, 0.85), (0.8, 0.65), stroke: 0.6pt)
  line((1.0, 1.15), (0.8, 0.95), stroke: 0.6pt)
  line((1.0, 1.45), (0.8, 1.25), stroke: 0.6pt)
  line((1.0, 1.75), (0.8, 1.55), stroke: 0.6pt)
  line((1.0, 2.05), (0.8, 1.85), stroke: 0.6pt)

  // Contorno barra con intaglio
  line((1.0, 1.8), (2.0, 1.8), stroke: 1pt)
  arc((2.25, 1.8), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 1pt)
  line((2.5, 1.8), (3.8, 1.8), (3.8, 0.7), (2.5, 0.7), stroke: 1pt)
  arc((2.25, 0.7), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 1pt)
  line((2.0, 0.7), (1.0, 0.7), stroke: 1pt)

  // Assi x, y
  line((1.0, 1.25), (1.7, 1.25), mark: (end: ">"), stroke: 0.6pt)
  line((1.0, 1.8), (1.0, 2.35), mark: (end: ">"), stroke: 0.6pt)

  // Forza F
  line((3.8, 1.25), (4.8, 1.25), mark: (end: ">"), stroke: 1pt)

  // Etichette
  content((1.45, 1.18), text(size: 7pt)[$x$], anchor: "north")
  content((1.12, 2.25), text(size: 7pt)[$y$], anchor: "west")
  content((4.5, 1.35), text(size: 7pt)[$F$], anchor: "south")
})
