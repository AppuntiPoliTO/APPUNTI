#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-1.256, -1.200), (-1.256, 3.550), stroke: 0.8pt)
  line((-0.616, -1.200), (-0.616, 3.100), stroke: 0.8pt)
  line((-0.616, -0.908), (0, -0.600), stroke: 0.75pt)

  line((2.816, 4.150), (2.816, 3.758), stroke: 0.8pt)
  line((2.816, 2.438), (2.816, 1.558), stroke: 0.8pt)
  line((2.816, 0.808), (2.816, -0.200), stroke: 0.8pt)

  line((0, 1.600), (0, 2.350), (0.480, 1.270), close: true, stroke: 1pt)
  line((0, 2.350), (2.816, 3.758), (3.296, 2.678), (0.480, 1.270), stroke: 1pt)

  line((0, -0.600), (0, 0.150), (0.480, -0.180), close: true, stroke: 1pt)
  line((0, 0.150), (2.816, 1.558), (3.296, 1.228), (0.480, -0.180), stroke: 1pt)
  line((0, -0.600), (2.816, 0.808), (3.296, 1.228), stroke: 1pt)

  line((0.950, 2.350), (2.250, 3.000), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((1.650, 2.400), text(size: 11.5pt, weight: "bold")[$F$], anchor: "north")

  line((0.950, 0.850), (2.250, 1.500), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((1.800, 0.150), text(size: 11.5pt, weight: "bold")[$F$], anchor: "north")
})
