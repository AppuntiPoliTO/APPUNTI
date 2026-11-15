// Figura estratta da esami-vecchi-nonsicuri.typ (riga 850) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Struttura di base
  line((0.8, 0.8), (0.8, 2.3), stroke: 1pt)
  line((0.8, 1.55), (1.3, 1.55), stroke: 1pt)
  line((0.8, 2.3), (6.0, 2.3), stroke: 1pt)
  line((4.7, 0.8), (4.7, 2.3), stroke: 1pt)
  circle((3.4, 2.3), radius: 0.07, fill: white, stroke: 1pt)

  // Cerniere in A e H
  circle((0.8, 0.74), radius: 0.05, fill: white, stroke: 1pt)
  line((0.8, 0.69), (0.7, 0.55), (0.9, 0.55), close: true, stroke: 0.8pt)
  circle((4.7, 0.74), radius: 0.05, fill: white, stroke: 1pt)
  line((4.7, 0.69), (4.6, 0.55), (4.8, 0.55), close: true, stroke: 0.8pt)

  // Diagramma N (in rosso)
  // Tratto ABD (-1667 N)
  line((0.8, 0.8), (1.25, 0.8), (1.25, 2.3), (0.8, 2.3), stroke: (paint: red, thickness: 0.9pt))
  // Tratto BC (+1000 N)
  line((0.8, 1.80), (1.3, 1.80), (1.3, 1.55), stroke: (paint: red, thickness: 0.9pt))
  // Tratto DEF (-1833 N)
  line((0.8, 1.90), (4.7, 1.90), stroke: (paint: red, thickness: 0.9pt))
  // Tratto HF (-1333 N)
  line((4.35, 2.3), (4.35, 0.8), (4.7, 0.8), stroke: (paint: red, thickness: 0.9pt))
  // Croce di nullo su FG
  line((5.25, 2.22), (5.40, 2.38), stroke: (paint: red, thickness: 0.6pt))
  line((5.25, 2.38), (5.40, 2.22), stroke: (paint: red, thickness: 0.6pt))

  // Etichette
  content((3.4, 2.75), text(size: 7pt)[*SFORZO NORMALE $N$*], anchor: "south")
  content((1.02, 1.15), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.32, 1.10), text(size: 7pt, fill: red)[$-1667 "N"$], anchor: "west")
  content((1.02, 1.68), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((1.35, 1.72), text(size: 7pt, fill: red)[$1000 "N"$], anchor: "west")
  content((2.6, 2.10), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((2.4, 1.82), text(size: 7pt, fill: red)[$-1833 "N"$], anchor: "north")
  content((4.52, 1.35), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((4.30, 1.20), text(size: 7pt, fill: red)[$-1333 "N"$], anchor: "east")
  content((0.68, 0.8), text(size: 7pt, fill: red)[A], anchor: "east")
  content((0.68, 1.55), text(size: 7pt, fill: red)[B], anchor: "east")
  content((0.68, 2.3), text(size: 7pt, fill: red)[D], anchor: "east")
  content((3.4, 2.18), text(size: 7pt, fill: red)[E], anchor: "north")
  content((4.75, 2.42), text(size: 7pt, fill: red)[F], anchor: "south-west")
  content((6.05, 2.3), text(size: 7pt, fill: red)[G], anchor: "west")
  content((4.82, 0.85), text(size: 7pt, fill: red)[H], anchor: "west")
})
