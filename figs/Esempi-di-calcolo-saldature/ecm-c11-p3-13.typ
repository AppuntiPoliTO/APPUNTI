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

  line((3.05, 5.10), (3.65, 5.40), (3.35, 4.95), close: true, stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.05, 3.60), (3.65, 3.90), (3.35, 3.45), close: true, stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.05, 3.60), (3.05, 5.10), stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.35, 3.45), (3.35, 4.95), stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.65, 3.90), (3.65, 5.40), stroke: (dash: "dashed", thickness: 0.75pt))

  line((3.35, 4.90), (3.35, 4.22), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1pt))
  line((3.35, 4.18), (3.35, 3.50), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1pt))

  line((4.928, 7.45), (4.928, 6.164), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.95), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  content((0.90, 8.05), text(size: 11.5pt, weight: "bold")[supporto], anchor: "south")
  content((3.85, 4.25), text(size: 12pt, fill: red, weight: "bold")[$f_parallel$], anchor: "west")
  content((5.55, 5.05), text(size: 11.5pt, weight: "bold")[piattabanda], anchor: "west")
})
