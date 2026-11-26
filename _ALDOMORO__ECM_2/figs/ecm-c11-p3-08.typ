#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.50, 0.00), (3.10, 1.50), stroke: 0.9pt)
  line((3.10, 1.50), (3.10, 2.80), stroke: 0.9pt)
  line((3.10, 4.55), (3.10, 6.70), stroke: 0.9pt)
  line((0.50, 5.20), (3.10, 6.70), stroke: 0.9pt)
  line((0.50, 0.00), (0.50, 5.20), stroke: 0.9pt)

  line((0.50, 0.00), (0.11, 0.225), stroke: 0.9pt)
  line((0.11, 0.225), (0.11, 5.425), stroke: 0.9pt)
  line((0.50, 5.20), (0.11, 5.425), stroke: 0.9pt)
  line((0.11, 5.425), (2.71, 6.925), stroke: 0.9pt)
  line((3.10, 6.70), (2.71, 6.925), stroke: 0.9pt)

  line((1.496, 1.875), (5.220, 4.025), (5.220, 5.325), (1.496, 3.175), close: true, fill: white, stroke: none)
  line((1.496, 3.175), (5.220, 5.325), (4.830, 5.550), (1.106, 3.400), close: true, fill: white, stroke: none)
  line((5.220, 4.025), (5.220, 5.325), (4.830, 5.550), (4.830, 4.250), close: true, fill: white, stroke: none)

  line((1.496, 1.875), (5.220, 4.025), stroke: 0.95pt)
  line((1.496, 3.175), (5.220, 5.325), stroke: 0.95pt)
  line((1.106, 3.400), (4.830, 5.550), stroke: 0.95pt)
  line((5.220, 4.025), (5.220, 5.325), stroke: 0.95pt)
  line((5.220, 5.325), (4.830, 5.550), stroke: 0.95pt)
  line((4.830, 5.550), (4.830, 4.250), stroke: 0.95pt)
  line((5.220, 4.025), (4.830, 4.250), stroke: 0.95pt)

  line((0.716, 1.875), (0.716, 3.175), stroke: 0.85pt)
  line((1.496, 1.875), (1.496, 3.175), stroke: 0.85pt)
  line((0.716, 1.875), (1.496, 1.875), stroke: 0.85pt)
  line((0.716, 3.175), (1.106, 3.400), stroke: 0.85pt)
  line((1.106, 3.400), (1.496, 3.175), stroke: 0.85pt)
  line((0.716, 3.175), (1.496, 3.175), stroke: 0.7pt)

  line((0.91, 1.92), (0.91, 3.22), stroke: (dash: "dashed", thickness: 0.8pt, paint: red))
  line((0.91, 1.95), (1.496, 2.288), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((0.91, 2.17), (1.496, 2.508), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((0.91, 2.39), (1.496, 2.728), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((0.91, 2.61), (1.496, 2.948), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((0.91, 2.83), (1.496, 3.168), mark: (end: ">", fill: red), stroke: 0.9pt + red)

  line((0.911, 3.288), (1.496, 3.175), stroke: 1.5pt)
  circle((0.911, 3.288), radius: 0.045, fill: black, stroke: none)
  circle((1.496, 3.175), radius: 0.045, fill: black, stroke: none)

  line((2.71, 3.025), (2.71, 4.325), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  line((3.49, 3.025), (3.49, 4.325), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.71, 4.325), (3.10, 4.550), stroke: (dash: "dashed", thickness: 0.7pt))
  line((3.10, 4.550), (3.49, 4.325), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.71, 4.325), (3.49, 4.325), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.71, 3.025), (3.10, 2.800), stroke: (dash: "dashed", thickness: 0.7pt))
  line((3.10, 2.800), (3.49, 3.025), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.71, 3.025), (3.49, 3.025), stroke: (dash: "dashed", thickness: 0.6pt))

  line((3.10, 3.05), (3.10, 4.45), stroke: (dash: "dashed", thickness: 0.8pt, paint: red))
  line((3.10, 3.15), (3.533, 3.40), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((3.10, 3.42), (3.533, 3.67), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((3.10, 3.69), (3.533, 3.94), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((3.10, 3.96), (3.533, 4.21), mark: (end: ">", fill: red), stroke: 0.9pt + red)
  line((3.10, 4.23), (3.533, 4.48), mark: (end: ">", fill: red), stroke: 0.9pt + red)

  line((5.025, 4.788), (5.978, 5.338), mark: (end: ">", fill: black), stroke: 1pt)

  content((0.85, 3.38), text(size: 10.5pt, weight: "bold")[A], anchor: "south")
  content((1.56, 3.14), text(size: 10.5pt, weight: "bold")[B], anchor: "north-west")
  content((6.05, 5.45), text(size: 10.5pt, weight: "bold")[$P$], anchor: "south")
  content((2.25, 1.50), text(size: 12pt, fill: red, weight: "bold")[$n_perp$])
})
