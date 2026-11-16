// Figura estratta da esami.typ (riga 1487) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (0, 1.4), (1.2, 1.4), stroke: 1pt)
  circle((0, 0), radius: 0.05, fill: black)

  // H_A, F e ascissa x
  line((-0.5, 0), (-0.05, 0), stroke: 1pt, mark: (end: ">"))
  line((-0.55, 1.4), (-0.02, 1.4), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0, 1.65), (0.35, 1.65), stroke: 0.6pt, mark: (end: ">"))
  line((-0.65, 0), (-0.65, 1.4), stroke: 0.6pt)

  // Azioni interne in S_2^+
  line((1.2, 1.4), (1.75, 1.4), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((1.2, 1.4), (1.2, 0.85), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((1.2, 1.4), start: -30deg, stop: 90deg, radius: 0.3, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (end: ">"))

  // Etichette
  content((-0.28, 0.12), text(size: 7pt)[$H_A$], anchor: "south")
  content((0.12, -0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.05, 1.48), text(size: 7pt)[$B$], anchor: "south")
  content((-0.35, 1.52), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((0.35, 1.78), text(size: 7pt)[$x$], anchor: "south")
  content((-0.75, 0.7), text(size: 7pt)[$L$], anchor: "east")
  content((1.7, 1.52), text(size: 7pt, fill: red)[$N$], anchor: "south")
  content((1.32, 0.9), text(size: 7pt, fill: red)[$T$], anchor: "west")
  content((1.45, 1.72), text(size: 7pt, fill: red)[$M_f$], anchor: "south")
  content((1.05, 1.25), text(size: 7pt, fill: red)[$S_2^+$], anchor: "north")
})
