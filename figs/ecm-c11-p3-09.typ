#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((2.50, 2.50), (2.50, 5.00), stroke: 0.7pt)
  line((2.50, 5.00), (5.00, 2.50), stroke: 0.7pt)
  line((2.50, 2.50), (3.90, 3.90), stroke: 0.7pt)
  line((2.50, 2.50), (5.00, 2.50), stroke: 1.5pt)

  circle((2.50, 2.50), radius: 0.055, fill: black, stroke: none)
  circle((5.00, 2.50), radius: 0.055, fill: black, stroke: none)

  line((3.30, 3.30), (3.30, 0.50), mark: (end: ">", fill: red), stroke: 1.2pt + red)
  line((3.30, 3.30), (1.90, 1.90), mark: (end: ">", fill: red), stroke: 1.2pt + red)
  line((1.90, 1.90), (3.30, 0.50), mark: (end: ">", fill: red), stroke: 1.2pt + red)

  content((2.65, 2.38), text(size: 10.5pt, weight: "bold")[A], anchor: "north")
  content((5.00, 2.38), text(size: 10.5pt, weight: "bold")[B], anchor: "north")
  content((3.48, 1.75), text(size: 12pt, fill: red, weight: "bold")[$n_perp$], anchor: "west")
  content((2.05, 2.65), text(size: 10.5pt, fill: red, weight: "bold")[$n_perp sin 45°$], anchor: "east")
  content((2.40, 1.05), text(size: 10.5pt, fill: red, weight: "bold")[$n_perp cos 45°$], anchor: "east")
})
