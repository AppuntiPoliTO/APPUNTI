// Figura estratta da esami.typ (riga 1593) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (1.2, 0), stroke: 1pt)
  circle((1.2, 0), radius: 0.05, fill: black)

  // Reazioni H_D e V_D e ascissa x
  line((1.2, 0), (1.75, 0), stroke: 1pt, mark: (end: ">"))
  line((1.2, -0.55), (1.2, -0.05), stroke: 1pt, mark: (end: ">"))
  line((1.15, 0.25), (1.15, 0.45), stroke: 0.6pt)
  line((1.15, 0.35), (0.8, 0.35), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne in S_4^-
  line((0, 0), (-0.55, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0, 0), (0, 0.55), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((0, 0), start: 110deg, stop: 230deg, radius: 0.3, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  // Etichette
  content((1.3, 0.12), text(size: 7pt)[$D$], anchor: "south")
  content((1.65, -0.15), text(size: 7pt)[$H_D$], anchor: "north")
  content((1.3, -0.4), text(size: 7pt)[$V_D$], anchor: "west")
  content((0.95, 0.48), text(size: 7pt)[$x$], anchor: "south")
  content((-0.5, 0.12), text(size: 7pt, fill: red)[$N$], anchor: "south")
  content((0.12, 0.45), text(size: 7pt, fill: red)[$T$], anchor: "west")
  content((-0.28, 0.35), text(size: 7pt, fill: red)[$M_f$], anchor: "south")
  content((0.05, -0.15), text(size: 7pt, fill: red)[$S_4^-$], anchor: "north")
})
