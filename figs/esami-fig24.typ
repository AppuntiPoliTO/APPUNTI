// Figura estratta da esami.typ (riga 1767) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Struttura
  line((0, 0), (0, 1.4), (1.31, 1.4), stroke: 1pt)
  line((1.4, 0), (1.4, 2.8), stroke: 1pt)
  line((1.4, 1.4), (2.8, 1.4), stroke: 1pt)
  arc((1.35, 1.4), start: 90deg, stop: 270deg, radius: 0.06, anchor: "origin", stroke: 1pt)

  // Segno X su BC (T = 0)
  line((0.62, 1.32), (0.78, 1.48), stroke: (paint: red, thickness: 0.6pt))
  line((0.62, 1.48), (0.78, 1.32), stroke: (paint: red, thickness: 0.6pt))

  // Rettangolo T = -1000 N su AB
  rect((0, 0), (0.35, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Rettangolo T = -1000 N su FC
  rect((1.05, 0), (1.4, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Rettangolo T = +1500 N su CD
  rect((1.4, 1.4), (2.8, 1.88), stroke: (paint: red, thickness: 0.6pt))

  // Triangolo T su CE (da 0 in E a -1000 N in C)
  line((1.4, 2.8), (1.75, 1.4), (1.4, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Etichette (con text(size: 7pt))
  content((0.42, 0.7), text(size: 7pt, fill: red)[$-1000 "N"$], anchor: "west")
  content((1.0, 0.45), text(size: 7pt, fill: red)[$-1000 "N"$], anchor: "east")
  content((2.1, 1.95), text(size: 7pt, fill: red)[$+1500 "N"$], anchor: "south")
  content((1.65, 1.28), text(size: 7pt, fill: red)[$-1000 "N"$], anchor: "north")
  content((0.18, 0.7), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.22, 0.7), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((2.1, 1.64), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((1.52, 1.75), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((-0.1, 0), text(size: 7pt)[$A$], anchor: "east")
  content((0, 1.5), text(size: 7pt)[$B$], anchor: "south")
  content((1.3, 1.28), text(size: 7pt)[$C$], anchor: "north")
  content((2.85, 1.5), text(size: 7pt)[$D$], anchor: "west")
  content((1.5, 2.8), text(size: 7pt)[$E$], anchor: "west")
  content((1.5, 0.05), text(size: 7pt)[$F$], anchor: "west")
  content((2.2, 2.4), text(size: 7pt)[*TAGLIO (T)*], anchor: "west")
})
