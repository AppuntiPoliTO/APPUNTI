#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.2, 3.0), (4.6, 3.0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((2.4, 0.2), (2.4, 5.8), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.85, 1.45), (3.95, 4.55), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0.85, 4.55), (3.95, 1.45), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((2.4, 5.75), (2.75, 5.75), mark: (end: ">"), stroke: 0.8pt)
  content((2.22, 5.75), text(size: 8.5pt)[_A_])
  line((2.4, 0.25), (2.75, 0.25), mark: (end: ">"), stroke: 0.8pt)
  content((2.22, 0.25), text(size: 8.5pt)[_A_])
  content((1.15, 5.15), text(size: 8.5pt)[_B–B_])

  circle((2.4, 3.0), radius: 1.95, fill: white, stroke: 0.9pt)
  circle((2.4, 3.0), radius: 1.60, fill: gray.transparentize(84%), stroke: 0.85pt)
  circle((2.4, 3.0), radius: 1.40, fill: white, stroke: 0.85pt)

  circle((4.18, 3.0), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((0.62, 3.0), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((2.4, 4.78), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((2.4, 1.22), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((3.66, 4.26), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((1.14, 4.26), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((1.14, 1.74), radius: 0.11, fill: white, stroke: 0.65pt)
  circle((3.66, 1.74), radius: 0.11, fill: white, stroke: 0.65pt)

  circle((2.4, 3.0), radius: 1.32, stroke: 0.7pt)
  circle((2.4, 3.0), radius: 1.05, fill: white, stroke: 0.7pt)
  circle((2.4, 3.0), radius: 0.95, fill: gray.transparentize(82%), stroke: 0.85pt)
  circle((2.4, 3.0), radius: 0.50, fill: white, stroke: 0.85pt)

  line((2.72, 3.38), (2.82, 3.48), (2.92, 3.38), (2.82, 3.28), close: true, fill: white, stroke: 0.7pt)

  rect((2.32, 3.85), (2.48, 4.05), fill: gray.transparentize(65%), stroke: 0.7pt)
  line((1.55, 2.42), (1.72, 2.52), (1.64, 2.66), (1.47, 2.56), close: true, fill: gray.transparentize(65%), stroke: 0.7pt)
  line((3.25, 2.42), (3.08, 2.52), (3.16, 2.66), (3.33, 2.56), close: true, fill: gray.transparentize(65%), stroke: 0.7pt)

  rect((2.33, 4.35), (2.47, 4.48), fill: white, stroke: 0.65pt)
  rect((2.33, 1.52), (2.47, 1.65), fill: white, stroke: 0.65pt)
  rect((0.92, 2.93), (1.05, 3.07), fill: white, stroke: 0.65pt)
  rect((3.75, 2.93), (3.88, 3.07), fill: white, stroke: 0.65pt)

  line((5.4, 3.0), (9.2, 3.0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((6.70, 0.2), (6.70, 5.8), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  line((6.70, 5.75), (6.35, 5.75), mark: (end: ">"), stroke: 0.8pt)
  content((6.88, 5.75), text(size: 8.5pt)[_B_])
  line((6.70, 0.25), (6.35, 0.25), mark: (end: ">"), stroke: 0.8pt)
  content((6.88, 0.25), text(size: 8.5pt)[_B_])
  content((7.45, 5.15), text(size: 8.5pt)[_A–A_])

  line((5.95, 4.35), (6.20, 4.35), (6.20, 4.95), (5.95, 4.95), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)
  line((5.70, 4.72), (6.45, 4.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((5.95, 4.64), (6.20, 4.80), fill: white, stroke: 0.65pt)

  line((5.95, 1.05), (6.20, 1.05), (6.20, 1.65), (5.95, 1.65), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)
  line((5.70, 1.28), (6.45, 1.28), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((5.95, 1.20), (6.20, 1.36), fill: white, stroke: 0.65pt)

  line((6.20, 3.45), (6.45, 3.45), (6.45, 4.25), (7.25, 4.25), (7.25, 4.48), (6.20, 4.48), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)
  line((6.20, 1.52), (7.25, 1.52), (7.25, 1.75), (6.45, 1.75), (6.45, 2.55), (6.20, 2.55), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)

  rect((6.50, 3.80), (6.56, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.59, 3.80), (6.65, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.68, 3.80), (6.74, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.77, 3.80), (6.83, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.86, 3.80), (6.92, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.95, 3.80), (7.01, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((7.04, 3.80), (7.10, 4.25), fill: gray.transparentize(70%), stroke: 0.5pt)

  rect((6.50, 1.75), (6.56, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.59, 1.75), (6.65, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.68, 1.75), (6.74, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.77, 1.75), (6.83, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.86, 1.75), (6.92, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((6.95, 1.75), (7.01, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)
  rect((7.04, 1.75), (7.10, 2.20), fill: gray.transparentize(70%), stroke: 0.5pt)

  rect((7.12, 3.75), (7.52, 4.35), fill: gray.transparentize(82%), stroke: 0.8pt)
  rect((7.12, 1.65), (7.52, 2.25), fill: gray.transparentize(82%), stroke: 0.8pt)
  rect((7.25, 4.38), (7.48, 4.48), fill: gray.transparentize(60%), stroke: 0.65pt)
  rect((7.25, 1.52), (7.48, 1.62), fill: gray.transparentize(60%), stroke: 0.65pt)

  rect((5.85, 2.68), (8.95, 3.32), fill: white, stroke: 0.85pt)
  line((5.85, 2.82), (8.95, 2.82), stroke: 0.5pt)
  line((5.85, 3.18), (8.95, 3.18), stroke: 0.5pt)
  rect((5.85, 3.32), (8.95, 3.46), fill: gray.transparentize(82%), stroke: 0.8pt)
  rect((5.85, 1.95), (8.95, 2.68), fill: gray.transparentize(82%), stroke: 0.8pt)

  line((6.05, 3.46), (6.05, 3.85), (6.25, 3.85), (6.30, 3.66), (8.18, 3.55), (8.18, 3.46), close: true, fill: white, stroke: 0.8pt)
  circle((6.16, 3.65), radius: 0.06, fill: gray.transparentize(70%), stroke: 0.65pt)

  line((7.78, 3.46), (8.78, 3.46), (8.78, 4.02), (8.46, 4.02), (8.46, 3.68), (8.06, 3.68), (8.06, 4.02), (7.78, 4.02), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)
  line((7.78, 1.98), (8.06, 1.98), (8.06, 2.32), (8.46, 2.32), (8.46, 1.98), (8.78, 1.98), (8.78, 2.54), (7.78, 2.54), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)

  circle((8.26, 4.28), radius: (0.42, 0.19), stroke: (dash: "dashed", thickness: 1.0pt, paint: red))
  line((7.96, 4.28), (8.56, 4.28), mark: (start: ">", end: ">"), stroke: 0.85pt)
  circle((8.26, 4.28), radius: 0.035, fill: black, stroke: none)
})
