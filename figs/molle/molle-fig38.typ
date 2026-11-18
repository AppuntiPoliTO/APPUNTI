// Figura estratta da molle.typ (riga 1337) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let varphi = $phi$

#canvas(length: 1.1cm, {
  import draw: *

  line((0.86, 2.60), (0.94, 2.60), (1.09, 1.40), (1.01, 1.40), close: true, fill: white, stroke: 0.8pt)
  line((1.16, 2.60), (1.24, 2.60), (1.39, 1.40), (1.31, 1.40), close: true, fill: white, stroke: 0.8pt)
  line((1.46, 2.60), (1.54, 2.60), (1.69, 1.40), (1.61, 1.40), close: true, fill: white, stroke: 0.8pt)
  line((1.76, 2.60), (1.84, 2.60), (1.99, 1.40), (1.91, 1.40), close: true, fill: white, stroke: 0.8pt)
  line((2.06, 2.60), (2.14, 2.60), (2.29, 1.40), (2.21, 1.40), close: true, fill: white, stroke: 0.8pt)
  line((2.36, 2.60), (2.44, 2.60), (2.59, 1.40), (2.51, 1.40), close: true, fill: white, stroke: 0.8pt)

  line((2.66, 2.60), (2.74, 2.60), (2.94, 0.94), (3.45, 0.94), (3.45, 0.86), (2.86, 0.86), close: true, fill: white, stroke: 0.8pt)

  line((0.71, 1.40), (0.79, 1.40), (0.94, 2.60), (0.86, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((1.01, 1.40), (1.09, 1.40), (1.24, 2.60), (1.16, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((1.31, 1.40), (1.39, 1.40), (1.54, 2.60), (1.46, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((1.61, 1.40), (1.69, 1.40), (1.84, 2.60), (1.76, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((1.91, 1.40), (1.99, 1.40), (2.14, 2.60), (2.06, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((2.21, 1.40), (2.29, 1.40), (2.44, 2.60), (2.36, 2.60), close: true, fill: white, stroke: 0.8pt)
  line((2.51, 1.40), (2.59, 1.40), (2.74, 2.60), (2.66, 2.60), close: true, fill: white, stroke: 0.8pt)

  line((0.10, 3.14), (0.58, 3.14), (0.79, 1.40), (0.71, 1.40), (0.51, 3.06), (0.10, 3.06), close: true, fill: white, stroke: 0.8pt)

  line((0.05, 2.00), (3.50, 2.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  circle((6.50, 2.00), radius: 0.70, fill: white, stroke: 0.8pt)
  circle((6.50, 2.00), radius: 0.62, fill: white, stroke: 0.8pt)

  line((7.12, 2.00), (7.12, 3.25), (7.20, 3.25), (7.20, 2.00), fill: white, stroke: 0.8pt)
  line((6.56, 1.39), (5.42, 1.27), (5.43, 1.19), (6.57, 1.31), fill: white, stroke: 0.8pt)

  circle((6.50, 2.00), radius: 0.50, fill: white, stroke: 0.8pt)
  line((6.005, 1.955), (6.545, 2.495), stroke: 0.5pt)
  line((6.03, 1.83), (6.67, 2.47), stroke: 0.5pt)
  line((6.08, 1.73), (6.77, 2.42), stroke: 0.5pt)
  line((6.15, 1.65), (6.85, 2.35), stroke: 0.5pt)
  line((6.23, 1.58), (6.92, 2.27), stroke: 0.5pt)
  line((6.33, 1.53), (6.97, 2.17), stroke: 0.5pt)
  line((6.455, 1.505), (6.995, 2.045), stroke: 0.5pt)

  line((5.45, 2.00), (8.40, 2.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((6.50, 1.25), (6.50, 3.05), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((8.20, 3.20), (7.20, 3.20), mark: (end: "straight"), stroke: 1.2pt)
  content((7.70, 3.12), [$F_1$], anchor: "north")

  line((8.05, 2.00), (8.05, 3.20), mark: (start: "straight", end: "straight"), stroke: 0.6pt)
  content((8.13, 2.60), [$a$], anchor: "west")

  line((5.71, 0.46), (5.63, 1.21), mark: (end: "straight"), stroke: 1.2pt)
  content((5.78, 0.72), [$F_2$], anchor: "west")

  line((5.71, 0.46), (5.73, 0.26), stroke: 0.6pt)
  line((6.50, 2.00), (6.67, 0.36), mark: (end: "straight"), stroke: 0.6pt)
  content((6.66, 0.85), [$a$], anchor: "west")

  line((5.73, 0.26), (6.67, 0.36), mark: (start: "straight", end: "straight"), stroke: 0.6pt)
  content((6.20, 0.25), [$b$], anchor: "north")

  arc((6.50, 2.00), start: 82deg, stop: 185deg, radius: 1.45, anchor: "origin", mark: (start: "straight", end: "straight"), stroke: 0.8pt)
  content((5.48, 3.16), [$varphi$], anchor: "east")
})
