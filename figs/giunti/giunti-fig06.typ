// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.95cm, {
  import draw: *

  line((-5.7, 0), (5.7, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(110)))
  line((-3.5, -1.32), (-3.5, 1.32), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(110)))
  line((3.5, -1.32), (3.5, 1.32), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(110)))

  line((-5.55, 0.34), (-4.55, 0.34), (-4.25, 0.98), (-3.12, 0.98), (-3.12, 0.64), (-4.06, 0.64), (-4.06, -0.64), (-3.12, -0.64), (-3.12, -0.98), (-4.25, -0.98), (-4.55, -0.34), (-5.55, -0.34), close: true, fill: luma(232), stroke: 0.85pt)
  line((-4.55, -0.34), (-4.55, 0.34), stroke: 0.55pt)
  rect((-3.64, -0.64), (-3.36, 0.64), fill: luma(205), stroke: 0.75pt)
  rect((-3.72, 0.64), (-3.28, 1.02), fill: luma(185), stroke: 0.75pt)
  rect((-3.72, -1.02), (-3.28, -0.64), fill: luma(185), stroke: 0.75pt)

  line((5.55, 0.34), (4.55, 0.34), (4.25, 0.98), (3.12, 0.98), (3.12, 0.64), (4.06, 0.64), (4.06, -0.64), (3.12, -0.64), (3.12, -0.98), (4.25, -0.98), (4.55, -0.34), (5.55, -0.34), close: true, fill: luma(232), stroke: 0.85pt)
  line((4.55, -0.34), (4.55, 0.34), stroke: 0.55pt)
  rect((3.36, -0.64), (3.64, 0.64), fill: luma(205), stroke: 0.75pt)
  rect((3.28, 0.64), (3.72, 1.02), fill: luma(185), stroke: 0.75pt)
  rect((3.28, -1.02), (3.72, -0.64), fill: luma(185), stroke: 0.75pt)

  rect((-2.05, -0.34), (1.15, 0.34), fill: white, stroke: none)
  line((-2.05, 0.25), (-1.15, 0.25), stroke: (paint: luma(180), thickness: 0.45pt))
  line((-2.05, 0.14), (-1.15, 0.14), stroke: (paint: luma(180), thickness: 0.45pt))
  line((-2.05, -0.14), (-1.15, -0.14), stroke: (paint: luma(180), thickness: 0.45pt))
  line((-2.05, -0.25), (-1.15, -0.25), stroke: (paint: luma(180), thickness: 0.45pt))
  line((-2.05, -0.34), (-2.05, 0.34), stroke: 0.75pt)

  circle((-3.5, 0), radius: 0.44, fill: rgb("#fde68a"), stroke: 0.85pt)
  line((-3.5, 0.44), (-3.05, 0.40), (-2.42, 0.56), (-2.05, 0.56), (-2.05, -0.56), (-2.42, -0.56), (-3.05, -0.40), (-3.5, -0.44), close: true, fill: rgb("#fde68a"), stroke: none)
  line((-3.5, 0.44), (-3.05, 0.40), (-2.42, 0.56), (-2.05, 0.56), stroke: 0.85pt)
  line((-3.5, -0.44), (-3.05, -0.40), (-2.42, -0.56), (-2.05, -0.56), stroke: 0.85pt)

  rect((-2.05, 0.34), (1.15, 0.56), fill: rgb("#fde68a"), stroke: 0.85pt)
  rect((-2.05, -0.56), (1.15, -0.34), fill: rgb("#fde68a"), stroke: 0.85pt)

  line((-1.95, 0.34), (-1.73, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.67, 0.34), (-1.45, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.39, 0.34), (-1.17, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.11, 0.34), (-0.89, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.83, 0.34), (-0.61, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.55, 0.34), (-0.33, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.27, 0.34), (-0.05, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.01, 0.34), (0.23, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.29, 0.34), (0.51, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.57, 0.34), (0.79, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.85, 0.34), (1.07, 0.56), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))

  line((-1.95, -0.56), (-1.73, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.67, -0.56), (-1.45, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.39, -0.56), (-1.17, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-1.11, -0.56), (-0.89, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.83, -0.56), (-0.61, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.55, -0.56), (-0.33, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((-0.27, -0.56), (-0.05, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.01, -0.56), (0.23, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.29, -0.56), (0.51, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.57, -0.56), (0.79, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))
  line((0.85, -0.56), (1.07, -0.34), stroke: (paint: rgb("#92400e"), thickness: 0.4pt))

  rect((1.15, 0.34), (1.28, 0.56), fill: luma(130), stroke: 0.75pt)
  rect((1.15, -0.56), (1.28, -0.34), fill: luma(130), stroke: 0.75pt)

  circle((-3.5, 0), radius: 0.24, fill: luma(205), stroke: 0.75pt)
  circle((-3.5, 0), radius: 0.10, fill: white, stroke: 0.55pt)

  circle((3.5, 0), radius: 0.44, fill: rgb("#bae6fd"), stroke: 0.85pt)
  line((-1.15, 0.27), (-1.05, 0.34), (2.42, 0.34), (3.05, 0.40), (3.5, 0.44), (3.5, -0.44), (3.05, -0.40), (2.42, -0.34), (-1.05, -0.34), (-1.15, -0.27), close: true, fill: rgb("#bae6fd"), stroke: none)
  line((3.5, 0.44), (3.05, 0.40), (2.42, 0.34), (-1.05, 0.34), (-1.15, 0.27), (-1.15, -0.27), (-1.05, -0.34), (2.42, -0.34), (3.05, -0.40), (3.5, -0.44), stroke: 0.85pt)

  line((-1.15, 0.25), (1.85, 0.25), stroke: (paint: rgb("#0369a1"), thickness: 0.55pt))
  line((-1.15, 0.15), (1.85, 0.15), stroke: (paint: rgb("#0369a1"), thickness: 0.55pt))
  line((-1.15, 0.05), (1.85, 0.05), stroke: (paint: rgb("#0369a1"), thickness: 0.5pt))
  line((-1.15, -0.05), (1.85, -0.05), stroke: (paint: rgb("#0369a1"), thickness: 0.5pt))
  line((-1.15, -0.15), (1.85, -0.15), stroke: (paint: rgb("#0369a1"), thickness: 0.55pt))
  line((-1.15, -0.25), (1.85, -0.25), stroke: (paint: rgb("#0369a1"), thickness: 0.55pt))
  line((1.85, -0.34), (1.85, 0.34), stroke: (paint: rgb("#0369a1"), thickness: 0.65pt))

  circle((3.5, 0), radius: 0.24, fill: luma(205), stroke: 0.75pt)
  circle((3.5, 0), radius: 0.10, fill: white, stroke: 0.55pt)

  line((-0.75, 0.90), (0.75, 0.90), mark: (start: ">", end: ">"), stroke: (paint: rgb("#1d4ed8"), thickness: 0.9pt))
  content((0, 1.02), text(size: 7pt, fill: rgb("#1d4ed8"))[scorrimento assiale], anchor: "south")

  content((-3.5, 1.44), text(size: 7.5pt, weight: "bold")[Giunto cardanico 1], anchor: "south")
  content((3.5, 1.44), text(size: 7.5pt, weight: "bold")[Giunto cardanico 2], anchor: "south")

  content((-5.08, -0.52), text(size: 7pt)[Albero\ motore], anchor: "north")
  content((5.08, -0.52), text(size: 7pt)[Albero\ condotto], anchor: "north")

  content((-3.5, -1.42), text(size: 7pt)[Forcelle e\ crociera], anchor: "north")
  content((3.5, -1.42), text(size: 7pt)[Forcelle e\ crociera], anchor: "north")

  line((-1.15, -0.56), (-1.15, -1.32), stroke: (paint: luma(100), thickness: 0.5pt))
  content((-1.15, -1.42), text(size: 7pt)[Manicotto femmina\ (in sezione)], anchor: "north")

  line((1.45, -0.34), (1.45, -1.32), stroke: (paint: luma(100), thickness: 0.5pt))
  content((1.45, -1.42), text(size: 7pt)[Albero maschio\ scanalato], anchor: "north")
})
