// Figura estratta da esami.typ (riga 1842) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.2cm, {
  import draw: *

  // Struttura
  line((0, 0), (0, 1.4), (1.31, 1.4), stroke: 1pt)
  line((1.4, 0), (1.4, 2.8), stroke: 1pt)
  line((1.4, 1.4), (2.8, 1.4), stroke: 1pt)
  arc((1.35, 1.4), start: 90deg, stop: 270deg, radius: 0.06, anchor: "origin", stroke: 1pt)

  // Triangolo M_f su AB (da 0 in A a -1000 Nm in B)
  line((0, 0), (-0.42, 1.4), (0, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Rettangolo M_f su BC (-1000 Nm)
  rect((0, 1.4), (1.35, 1.82), stroke: (paint: red, thickness: 0.6pt))

  // Triangolo M_f su FC (da 0 in F a +1000 Nm in C)
  line((1.4, 0), (0.98, 1.4), (1.4, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Parabola M_f su CE (da 0 in E a +500 Nm in C)
  bezier((1.4, 2.8), (1.65, 1.4), (1.4, 2.2), (1.5, 1.75), stroke: (paint: red, thickness: 0.6pt))
  line((1.4, 1.4), (1.65, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Triangolo M_f su CD (da -1500 Nm in C a 0 in D)
  line((1.4, 1.4), (1.4, 2.15), (2.8, 1.4), stroke: (paint: red, thickness: 0.6pt))

  // Etichette (con text(size: 7pt))
  content((-0.45, 1.25), text(size: 7pt, fill: red)[$-1000 "Nm"$], anchor: "east")
  content((0.65, 1.9), text(size: 7pt, fill: red)[$-1000 "Nm"$], anchor: "south")
  content((0.95, 0.85), text(size: 7pt, fill: red)[$+1000 "Nm"$], anchor: "east")
  content((1.8, 1.2), text(size: 7pt, fill: red)[$+500 "Nm"$], anchor: "north")
  content((1.65, 2.3), text(size: 7pt, fill: red)[$-1500 "Nm"$], anchor: "west")
  content((-0.18, 1.15), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((0.65, 1.6), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.22, 1.15), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((1.5, 1.55), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((1.8, 1.65), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((0.1, 0.05), text(size: 7pt)[$A$], anchor: "west")
  content((-0.12, 1.5), text(size: 7pt)[$B$], anchor: "south")
  content((1.3, 1.25), text(size: 7pt)[$C$], anchor: "north")
  content((2.85, 1.5), text(size: 7pt)[$D$], anchor: "west")
  content((1.3, 2.8), text(size: 7pt)[$E$], anchor: "east")
  content((1.5, 0.05), text(size: 7pt)[$F$], anchor: "west")
})
