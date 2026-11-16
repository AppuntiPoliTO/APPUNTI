// Figura estratta da esami-vecchi-nonsicuri.typ (riga 932) con LocalTypst
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

  // Diagramma T (in rosso)
  // Tratto AB (-833 N)
  line((0.8, 0.8), (1.10, 0.8), (1.10, 1.55), (0.8, 1.55), stroke: (paint: red, thickness: 0.9pt))
  // Tratto BD (-1833 N)
  line((0.8, 1.55), (1.45, 1.55), (1.45, 2.3), stroke: (paint: red, thickness: 0.9pt))
  // Tratto DEF (+1667 N a -1333 N)
  line((0.8, 2.3), (0.8, 2.95), (4.7, 1.78), (4.7, 2.3), stroke: (paint: red, thickness: 0.9pt))
  // Tratto HF (+1833 N)
  line((4.7, 2.3), (5.35, 2.3), (5.35, 0.8), (4.7, 0.8), stroke: (paint: red, thickness: 0.9pt))
  // Croci di nullo su BC e FG
  line((1.05, 1.48), (1.18, 1.62), stroke: (paint: red, thickness: 0.6pt))
  line((1.05, 1.62), (1.18, 1.48), stroke: (paint: red, thickness: 0.6pt))
  line((5.25, 2.22), (5.40, 2.38), stroke: (paint: red, thickness: 0.6pt))
  line((5.25, 2.38), (5.40, 2.22), stroke: (paint: red, thickness: 0.6pt))

  // Etichette
  content((3.4, 3.15), text(size: 7pt)[*TAGLIO $T$*], anchor: "south")
  content((0.95, 1.15), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.05, 0.68), text(size: 7pt, fill: red)[$-833 "N"$], anchor: "north-west")
  content((1.12, 1.92), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.50, 1.85), text(size: 7pt, fill: red)[$-1833 "N"$], anchor: "west")
  content((0.72, 2.65), text(size: 7pt, fill: red)[$1667 "N"$], anchor: "east")
  content((1.45, 2.55), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((3.95, 2.12), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((4.65, 2.02), text(size: 7pt, fill: red)[$-1333 "N"$], anchor: "east")
  content((5.02, 1.50), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((5.40, 1.55), text(size: 7pt, fill: red)[$1833 "N"$], anchor: "west")
  content((0.68, 0.8), text(size: 7pt, fill: red)[A], anchor: "east")
  content((0.68, 1.55), text(size: 7pt, fill: red)[B], anchor: "east")
  content((0.68, 2.3), text(size: 7pt, fill: red)[D], anchor: "east")
  content((3.4, 2.42), text(size: 7pt, fill: red)[E], anchor: "south")
  content((4.75, 2.42), text(size: 7pt, fill: red)[F], anchor: "south-west")
  content((6.05, 2.3), text(size: 7pt, fill: red)[G], anchor: "west")
  content((4.60, 0.85), text(size: 7pt, fill: red)[H], anchor: "east")
})
