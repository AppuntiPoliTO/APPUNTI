// Figura estratta da esami.typ (riga 3599) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 1.4), (1.2, 1.4), (1.2, 0), stroke: 1pt)

  // Reazioni H_E, V_E e forza F
  line((0.65, 0), (1.16, 0), stroke: 0.8pt, mark: (end: ">"))
  line((1.2, -0.5), (1.2, -0.04), stroke: 0.8pt, mark: (end: ">"))
  line((1.2, 1.4), (1.2, 1.95), stroke: 0.8pt, mark: (end: ">"))

  // Quota L e ascissa x
  line((1.55, 0), (1.55, 1.4), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((1.1, 1.7), (0.6, 1.7), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne N, T, M
  line((0, 1.2), (0, 1.6), stroke: 0.6pt)
  line((0, 1.4), (-0.55, 1.4), stroke: 0.8pt, mark: (end: ">"))
  line((0, 1.4), (0, 1.9), stroke: 0.8pt, mark: (end: ">"))
  arc((0, 1.4), start: 120deg, stop: 240deg, radius: 0.3, anchor: "origin", stroke: 0.8pt, mark: (start: ">"))

  // Etichette (con text(size: 7pt))
  content((1.3, 0.05), text(size: 7pt)[$E$], anchor: "west")
  content((0.8, -0.15), text(size: 7pt)[$H_E$], anchor: "north")
  content((1.05, -0.35), text(size: 7pt)[$V_E$], anchor: "east")
  content((1.3, 1.85), text(size: 7pt)[$F$], anchor: "west")
  content((1.65, 0.7), text(size: 7pt)[$L$], anchor: "west")
  content((0.85, 1.8), text(size: 7pt)[$x$], anchor: "south")
  content((-0.5, 1.28), text(size: 7pt)[$N$], anchor: "north")
  content((0.12, 1.75), text(size: 7pt)[$T$], anchor: "west")
  content((-0.3, 1.75), text(size: 7pt)[$M$], anchor: "south")
})
