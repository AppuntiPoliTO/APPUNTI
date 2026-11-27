// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  circle((0, 0), radius: 1.5, fill: rgb("#f3f4f6"), stroke: none)
  line((0.3388, -1.4612), (1.4612, -0.3388), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((0, -1.5), (1.5, 0), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-0.2746, -1.4746), (1.4746, 0.2746), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-0.5105, -1.4105), (1.4105, 0.5105), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-0.7173, -1.3173), (1.3173, 0.7173), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-0.9, -1.2), (1.2, 0.9), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.0607, -1.0607), (1.0607, 1.0607), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.2, -0.9), (0.9, 1.2), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.3173, -0.7173), (0.7173, 1.3173), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.4105, -0.5105), (0.5105, 1.4105), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.4746, -0.2746), (0.2746, 1.4746), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.5, 0), (0, 1.5), stroke: (paint: rgb("#555555"), thickness: 0.45pt))
  line((-1.4612, 0.3388), (-0.3388, 1.4612), stroke: (paint: rgb("#555555"), thickness: 0.45pt))

  rect((-0.35, 0.65), (0.35, 1.95), fill: white, stroke: none)
  line((-0.35, 0.85), (-0.15, 0.65), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.35, 1.05), (0.05, 0.65), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.35, 1.25), (0.25, 0.65), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.35, 1.45), (0.35, 0.75), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.35, 1.65), (0.35, 0.95), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.35, 1.85), (0.35, 1.15), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.25, 1.95), (0.35, 1.35), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((-0.05, 1.95), (0.35, 1.55), stroke: (paint: rgb("#333333"), thickness: 0.5pt))
  line((0.15, 1.95), (0.35, 1.75), stroke: (paint: rgb("#333333"), thickness: 0.5pt))

  arc((0, 0), start: 103.495deg, stop: 436.505deg, radius: 1.5, anchor: "origin", stroke: 1pt)
  rect((-0.35, 0.65), (0.35, 1.95), stroke: 1pt)
  line((-0.35, 1.95), (-0.35, 2.20), (0.35, 2.20), (0.35, 1.95), stroke: 0.9pt)

  line((-2.1, 0), (2.1, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((0, -1.85), (0, 2.52), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  line((-0.82, 1.54), (-0.82, 1.87), stroke: 0.6pt)
  line((-0.82, 1.54), (-0.37, 1.54), mark: (end: ">", fill: black, scale: 0.35), stroke: 0.6pt)
  line((-0.82, 1.65), (-0.37, 1.65), mark: (end: ">", fill: black, scale: 0.35), stroke: 0.6pt)
  line((-0.82, 1.76), (-0.37, 1.76), mark: (end: ">", fill: black, scale: 0.35), stroke: 0.6pt)
  line((-0.82, 1.87), (-0.37, 1.87), mark: (end: ">", fill: black, scale: 0.35), stroke: 0.6pt)
  content((-0.62, 1.96), text(size: 8.5pt)[$p$], anchor: "south")

  line((-2.5, 1.705), (-0.92, 1.705), mark: (end: ">", fill: red, scale: 0.7), stroke: (paint: red, thickness: 1.1pt))
  content((-1.75, 1.82), text(size: 9.5pt)[$F$], anchor: "south")

  line((-0.35, 2.20), (-0.35, 2.75), stroke: 0.55pt)
  line((0.35, 2.20), (0.35, 2.75), stroke: 0.55pt)
  line((-0.35, 2.60), (0.35, 2.60), mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.55pt)
  content((0, 2.70), text(size: 8.5pt)[$b$], anchor: "south")

  line((0.35, 1.95), (2.45, 1.95), stroke: 0.55pt)
  line((0.35, 1.4586), (2.45, 1.4586), stroke: 0.55pt)
  line((1.3519, 0.65), (2.45, 0.65), stroke: 0.55pt)
  line((2.20, 2.50), (2.20, 1.95), mark: (end: ">", fill: black, scale: 0.5), stroke: 0.55pt)
  content((2.32, 2.22), text(size: 8.5pt)[$t_2$], anchor: "west")
  line((2.20, 0.10), (2.20, 0.65), mark: (end: ">", fill: black, scale: 0.5), stroke: 0.55pt)
  content((2.32, 0.35), text(size: 8.5pt)[$t_1$], anchor: "west")

  line((-1.5, 0), (-1.5, -2.35), stroke: 0.55pt)
  line((1.5, 0), (1.5, -2.35), stroke: 0.55pt)
  line((-1.5, -2.20), (1.5, -2.20), mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.55pt)
  content((0, -2.10), text(size: 9pt)[$d$], anchor: "south")
})
