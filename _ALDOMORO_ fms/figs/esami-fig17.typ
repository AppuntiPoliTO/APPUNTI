// Figura estratta da esami.typ (riga 1364) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 3cm, {
  import draw: *

  // Struttura
  line((0, 0), (0, 1.5), (1.32, 1.5), stroke: 1pt)
  line((1.5, 0), (1.5, 3.0), stroke: 1pt)
  line((1.5, 1.5), (3.0, 1.5), stroke: 1pt)

  arc((1.41, 1.5), start: 90deg, stop: 270deg, radius: 0.09, anchor: "origin", stroke: 1pt)
  circle((1.41, 1.5), radius: 0.03, fill: black)

  // Reazioni e carichi
  line((-0.5, 0), (-0.02, 0), stroke: 1pt, mark: (end: ">"))
  line((1.5, 3.0), (1.5, 3.6), stroke: 1pt, mark: (end: ">"))
  line((3.0, 1.5), (3.5, 1.5), stroke: 1pt, mark: (end: ">"))
  line((3.0, 0.95), (3.0, 1.48), stroke: 1pt, mark: (end: ">"))

  line((-0.55, 1.5), (-0.02, 1.5), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0.95, 0), (1.48, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((1.22, 1.5), start: 110deg, stop: 250deg, radius: 0.25, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  line((1.88, 1.5), (1.88, 3.0), stroke: (paint: red, thickness: 0.6pt))
  line((1.88, 1.5), (1.52, 1.5), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.88, 2.0), (1.52, 2.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.88, 2.5), (1.52, 2.5), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.88, 3.0), (1.52, 3.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Segni delle 5 sezioni S_1^+, S_2^+, S_3^-, S_4^-, S_5^-
  line((-0.18, 0.75), (0.18, 0.8), stroke: (paint: red, thickness: 0.6pt))
  line((0.62, 1.32), (0.67, 1.68), stroke: (paint: red, thickness: 0.6pt))
  line((1.32, 0.75), (1.68, 0.8), stroke: (paint: red, thickness: 0.6pt))
  line((2.22, 1.32), (2.27, 1.68), stroke: (paint: red, thickness: 0.6pt))
  line((1.32, 2.35), (1.68, 2.4), stroke: (paint: red, thickness: 0.6pt))

  // Etichette (con text(size: 7pt))
  content((0.22, 0.68), text(size: 7pt, fill: red)[$S_1^+$], anchor: "west")
  content((0.65, 1.78), text(size: 7pt, fill: red)[$S_2^+$], anchor: "south")
  content((1.72, 0.68), text(size: 7pt, fill: red)[$S_3^-$], anchor: "west")
  content((2.3, 1.25), text(size: 7pt, fill: red)[$S_4^-$], anchor: "north")
  content((1.28, 2.45), text(size: 7pt, fill: red)[$S_5^-$], anchor: "east")
  content((-0.28, 0.12), text(size: 7pt)[$H_A$], anchor: "south")
  content((1.62, 3.4), text(size: 7pt)[$V_E$], anchor: "west")
  content((3.3, 1.62), text(size: 7pt)[$H_D$], anchor: "south")
  content((3.1, 1.15), text(size: 7pt)[$V_D$], anchor: "west")
})
