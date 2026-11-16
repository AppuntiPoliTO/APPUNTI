// Figura estratta da esami-vecchi-nonsicuri.typ (riga 1032) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Struttura di base
  line((1.0, 0.8), (1.0, 2.3), stroke: 1pt)
  line((1.0, 1.55), (1.5, 1.55), stroke: 1pt)
  line((1.0, 2.3), (6.2, 2.3), stroke: 1pt)
  line((4.9, 0.8), (4.9, 2.3), stroke: 1pt)
  circle((3.6, 2.3), radius: 0.07, fill: white, stroke: 1pt)

  // Cerniere in A e H
  circle((1.0, 0.74), radius: 0.05, fill: white, stroke: 1pt)
  line((1.0, 0.69), (0.9, 0.55), (1.1, 0.55), close: true, stroke: 0.8pt)
  circle((4.9, 0.74), radius: 0.05, fill: white, stroke: 1pt)
  line((4.9, 0.69), (4.8, 0.55), (5.0, 0.55), close: true, stroke: 0.8pt)

  // Diagramma M (in rosso)
  // Montante sinistro A-B-D (fibre tese a sinistra: da 0 in A a -417 in B a -1333 in D)
  line((1.0, 0.8), (0.80, 1.55), (0.35, 2.3), (1.0, 2.3), stroke: (paint: red, thickness: 0.9pt))
  line((0.80, 1.55), (1.0, 1.55), stroke: (paint: red, thickness: 0.7pt))

  // Traverso D-E-F (parabola da -1333 in D a 0 in E a -833 in F)
  line((1.0, 2.3), (1.0, 2.95), stroke: (paint: red, thickness: 0.9pt))
  bezier((1.0, 2.95), (4.9, 2.72), (2.30, 2.02), (3.60, 1.98), stroke: (paint: red, thickness: 0.9pt))
  line((4.9, 2.72), (4.9, 2.3), stroke: (paint: red, thickness: 0.9pt))

  // Sbalzo F-G (+1000 Nm sotto)
  line((4.9, 1.85), (5.8, 1.85), (6.2, 2.3), stroke: (paint: red, thickness: 0.9pt))

  // Montante destro H-F (da 0 in H a -1833 Nm a destra in F)
  line((4.9, 0.8), (5.75, 2.3), (4.9, 2.3), stroke: (paint: red, thickness: 0.9pt))

  // Croce di nullo su BC
  line((1.20, 1.48), (1.33, 1.62), stroke: (paint: red, thickness: 0.6pt))
  line((1.20, 1.62), (1.33, 1.48), stroke: (paint: red, thickness: 0.6pt))

  // Etichette
  content((3.6, 3.25), text(size: 7pt)[*MOMENTO FLETTENTE $M$*], anchor: "south")
  content((0.92, 2.85), text(size: 7pt, fill: red)[$-1333 "Nm"$], anchor: "east")
  content((0.75, 2.05), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((1.05, 1.32), text(size: 7pt, fill: red)[$-417 "Nm"$], anchor: "west")
  content((1.35, 2.52), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((4.45, 2.48), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((4.95, 2.75), text(size: 7pt, fill: red)[$-833 "Nm"$], anchor: "west")
  content((5.78, 2.42), text(size: 7pt, fill: red)[$-1833 "Nm"$], anchor: "south")
  content((5.45, 2.08), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((6.10, 2.05), text(size: 7pt, fill: red)[$1000 "Nm"$], anchor: "west")
  content((5.15, 1.65), text(size: 7pt, fill: red)[$minus$], anchor: "center")
  content((0.88, 0.8), text(size: 7pt, fill: red)[A], anchor: "east")
  content((1.05, 1.48), text(size: 7pt, fill: red)[B], anchor: "north-west")
  content((1.5, 1.45), text(size: 7pt, fill: red)[C], anchor: "north")
  content((3.6, 2.42), text(size: 7pt, fill: red)[E], anchor: "south")
  content((4.98, 2.40), text(size: 7pt, fill: red)[F], anchor: "south-west")
  content((6.25, 2.3), text(size: 7pt, fill: red)[G], anchor: "west")
  content((5.02, 0.85), text(size: 7pt, fill: red)[H], anchor: "west")
})
