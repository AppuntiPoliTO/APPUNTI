// Figura estratta da esami.typ (riga 3266) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Contorno della sezione a doppio T
  line((-1.1, -1.45), (1.1, -1.45), (1.1, -1.21), (0.12, -1.21), (0.12, 1.21), (1.1, 1.21), (1.1, 1.45), (-1.1, 1.45), (-1.1, 1.21), (-0.12, 1.21), (-0.12, -1.21), (-1.1, -1.21), close: true, stroke: 1pt)

  // Etichetta quota lembo inferiore
  content((1.25, 1.35), text(size: 7pt)[$y = - h / 2$], anchor: "west")
})
