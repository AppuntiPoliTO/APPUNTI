// Figura estratta da fatica.typ (riga 2258) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // Contorno del provino
  line((-3, 2), (-0.7, 2), stroke: 1pt)
  arc((0, 2), start: 180deg, stop: 360deg, radius: 0.7, anchor: "origin", stroke: 1pt)
  line((0.7, 2), (3, 2), stroke: 1pt)
  line((3, 2), (3, -2), stroke: 1pt)
  line((3, -2), (0.7, -2), stroke: 1pt)
  arc((0, -2), start: 0deg, stop: 180deg, radius: 0.7, anchor: "origin", stroke: 1pt)
  line((-0.7, -2), (-3, -2), stroke: 1pt)
  line((-3, -2), (-3, 2), stroke: 1pt)

  // Carico P a sinistra
  line((-3, 0), (-4.5, 0), mark: (end: ">"), stroke: 1pt)
  content((-3.75, 0.4), text(blue)[$P$])

  // Carico P a destra
  line((3, 0), (4.5, 0), mark: (end: ">"), stroke: 1pt)
  content((3.75, 0.4), text(blue)[$P$])

  // Quota H (Altezza totale)
  line((3, 2), (5.5, 2), stroke: 0.6pt)
  line((3, -2), (5.5, -2), stroke: 0.6pt)
  line((5, -2), (5, 2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((5.3, 0), text(blue)[$H$])

  // Quota h (Altezza sezione minima)
  line((0, 1.3), (1.5, 1.3), stroke: 0.6pt)
  line((0, -1.3), (1.5, -1.3), stroke: 0.6pt)
  line((1.1, -1.3), (1.1, 1.3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.4, 0), text(blue)[$h$])
})
