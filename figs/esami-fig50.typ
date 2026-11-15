// Figura estratta da esami.typ (riga 3478) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Spezzone verticale Tratto AB
  line((0, 0), (0, 1.3), stroke: 1pt)

  // Carico distribuito q su x
  line((-0.4, 0), (-0.4, 1.3), stroke: 0.6pt)
  line((-0.4, 0.2), (-0.02, 0.2), stroke: 0.6pt, mark: (end: ">"))
  line((-0.4, 0.65), (-0.02, 0.65), stroke: 0.6pt, mark: (end: ">"))
  line((-0.4, 1.1), (-0.02, 1.1), stroke: 0.6pt, mark: (end: ">"))

  // Reazioni H_A e V_A
  line((-0.55, -0.15), (-0.05, -0.15), stroke: 0.8pt, mark: (end: ">"))
  line((0, -0.55), (0, -0.05), stroke: 0.8pt, mark: (end: ">"))

  // Ascissa x
  line((-0.6, 0.2), (-0.6, 0.9), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne N, T, M
  line((-0.15, 1.3), (0.15, 1.3), stroke: 0.6pt)
  line((0, 1.3), (0, 1.85), stroke: 0.8pt, mark: (end: ">"))
  line((0, 1.3), (0.55, 1.3), stroke: 0.8pt, mark: (end: ">"))
  arc((0, 1.3), start: 110deg, stop: 230deg, radius: 0.3, anchor: "origin", stroke: 0.8pt, mark: (start: ">"))

  // Etichette (con text(size: 7pt))
  content((0.12, -0.05), text(size: 7pt)[$A$], anchor: "west")
  content((-0.35, -0.25), text(size: 7pt)[$H_A$], anchor: "north")
  content((0.12, -0.4), text(size: 7pt)[$V_A$], anchor: "west")
  content((-0.7, 0.55), text(size: 7pt)[$x$], anchor: "east")
  content((0, 1.92), text(size: 7pt)[$N$], anchor: "south")
  content((0.62, 1.3), text(size: 7pt)[$T$], anchor: "west")
  content((-0.35, 1.45), text(size: 7pt)[$M$], anchor: "east")
})
