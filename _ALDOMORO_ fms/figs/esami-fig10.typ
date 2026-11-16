// Figura estratta da esami.typ (riga 773) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Telaio di riferimento
  line((0, 0), (0, 2.0), (3.6, 2.0), (3.6, 0), stroke: 0.6pt)
  circle((1.8, 2.0), radius: 0.06, fill: white, stroke: 0.6pt)

  // Segno X su AB (T = 0)
  line((-0.12, 0.88), (0.12, 1.12), stroke: 1pt)
  line((-0.12, 1.12), (0.12, 0.88), stroke: 1pt)

  // Diagramma T su BD: da (0, 2.45) a (0.9, 2.0) a (1.8, 1.55) a (2.7, 1.1)
  line((0, 2.0), (0, 2.45), (2.7, 1.1), (2.7, 2.0), stroke: 1pt)
  line((1.8, 2.0), (1.8, 1.55), stroke: 1pt)
  line((0.2, 2.0), (0.2, 2.35), stroke: 0.6pt)
  line((0.4, 2.0), (0.4, 2.25), stroke: 0.6pt)
  line((0.6, 2.0), (0.6, 2.15), stroke: 0.6pt)
  line((1.2, 2.0), (1.2, 1.85), stroke: 0.6pt)
  line((1.5, 2.0), (1.5, 1.7), stroke: 0.6pt)
  line((2.1, 2.0), (2.1, 1.4), stroke: 0.6pt)
  line((2.4, 2.0), (2.4, 1.25), stroke: 0.6pt)

  // Diagramma T su DE: da (2.7, 2.8) a (3.6, 2.35)
  line((2.7, 2.0), (2.7, 2.8), (3.6, 2.35), (3.6, 2.0), stroke: 1pt)
  line((2.9, 2.0), (2.9, 2.7), stroke: 0.6pt)
  line((3.15, 2.0), (3.15, 2.57), stroke: 0.6pt)
  line((3.4, 2.0), (3.4, 2.45), stroke: 0.6pt)

  // Diagramma T su EF (+500 N)
  rect((3.6, 0), (4.05, 2.0), stroke: 1pt)
  line((3.6, 0.3), (4.05, 0.3), stroke: 0.6pt)
  line((3.6, 0.6), (4.05, 0.6), stroke: 0.6pt)
  line((3.6, 0.9), (4.05, 0.9), stroke: 0.6pt)
  line((3.6, 1.2), (4.05, 1.2), stroke: 0.6pt)
  line((3.6, 1.5), (4.05, 1.5), stroke: 0.6pt)
  line((3.6, 1.8), (4.05, 1.8), stroke: 0.6pt)

  // Etichette (con text(size: 7pt))
  content((0, 2.55), text(size: 7pt)[$4000 "N"$], anchor: "south")
  content((1.75, 1.45), text(size: 7pt)[$-4000 "N"$], anchor: "north")
  content((2.7, 1.0), text(size: 7pt)[$-8000 "N"$], anchor: "north")
  content((2.7, 2.9), text(size: 7pt)[$7000 "N"$], anchor: "south")
  content((3.65, 2.45), text(size: 7pt)[$3000 "N"$], anchor: "south")
  content((4.15, 1.0), text(size: 7pt)[$500 "N"$], anchor: "west")
  content((0.25, 2.12), text(size: 7pt)[$+$], anchor: "center")
  content((1.55, 1.85), text(size: 7pt)[$-$], anchor: "center")
  content((3.15, 2.2), text(size: 7pt)[$+$], anchor: "center")
  content((3.82, 1.05), text(size: 7pt)[$+$], anchor: "center")
  content((0.12, 0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.12, 1.85), text(size: 7pt)[$B$], anchor: "north")
  content((3.48, 0.05), text(size: 7pt)[$F$], anchor: "east")
  content((1.8, 0.65), text(size: 7pt)[*T*], anchor: "center")
})
