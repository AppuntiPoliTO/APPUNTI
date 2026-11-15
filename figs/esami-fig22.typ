// Figura estratta da esami.typ (riga 1648) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (0, 1.3), stroke: 1pt)
  circle((0, 1.3), radius: 0.05, fill: black)

  // Reazione V_E e ascissa x
  line((0, 1.3), (0, 1.85), stroke: 1pt, mark: (end: ">"))
  line((-0.45, 1.3), (-0.25, 1.3), stroke: 0.6pt)
  line((-0.35, 1.3), (-0.35, 0.95), stroke: 0.6pt, mark: (end: ">"))

  // Carico distribuito q
  line((0.42, 0), (0.42, 1.3), stroke: (paint: red, thickness: 0.6pt))
  line((0.42, 0), (0.02, 0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((0.42, 0.43), (0.02, 0.43), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((0.42, 0.86), (0.02, 0.86), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((0.42, 1.3), (0.02, 1.3), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Azioni interne in S_5^-
  line((0, 0), (0, -0.55), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0, 0), (-0.55, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((0, 0), start: 190deg, stop: 310deg, radius: 0.3, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  // Etichette
  content((-0.12, 1.65), text(size: 7pt)[$V_E$], anchor: "east")
  content((0.12, 1.42), text(size: 7pt)[$E$], anchor: "west")
  content((-0.45, 1.1), text(size: 7pt)[$x$], anchor: "east")
  content((0.52, 0.65), text(size: 7pt, fill: red)[$q$], anchor: "west")
  content((0.12, -0.5), text(size: 7pt, fill: red)[$N$], anchor: "west")
  content((-0.5, 0.12), text(size: 7pt, fill: red)[$T$], anchor: "south")
  content((-0.32, -0.32), text(size: 7pt, fill: red)[$M_f$], anchor: "east")
  content((0.15, -0.15), text(size: 7pt, fill: red)[$S_5^-$], anchor: "west")
})
