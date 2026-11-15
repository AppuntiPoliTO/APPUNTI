// Figura estratta da esami.typ (riga 1434) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (0, 1.3), stroke: 1pt)
  circle((0, 0), radius: 0.05, fill: black)

  // Reazione H_A e ascissa x
  line((-0.55, 0), (-0.05, 0), stroke: 1pt, mark: (end: ">"))
  line((0.45, 0), (0.65, 0), stroke: 0.6pt)
  line((0.55, 0), (0.55, 0.35), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne in S_1^+
  line((0, 1.3), (0, 1.85), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0, 1.3), (0.55, 1.3), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((0, 1.3), start: 110deg, stop: 240deg, radius: 0.3, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (end: ">"))

  // Etichette
  content((-0.3, -0.15), text(size: 7pt)[$H_A$], anchor: "north")
  content((0.12, -0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.68, 0.25), text(size: 7pt)[$x$], anchor: "west")
  content((0.12, 1.75), text(size: 7pt, fill: red)[$N$], anchor: "west")
  content((0.45, 1.18), text(size: 7pt, fill: red)[$T$], anchor: "north")
  content((-0.32, 1.25), text(size: 7pt, fill: red)[$M_f$], anchor: "east")
  content((0.1, 1.05), text(size: 7pt, fill: red)[$S_1^+$], anchor: "west")
})
