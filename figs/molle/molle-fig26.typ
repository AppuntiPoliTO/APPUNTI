// Figura estratta da molle.typ (riga 3230) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((0.00, 0.00), (4.28, 0.00), (4.28, 0.09), (0.00, 0.09), close: true, stroke: 1.0pt)

  bezier((0.00, -0.36), (3.62, 0.00), (1.20, -0.18), (2.50, 0.00), stroke: 1.0pt)

  line((3.62, -0.75), (3.62, 0.00), (4.28, 0.00), (4.28, 0.22), (5.15, 0.22), stroke: 1.0pt)
  line((3.62, -0.20), (3.82, 0.00), stroke: 0.5pt)
  line((3.62, -0.42), (4.04, 0.00), stroke: 0.5pt)
  line((3.62, -0.64), (4.26, 0.00), stroke: 0.5pt)
  line((3.73, -0.75), (4.70, 0.22), stroke: 0.5pt)
  line((3.95, -0.75), (4.92, 0.22), stroke: 0.5pt)
  line((4.35, -0.57), (5.14, 0.22), stroke: 0.5pt)
  line((4.62, -0.52), (5.15, 0.01), stroke: 0.5pt)
  line((4.85, -0.51), (5.15, -0.21), stroke: 0.5pt)

  line((3.95, 1.05), (3.95, 0.55), stroke: 0.5pt)
  line((3.95, 0.45), (3.95, 0.38), stroke: 0.5pt)
  line((3.95, 0.28), (3.95, -0.22), stroke: 0.5pt)
  line((3.95, -0.32), (3.95, -0.39), stroke: 0.5pt)
  line((3.95, -0.49), (3.95, -0.75), stroke: 0.5pt)

  line((0.00, 1.15), (0.00, 0.38), stroke: 1.8pt)
  line((-0.13, 0.42), (0.13, 0.42), (0.00, 0.09), close: true, fill: black, stroke: none)
  content((-0.30, 0.65), [$F$], anchor: "east")

  line((0.00, 0.00), (-0.42, 0.00), stroke: 0.5pt)
  line((0.00, -0.36), (-0.42, -0.36), stroke: 0.5pt)
  line((-0.32, 0.38), (-0.32, 0.00), mark: (end: ">"), stroke: 0.5pt)
  line((-0.32, -0.74), (-0.32, -0.36), mark: (end: ">"), stroke: 0.5pt)
  line((-0.32, 0.00), (-0.32, -0.36), stroke: 0.5pt)
  content((-0.42, -0.18), [$delta$], anchor: "east")

  line((3.16, 0.45), (3.16, 0.09), mark: (end: ">"), stroke: 0.5pt)
  line((3.16, -0.42), (3.16, 0.00), mark: (end: ">"), stroke: 0.5pt)
  line((3.16, 0.00), (3.16, 0.09), stroke: 0.5pt)
  content((3.02, 0.35), [$h$], anchor: "east")

  content((1.92, 0.25), [$L$], anchor: "south")

  circle((0.00, -0.82), radius: 0.06, fill: white, stroke: 0.7pt)
  line((0.06, -0.82), (2.02, -0.82), mark: (end: ">"), stroke: 0.7pt)
  content((2.08, -0.82), [$x$], anchor: "west")

  line((-0.75, -2.02), (0.10, -2.02), stroke: 0.5pt)
  line((0.22, -2.02), (0.30, -2.02), stroke: 0.5pt)
  line((0.42, -2.02), (1.35, -2.02), stroke: 0.5pt)
  line((1.47, -2.02), (1.55, -2.02), stroke: 0.5pt)
  line((1.67, -2.02), (2.60, -2.02), stroke: 0.5pt)
  line((2.72, -2.02), (2.80, -2.02), stroke: 0.5pt)
  line((2.92, -2.02), (3.85, -2.02), stroke: 0.5pt)
  line((3.97, -2.02), (4.05, -2.02), stroke: 0.5pt)
  line((4.17, -2.02), (4.85, -2.02), stroke: 0.5pt)

  line((3.35, -1.68), (0.36, -1.90), (0.26, -1.76), (-0.22, -1.76), (-0.22, -2.28), (0.26, -2.28), (0.36, -2.14), (3.35, -2.36), stroke: 1.0pt)

  arc((3.35, -1.41), start: 270deg, stop: 360deg, radius: 0.27, anchor: "origin", stroke: 1.0pt)
  arc((3.35, -2.63), start: 0deg, stop: 90deg, radius: 0.27, anchor: "origin", stroke: 1.0pt)

  line((3.62, -1.41), (3.62, -1.28), (4.28, -1.28), (4.28, -2.76), (3.62, -2.76), (3.62, -2.63), stroke: 1.0pt)
  line((3.62, -1.66), (3.62, -2.38), stroke: 0.6pt)

  circle((0.02, -2.02), radius: 0.14, stroke: 0.9pt)

  circle((3.95, -1.66), radius: 0.20, fill: white, stroke: 1.0pt)
  line((3.80, -1.53), (4.08, -1.81), stroke: 0.8pt)
  line((3.82, -1.51), (4.10, -1.79), stroke: 0.8pt)

  circle((3.95, -2.38), radius: 0.20, fill: white, stroke: 1.0pt)
  line((3.80, -2.25), (4.08, -2.53), stroke: 0.8pt)
  line((3.82, -2.23), (4.10, -2.51), stroke: 0.8pt)

  line((3.42, -1.66), (4.48, -1.66), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.42, -2.38), (4.48, -2.38), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.95, -1.20), (3.95, -2.84), stroke: (dash: "dashed", thickness: 0.5pt))

  line((3.62, -1.28), (3.62, -1.10), (3.85, -1.06), (4.10, -1.12), (4.28, -1.08), (4.28, -1.28), stroke: 0.7pt)
  line((3.62, -2.76), (3.62, -2.94), (3.90, -2.96), (4.28, -2.95), (4.28, -2.76), stroke: 0.7pt)
  line((4.28, -1.08), (4.28, -0.98), (4.55, -0.94), (4.82, -1.00), (4.87, -1.45), (4.82, -2.02), (4.87, -2.55), (4.84, -3.05), (4.55, -3.10), (4.28, -3.08), (4.28, -2.76), stroke: 0.7pt)

  line((-0.38, -4.08), (0.45, -4.08), stroke: 0.5pt)
  line((0.57, -4.08), (0.65, -4.08), stroke: 0.5pt)
  line((0.77, -4.08), (1.75, -4.08), stroke: 0.5pt)
  line((1.87, -4.08), (1.95, -4.08), stroke: 0.5pt)
  line((2.07, -4.08), (3.05, -4.08), stroke: 0.5pt)
  line((3.17, -4.08), (3.25, -4.08), stroke: 0.5pt)
  line((3.37, -4.08), (3.85, -4.08), stroke: 0.5pt)

  line((0.00, -4.08), (3.62, -3.68), (3.62, -4.48), close: true, stroke: 1.0pt)

  line((2.10, -3.50), (2.10, -3.85), mark: (end: ">"), stroke: 0.5pt)
  line((2.10, -4.66), (2.10, -4.31), mark: (end: ">"), stroke: 0.5pt)
  line((2.10, -3.85), (2.10, -4.31), stroke: 0.5pt)
  content((2.15, -3.45), [$b(x)$], anchor: "south")

  line((3.62, -3.68), (4.02, -3.68), stroke: 0.5pt)
  line((3.62, -4.48), (4.02, -4.48), stroke: 0.5pt)
  line((3.84, -3.32), (3.84, -3.68), mark: (end: ">"), stroke: 0.5pt)
  line((3.84, -4.84), (3.84, -4.48), mark: (end: ">"), stroke: 0.5pt)
  line((3.84, -3.68), (3.84, -4.48), stroke: 0.5pt)
  content((4.02, -4.10), [$b_0$], anchor: "west")
})
