#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.56, 2.341), (0.92, 2.323), (0.92, 3.823), (0.56, 3.841), close: true, fill: yellow.transparentize(20%), stroke: none)

  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.388), stroke: 1pt)
  line((3.344, 5.372), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  line((0.308, 2.354), (0.308, 3.854), (0.704, 4.052), (1.188, 3.810), stroke: 0.9pt)
  line((0.308, 3.854), (1.188, 3.810), stroke: 0.9pt)
  line((0.308, 2.354), (1.188, 2.310), stroke: 0.9pt)

  line((1.188, 2.310), (1.188, 3.810), (5.412, 5.922), (5.412, 4.422), close: true, stroke: 1pt)
  line((0.704, 4.052), (4.928, 6.164), (5.412, 5.922), stroke: 1pt)

  line((0.74, 3.74), (0.74, 3.12), mark: (end: ">", fill: green.darken(35%)), stroke: (paint: green.darken(35%), thickness: 1pt))
  line((0.74, 3.04), (0.74, 2.42), mark: (end: ">", fill: green.darken(35%)), stroke: (paint: green.darken(35%), thickness: 1pt))
  content((-0.33, 2.95), text(size: 12pt, fill: green.darken(35%))[$f_parallel$], anchor: "center")

  line((0.92, 2.323), (0.92, 3.823), stroke: (paint: red, thickness: 0.75pt))
  line((0.28, 2.003), (1.56, 4.143), stroke: (paint: red, thickness: 0.75pt))
  line((0.92, 3.823), (1.56, 4.143), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((0.92, 3.448), (1.24, 3.608), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((0.92, 2.698), (0.60, 2.538), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))
  line((0.92, 2.323), (0.28, 2.003), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.9pt))

  content((1.42, 4.52), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp "max")$], anchor: "south-east")
  content((1.65, 3.15), text(size: 12pt, fill: red, weight: "bold")[$n_perp$], anchor: "west")

  line((2.45, 1.35), (0.92, 2.85), mark: (end: ">", fill: black), stroke: 0.6pt)
  content((2.45, 1.25), text(size: 10.5pt, weight: "bold")[sezione di gola ribaltata], anchor: "north-west")

  line((4.928, 7.45), (4.928, 6.164), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.95), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  line((5.05, 4.241), (5.05, 5.741), mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((4.92, 4.99), text(size: 11.5pt, weight: "bold")[$h$], anchor: "east")

  content((1.65, 6.20), text(size: 11.5pt, weight: "bold")[supporto], anchor: "center")
})
