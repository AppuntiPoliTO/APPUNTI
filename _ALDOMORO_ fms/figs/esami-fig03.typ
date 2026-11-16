// Figura estratta da esami.typ (riga 227) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.3cm, {
  import draw: *

  // Contorno della sezione a T
  line((-0.17, 0), (0.17, 0), (0.17, 3.66), (2.0, 3.66), (2.0, 4.0), (-2.0, 4.0), (-2.0, 3.66), (-0.17, 3.66), close: true, stroke: 1pt)

  // Tratteggio leggero nell'ala superiore
  line((-1.8, 3.72), (-1.65, 3.94), stroke: 0.6pt)
  line((-1.4, 3.72), (-1.25, 3.94), stroke: 0.6pt)
  line((-1.0, 3.72), (-0.85, 3.94), stroke: 0.6pt)
  line((-0.6, 3.72), (-0.45, 3.94), stroke: 0.6pt)
  line((-0.2, 3.72), (-0.05, 3.94), stroke: 0.6pt)
  line((0.2, 3.72), (0.35, 3.94), stroke: 0.6pt)
  line((0.6, 3.72), (0.75, 3.94), stroke: 0.6pt)
  line((1.0, 3.72), (1.15, 3.94), stroke: 0.6pt)
  line((1.4, 3.72), (1.55, 3.94), stroke: 0.6pt)
  line((1.75, 3.72), (1.9, 3.94), stroke: 0.6pt)

  // Assi di riferimento e baricentrici
  line((-2.2, 0), (2.2, 0), stroke: (dash: "dashed", thickness: 0.6pt), mark: (end: ">"))
  line((-2.2, 2.88), (2.2, 2.88), stroke: (dash: "dashed", thickness: 0.6pt), mark: (end: ">"))
  line((0, -0.3), (0, 4.5), stroke: (dash: "dashed", thickness: 0.6pt), mark: (end: ">"))

  // Baricentro G
  circle((0, 2.88), radius: 0.05, fill: black, stroke: none)

  // Quote
  line((-2.0, 4.55), (-2.0, 4.85), stroke: 0.6pt)
  line((2.0, 4.55), (2.0, 4.85), stroke: 0.6pt)
  line((-2.0, 4.7), (2.0, 4.7), stroke: 0.6pt)

  line((2.45, 0), (2.75, 0), stroke: 0.6pt)
  line((2.45, 4.0), (2.75, 4.0), stroke: 0.6pt)
  line((2.6, 0), (2.6, 4.0), stroke: 0.6pt)

  line((-1.35, 0), (-1.05, 0), stroke: 0.6pt)
  line((-1.35, 2.88), (-1.05, 2.88), stroke: 0.6pt)
  line((-1.2, 0), (-1.2, 2.88), stroke: 0.6pt)

  line((-0.55, 1.6), (-0.17, 1.6), stroke: 0.6pt, mark: (end: ">"))
  line((0.55, 1.6), (0.17, 1.6), stroke: 0.6pt, mark: (end: ">"))
  line((-0.17, 1.6), (0.17, 1.6), stroke: 0.6pt)

  // Etichette
  content((0, 4.95), text(size: 7pt)[$b = 120 "mm"$], anchor: "south")
  content((0.12, 4.4), text(size: 7pt)[$y_G$], anchor: "west")
  content((-0.12, 2.68), text(size: 7pt)[$G$], anchor: "east")
  content((0.62, 1.6), text(size: 7pt)[$10 "mm" = s$], anchor: "west")
  content((2.15, 2.65), text(size: 7pt)[$x_G$], anchor: "north")
  content((2.75, 2.0), text(size: 7pt)[$h = 120 "mm"$], anchor: "west")
  content((2.15, -0.15), text(size: 7pt)[$x$], anchor: "north")
  content((-1.3, 1.44), text(size: 7pt)[$y_G$], anchor: "east")
  content((0.25, -0.18), text(size: 7pt)[$*$], anchor: "west")
})
