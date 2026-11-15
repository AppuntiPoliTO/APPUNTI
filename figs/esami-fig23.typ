// Figura estratta da esami.typ (riga 1715) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Struttura
  line((0, 0), (0, 1.4), (1.31, 1.4), stroke: 1pt)
  line((1.4, 0), (1.4, 2.8), stroke: 1pt)
  line((1.4, 1.4), (2.8, 1.4), stroke: 1pt)
  arc((1.35, 1.4), start: 90deg, stop: 270deg, radius: 0.06, anchor: "origin", stroke: 1pt)

  // Segni X su AB e FC (N = 0)
  line((-0.08, 0.62), (0.08, 0.78), stroke: (paint: red, thickness: 0.6pt))
  line((-0.08, 0.78), (0.08, 0.62), stroke: (paint: red, thickness: 0.6pt))
  line((1.32, 0.62), (1.48, 0.78), stroke: (paint: red, thickness: 0.6pt))
  line((1.32, 0.78), (1.48, 0.62), stroke: (paint: red, thickness: 0.6pt))

  // Rettangoli N = -2000 N su BC e CD
  rect((0, 1.0), (1.4, 1.4), stroke: (paint: red, thickness: 0.6pt))
  rect((1.4, 1.0), (2.8, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Rettangolo N = +1500 N su CE
  rect((1.05, 1.4), (1.4, 2.8), stroke: (paint: red, thickness: 0.6pt))

  // Etichette (con text(size: 7pt))
  content((0.7, 0.92), text(size: 7pt, fill: red)[$-2000 "N"$], anchor: "north")
  content((2.1, 0.92), text(size: 7pt, fill: red)[$-2000 "N"$], anchor: "north")
  content((0.98, 2.1), text(size: 7pt, fill: red)[$+1500 "N"$], anchor: "east")
  content((0.7, 1.2), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((2.1, 1.2), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.22, 2.1), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((0.1, 0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0, 1.5), text(size: 7pt)[$B$], anchor: "south")
  content((1.3, 1.28), text(size: 7pt)[$C$], anchor: "north")
  content((2.8, 1.5), text(size: 7pt)[$D$], anchor: "south")
  content((1.5, 2.8), text(size: 7pt)[$E$], anchor: "west")
  content((1.5, 0.05), text(size: 7pt)[$F$], anchor: "west")
  content((2.2, 2.2), text(size: 7pt, fill: red)[*SFORZO NORMALE (N)*], anchor: "west")
})
