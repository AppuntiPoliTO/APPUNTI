// Figura estratta da esami.typ (riga 1541) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  line((0, 0), (0, 1.2), stroke: 1pt)

  // Forza F e ascissa x
  line((-0.55, 0), (-0.02, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0.35, 0), (0.55, 0), stroke: 0.6pt)
  line((0.45, 0), (0.45, 0.35), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne in S_3^-
  line((0, 1.2), (0, 1.75), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0, 1.2), (0.55, 1.2), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((0, 1.2), start: -30deg, stop: 90deg, radius: 0.3, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  // Etichette
  content((-0.35, -0.15), text(size: 7pt, fill: red)[$F$], anchor: "north")
  content((0.12, -0.05), text(size: 7pt)[$F$], anchor: "west")
  content((0.58, 0.25), text(size: 7pt)[$x$], anchor: "west")
  content((0.12, 1.65), text(size: 7pt, fill: red)[$N$], anchor: "west")
  content((0.5, 1.08), text(size: 7pt, fill: red)[$T$], anchor: "north")
  content((0.32, 1.5), text(size: 7pt, fill: red)[$M_f$], anchor: "west")
  content((-0.12, 0.95), text(size: 7pt, fill: red)[$S_3^-$], anchor: "east")
})
