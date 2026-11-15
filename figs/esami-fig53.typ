// Figura estratta da esami.typ (riga 3661) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.2cm, {
  import draw: *

  line((0, 0.9), (0, 1.4), (1.2, 1.4), (1.2, 0), stroke: 1pt)

  // Carico q sul tratto C-x
  line((-0.35, 0.9), (-0.35, 1.4), stroke: 0.6pt)
  line((-0.35, 1.0), (-0.02, 1.0), stroke: 0.6pt, mark: (end: ">"))
  line((-0.35, 1.2), (-0.02, 1.2), stroke: 0.6pt, mark: (end: ">"))
  line((-0.35, 1.4), (-0.02, 1.4), stroke: 0.6pt, mark: (end: ">"))

  // Reazioni H_E, V_E, forza F e ascissa x
  line((0.65, 0), (1.16, 0), stroke: 0.8pt, mark: (end: ">"))
  line((1.2, -0.5), (1.2, -0.04), stroke: 0.8pt, mark: (end: ">"))
  line((1.2, 1.4), (1.2, 1.95), stroke: 0.8pt, mark: (end: ">"))
  line((0.2, 1.38), (0.2, 1.05), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne N, T, M in (0, 0.9)
  line((-0.15, 0.9), (0.15, 0.9), stroke: 0.6pt)
  line((0, 0.9), (0, 0.4), stroke: 0.8pt, mark: (end: ">"))
  line((0, 0.9), (-0.5, 0.9), stroke: 0.8pt, mark: (end: ">"))
  arc((0, 0.9), start: 210deg, stop: 330deg, radius: 0.28, anchor: "origin", stroke: 0.8pt, mark: (start: ">"))

  // Etichette (con text(size: 7pt))
  content((0.8, -0.15), text(size: 7pt)[$H_E$], anchor: "north")
  content((1.05, -0.35), text(size: 7pt)[$V_E$], anchor: "east")
  content((1.3, 1.85), text(size: 7pt)[$F$], anchor: "west")
  content((0.3, 1.15), text(size: 7pt)[$x$], anchor: "west")
  content((0, 0.35), text(size: 7pt)[$N$], anchor: "north")
  content((-0.45, 0.78), text(size: 7pt)[$T$], anchor: "north")
  content((0.32, 0.78), text(size: 7pt)[$M$], anchor: "west")
})
