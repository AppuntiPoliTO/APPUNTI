// Figura estratta da esami.typ (riga 3544) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (0, 1.2), stroke: 1pt)

  // Reazioni H_E e V_E e ascissa x
  line((-0.55, -0.15), (-0.05, -0.15), stroke: 0.8pt, mark: (end: ">"))
  line((0, -0.55), (0, -0.05), stroke: 0.8pt, mark: (end: ">"))
  line((-0.25, 0.2), (-0.25, 0.75), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne N, T, M
  line((-0.15, 1.2), (0.15, 1.2), stroke: 0.6pt)
  line((0, 1.2), (0, 1.75), stroke: 0.8pt, mark: (end: ">"))
  line((0, 1.2), (0.55, 1.2), stroke: 0.8pt, mark: (end: ">"))
  arc((0, 1.2), start: -30deg, stop: 90deg, radius: 0.3, anchor: "origin", stroke: 0.8pt, mark: (start: ">"))

  // Etichette (con text(size: 7pt))
  content((0.12, -0.05), text(size: 7pt)[$E$], anchor: "west")
  content((-0.35, -0.25), text(size: 7pt)[$H_E$], anchor: "north")
  content((0.12, -0.4), text(size: 7pt)[$V_E$], anchor: "west")
  content((-0.35, 0.5), text(size: 7pt)[$x$], anchor: "east")
  content((0.1, 1.75), text(size: 7pt)[$N$], anchor: "west")
  content((0.55, 1.32), text(size: 7pt)[$T$], anchor: "south")
  content((0.35, 1.05), text(size: 7pt)[$M$], anchor: "west")
})
