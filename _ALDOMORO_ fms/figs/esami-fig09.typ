// Figura estratta da esami.typ (riga 713) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Telaio di riferimento
  line((0, 0), (0, 2.0), (3.6, 2.0), (3.6, 0), stroke: 0.6pt)
  circle((1.8, 2.0), radius: 0.06, fill: white, stroke: 0.6pt)

  // Diagramma N su AB (-4000 N)
  rect((-0.55, 0), (0, 2.0), stroke: 1pt)
  line((-0.55, 0.25), (0, 0.25), stroke: 0.6pt)
  line((-0.55, 0.5), (0, 0.5), stroke: 0.6pt)
  line((-0.55, 0.75), (0, 0.75), stroke: 0.6pt)
  line((-0.55, 1.0), (0, 1.0), stroke: 0.6pt)
  line((-0.55, 1.25), (0, 1.25), stroke: 0.6pt)
  line((-0.55, 1.5), (0, 1.5), stroke: 0.6pt)
  line((-0.55, 1.75), (0, 1.75), stroke: 0.6pt)

  // Diagramma N su BE (-500 N)
  rect((0, 2.0), (3.6, 2.45), stroke: 1pt)
  line((0.3, 2.0), (0.3, 2.45), stroke: 0.6pt)
  line((0.6, 2.0), (0.6, 2.45), stroke: 0.6pt)
  line((0.9, 2.0), (0.9, 2.45), stroke: 0.6pt)
  line((1.2, 2.0), (1.2, 2.45), stroke: 0.6pt)
  line((1.5, 2.0), (1.5, 2.45), stroke: 0.6pt)
  line((1.8, 2.0), (1.8, 2.45), stroke: 1pt)
  line((2.1, 2.0), (2.1, 2.45), stroke: 0.6pt)
  line((2.4, 2.0), (2.4, 2.45), stroke: 0.6pt)
  line((2.7, 2.0), (2.7, 2.45), stroke: 1pt)
  line((3.0, 2.0), (3.0, 2.45), stroke: 0.6pt)
  line((3.3, 2.0), (3.3, 2.45), stroke: 0.6pt)

  // Diagramma N su EF (+3000 N)
  rect((3.6, 0), (4.15, 2.0), stroke: 1pt)
  line((3.6, 0.25), (4.15, 0.25), stroke: 0.6pt)
  line((3.6, 0.5), (4.15, 0.5), stroke: 0.6pt)
  line((3.6, 0.75), (4.15, 0.75), stroke: 0.6pt)
  line((3.6, 1.0), (4.15, 1.0), stroke: 0.6pt)
  line((3.6, 1.25), (4.15, 1.25), stroke: 0.6pt)
  line((3.6, 1.5), (4.15, 1.5), stroke: 0.6pt)
  line((3.6, 1.75), (4.15, 1.75), stroke: 0.6pt)

  // Etichette (con text(size: 7pt))
  content((-0.65, 1.0), text(size: 7pt)[$-4000 "N"$], anchor: "east")
  content((1.8, 2.55), text(size: 7pt)[$-500 "N"$], anchor: "south")
  content((4.25, 1.0), text(size: 7pt)[$3000 "N"$], anchor: "west")
  content((-0.27, 1.12), text(size: 7pt)[$-$], anchor: "center")
  content((0.9, 2.22), text(size: 7pt)[$-$], anchor: "center")
  content((3.88, 1.12), text(size: 7pt)[$+$], anchor: "center")
  content((0.12, 0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.12, 1.85), text(size: 7pt)[$B$], anchor: "north")
  content((1.8, 1.75), text(size: 7pt)[$C$], anchor: "north")
  content((2.7, 1.75), text(size: 7pt)[$D$], anchor: "north")
  content((3.45, 1.85), text(size: 7pt)[$E$], anchor: "north")
  content((3.48, 0.05), text(size: 7pt)[$F$], anchor: "east")
  content((1.8, 0.9), text(size: 7pt)[*N*], anchor: "center")
})
