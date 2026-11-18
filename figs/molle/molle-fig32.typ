// Figura estratta da molle.typ (riga 831) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-1.10, 1.30), (-3.30, 0.00), (-3.44, 0.24), (-1.24, 1.54), close: true, fill: black.transparentize(80%), stroke: none)
  line((1.10, 1.30), (3.30, 0.00), (3.44, 0.24), (1.24, 1.54), close: true, fill: black.transparentize(80%), stroke: none)

  line((-1.10, 1.30), (-3.30, 0.00), (-3.44, 0.24), (-1.24, 1.54), close: true, stroke: 1pt)
  line((1.10, 1.30), (3.30, 0.00), (3.44, 0.24), (1.24, 1.54), close: true, stroke: 1pt)
  line((-3.30, 0.00), (3.30, 0.00), stroke: 1pt)
  line((-1.10, 1.30), (1.10, 1.30), stroke: 1pt)
  line((-1.24, 1.54), (1.24, 1.54), stroke: 1pt)

  line((0.00, -0.65), (0.00, 2.25), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((-1.10, 1.30), (-1.10, 2.00), stroke: 0.6pt)
  line((1.10, 1.30), (1.10, 2.00), stroke: 0.6pt)
  line((-1.10, 1.85), (1.10, 1.85), mark: (start: "straight", end: "straight"), stroke: 0.6pt)
  content((0.22, 1.92), [$d$], anchor: "south")

  line((-3.30, 0.00), (-3.30, -0.65), stroke: 0.6pt)
  line((3.30, 0.00), (3.30, -0.65), stroke: 0.6pt)
  line((-3.30, -0.50), (3.30, -0.50), mark: (start: "straight", end: "straight"), stroke: 0.6pt)
  content((0.22, -0.43), [$D$], anchor: "south")

  line((0.65, 0.00), (0.65, 1.30), mark: (start: "straight", end: "straight"), stroke: 0.6pt)
  content((0.73, 0.65), [$h$], anchor: "west")

  line((2.02, 0.35), (2.57, 1.28), stroke: 0.6pt)
  line((2.57, 1.28), (2.34, 0.89), mark: (end: "straight"), stroke: 0.6pt)
  line((2.02, 0.35), (2.20, 0.65), mark: (end: "straight"), stroke: 0.6pt)
  content((2.50, 1.12), [$t$], anchor: "west")
})
