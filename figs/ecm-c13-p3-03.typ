#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((0, -2.6), (0.22, 2.6), stroke: 0.9pt)
  line((0, 1.56), (0.22, 1.56), stroke: 0.8pt)
  line((0, -1.56), (0.22, -1.56), stroke: 0.8pt)

  line((0, 1.56), (0.22, 1.78), stroke: 0.5pt)
  line((0, 1.76), (0.22, 1.98), stroke: 0.5pt)
  line((0, 1.96), (0.22, 2.18), stroke: 0.5pt)
  line((0, 2.16), (0.22, 2.38), stroke: 0.5pt)
  line((0, 2.36), (0.22, 2.58), stroke: 0.5pt)

  line((0, -2.60), (0.22, -2.38), stroke: 0.5pt)
  line((0, -2.40), (0.22, -2.18), stroke: 0.5pt)
  line((0, -2.20), (0.22, -1.98), stroke: 0.5pt)
  line((0, -2.00), (0.22, -1.78), stroke: 0.5pt)
  line((0, -1.80), (0.22, -1.58), stroke: 0.5pt)

  line((-0.35, 0), (3.2, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  line((3.120, 1.560), (0.22, 1.560), mark: (end: ">"), stroke: 0.7pt)
  line((2.830, 1.733), (0.22, 1.733), mark: (end: ">"), stroke: 0.7pt)
  line((2.592, 1.907), (0.22, 1.907), mark: (end: ">"), stroke: 0.7pt)
  line((2.395, 2.080), (0.22, 2.080), mark: (end: ">"), stroke: 0.7pt)
  line((2.228, 2.253), (0.22, 2.253), mark: (end: ">"), stroke: 0.7pt)
  line((2.084, 2.427), (0.22, 2.427), mark: (end: ">"), stroke: 0.7pt)
  line((1.960, 2.600), (0.22, 2.600), mark: (end: ">"), stroke: 0.7pt)
  bezier((3.120, 1.560), (1.960, 2.600), (2.475, 1.907), (2.192, 2.253), stroke: 0.85pt)

  line((3.120, -1.560), (0.22, -1.560), mark: (end: ">"), stroke: 0.7pt)
  line((2.830, -1.733), (0.22, -1.733), mark: (end: ">"), stroke: 0.7pt)
  line((2.592, -1.907), (0.22, -1.907), mark: (end: ">"), stroke: 0.7pt)
  line((2.395, -2.080), (0.22, -2.080), mark: (end: ">"), stroke: 0.7pt)
  line((2.228, -2.253), (0.22, -2.253), mark: (end: ">"), stroke: 0.7pt)
  line((2.084, -2.427), (0.22, -2.427), mark: (end: ">"), stroke: 0.7pt)
  line((1.960, -2.600), (0.22, -2.600), mark: (end: ">"), stroke: 0.7pt)
  bezier((3.120, -1.560), (1.960, -2.600), (2.475, -1.907), (2.192, -2.253), stroke: 0.85pt)

  content((1.65, 1.32), text(size: 8.5pt)[$p(r)$], anchor: "north")
})
