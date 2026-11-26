#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.388), stroke: 1pt)
  line((3.344, 5.372), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  line((0.308, 2.354), (0.308, 3.854), (0.704, 4.052), (1.188, 3.810), stroke: 0.9pt)
  line((0.308, 3.854), (1.188, 3.810), stroke: 0.9pt)
  line((0.308, 2.354), (1.188, 2.310), stroke: 0.9pt)

  line((1.188, 2.310), (1.188, 3.810), (5.412, 5.922), (5.412, 4.422), close: true, stroke: 1pt)
  line((0.704, 4.052), (4.928, 6.164), (5.412, 5.922), stroke: 1pt)

  line((0.72, 3.88), (0.72, 5.05), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((0.72, 5.15), text(size: 11.5pt, weight: "bold")[$F$], anchor: "south")

  arc((0.75, 2.75), start: 240deg, stop: 480deg, radius: (0.35, 0.28), anchor: "origin", mark: (end: ">", fill: black), stroke: 1pt)
  content((1.18, 2.68), text(size: 11.5pt, weight: "bold")[$M$], anchor: "west")

  line((1.75, 5.58), (0.75, 3.45), stroke: 0.6pt)
  content((1.75, 5.65), text(size: 10.5pt, weight: "bold")[1 cordone], anchor: "south")

  line((4.928, 7.45), (4.928, 6.164), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.95), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  line((5.05, 4.241), (5.05, 5.741), mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((4.92, 4.99), text(size: 11.5pt, weight: "bold")[$h$], anchor: "east")

  line((1.276, 2.266), (2.156, 1.826), stroke: 0.55pt)
  line((5.500, 4.378), (6.380, 3.938), stroke: 0.55pt)
  line((2.068, 1.870), (6.292, 3.982), mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((4.25, 2.80), text(size: 11.5pt, weight: "bold")[$b$], anchor: "north")

  content((0.90, 8.05), text(size: 11.5pt, weight: "bold")[supporto], anchor: "south")
  content((5.80, 5.10), text(size: 11.5pt, weight: "bold")[piattabanda], anchor: "west")
})
