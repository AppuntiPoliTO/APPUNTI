// Figura estratta da esami.typ (riga 3387) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.1cm, {
  import draw: *

  // Telaio A-B-C-D-E
  line((0, 0), (0, 2.7), (1.8, 2.7), (1.8, 0.9), stroke: 1pt)
  circle((0, 1.8), radius: 0.06, fill: white, stroke: 1pt)

  // Risultanti qL e qL/2 e forza F
  line((-0.55, 0.9), (-0.02, 0.9), stroke: 0.8pt, mark: (end: ">"))
  line((-0.55, 2.25), (-0.02, 2.25), stroke: 0.8pt, mark: (end: ">"))
  line((1.8, 2.7), (1.8, 3.25), stroke: 0.8pt, mark: (end: ">"))

  // Reazioni vincolari H_A, V_A, H_E, V_E
  line((-0.45, 0), (-0.04, 0), stroke: 0.8pt, mark: (end: ">"))
  line((0, -0.45), (0, -0.04), stroke: 0.8pt, mark: (end: ">"))
  line((1.35, 0.9), (1.76, 0.9), stroke: 0.8pt, mark: (end: ">"))
  line((1.8, 0.45), (1.8, 0.86), stroke: 0.8pt, mark: (end: ">"))

  // Quote interne L/2 e L
  line((0, 0.9), (1.8, 0.9), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.25, 0), (0.25, 0.9), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((0.95, 0.9), (0.95, 2.7), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Terna convenzione segni in basso a sinistra
  line((-0.8, -0.8), (-0.3, -0.8), stroke: 0.6pt, mark: (end: ">"))
  line((-0.8, -0.8), (-0.8, -0.3), stroke: 0.6pt, mark: (end: ">"))
  arc((-0.8, -0.8), start: 10deg, stop: 80deg, radius: 0.3, anchor: "origin", stroke: 0.6pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((-0.6, 0.9), text(size: 7pt)[$q L$], anchor: "east")
  content((-0.6, 2.25), text(size: 7pt)[$q L / 2$], anchor: "east")
  content((-0.12, 1.8), text(size: 7pt)[$B$], anchor: "east")
  content((0, 2.82), text(size: 7pt)[$C$], anchor: "south")
  content((1.9, 2.78), text(size: 7pt)[$D$], anchor: "west")
  content((1.9, 3.2), text(size: 7pt)[$F$], anchor: "west")
  content((1.9, 0.9), text(size: 7pt)[$E$], anchor: "west")
  content((-0.3, -0.15), text(size: 7pt)[$H_A$], anchor: "north")
  content((0.1, -0.35), text(size: 7pt)[$V_A$], anchor: "west")
  content((1.45, 0.78), text(size: 7pt)[$H_E$], anchor: "north")
  content((1.9, 0.55), text(size: 7pt)[$V_E$], anchor: "west")
  content((0.35, 0.45), text(size: 7pt)[$L / 2$], anchor: "west")
  content((0.85, 1.8), text(size: 7pt)[$L$], anchor: "east")
  content((-0.25, -0.9), text(size: 7pt)[$x$], anchor: "north")
  content((-0.92, -0.35), text(size: 7pt)[$y$], anchor: "east")
  content((-0.6, -0.6), text(size: 7pt)[$+$], anchor: "south")
})
