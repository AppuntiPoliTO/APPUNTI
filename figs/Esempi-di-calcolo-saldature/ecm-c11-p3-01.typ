#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-1.645, -2.250), (-1.645, 3.350), (2.338, 5.650), (2.944, 5.300), stroke: 1pt)
  line((-1.039, -2.600), (-1.645, -2.250), stroke: 1pt)
  line((-1.039, 3.000), (-1.645, 3.350), stroke: 1pt)
  line((-1.039, -2.600), (-1.039, 3.000), (2.944, 5.300), stroke: 1pt)
  line((-1.039, -2.600), (2.944, -0.300), (2.944, 1.250), stroke: 1pt)
  line((2.944, 3.200), (2.944, 5.300), stroke: 1pt)

  line((0, 0.100), (0, 1.500), (0.476, 1.225), (0.476, -0.175), close: true, stroke: 1pt)
  line((0.476, 1.225), (4.633, 3.625), stroke: 1pt)
  line((0.476, -0.175), (4.633, 2.225), stroke: 1pt)
  line((2.252, 2.800), (4.157, 3.900), (4.633, 3.625), (4.633, 2.225), stroke: 1pt)

  line((0, 1.500), (0, 2.050), (0.476, 1.225), stroke: 1pt)
  line((0, 2.050), (2.252, 3.350), (2.728, 2.525), stroke: 1pt)

  line((0, 0.100), (0, -0.450), (0.476, -0.175), stroke: 1pt)
  line((0, -0.450), (2.252, 0.850), (2.728, 1.125), stroke: 1pt)

  line((4.633, 3.200), (5.845, 3.900), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.75, 4.05), text(size: 11.5pt, weight: "bold")[$P$], anchor: "south")

  line((0.104, -0.510), (0.736, -0.875), stroke: 0.55pt)
  line((2.356, 0.790), (2.988, 0.425), stroke: 0.55pt)
  line((0.589, -0.790), (2.841, 0.510), mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((1.92, -0.25), text(size: 10.5pt, weight: "bold")[$L$], anchor: "north")

  content((0.55, 3.25), text(size: 10.5pt, weight: "bold")[2 cordoni], anchor: "south")
  line((0.58, 3.12), (1.10, 2.14), stroke: 0.55pt)
  line((0.52, 3.12), (1.25, 0.30), stroke: 0.55pt)
})
