// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Disegno creato con Studio di LocalTypst
#canvas(length: 0.95cm, {
  import draw: *

  line((-4.4, 0), (4.4, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  rect((-4.1, -0.52), (-2.6, 0.52), fill: white, stroke: 0.85pt)
  rect((2.6, -0.52), (4.1, 0.52), fill: white, stroke: 0.85pt)
  bezier((-4.1, 0.52), (-4.1, -0.52), (-4.22, 0.18), (-3.98, -0.18), stroke: 0.85pt)
  bezier((4.1, 0.52), (4.1, -0.52), (4.22, 0.18), (3.98, -0.18), stroke: 0.85pt)

  line((-3.5, 0.52), (-3.5, 0.92), (-2.95, 0.92), (-2.95, 2.05), (-2.55, 2.05), (-2.55, 0.52), close: true, fill: rgb("#f472b6").transparentize(35%), stroke: 0.9pt)
  line((3.5, 0.52), (3.5, 0.92), (2.95, 0.92), (2.95, 2.05), (2.55, 2.05), (2.55, 0.52), close: true, fill: rgb("#fb923c").transparentize(35%), stroke: 0.9pt)

  line((-2.25, 2.05), (-1.92, 2.05), (-1.92, 0.90), (1.92, 0.90), (1.92, 2.05), (2.25, 2.05), (2.25, 0.62), (-2.25, 0.62), close: true, fill: rgb("#facc15").transparentize(25%), stroke: 0.9pt)

  rect((-2.52, 1.05), (-2.28, 2.00), fill: luma(150), stroke: 0.75pt)
  line((-2.44, 1.05), (-2.44, 2.00), stroke: 0.45pt)
  line((-2.36, 1.05), (-2.36, 2.00), stroke: 0.45pt)
  rect((2.28, 1.05), (2.52, 2.00), fill: luma(150), stroke: 0.75pt)
  line((2.36, 1.05), (2.36, 2.00), stroke: 0.45pt)
  line((2.44, 1.05), (2.44, 2.00), stroke: 0.45pt)

  line((-3.15, 1.62), (-1.70, 1.62), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((-3.05, 1.50), (-1.80, 1.74), fill: white, stroke: 0.8pt)
  rect((-3.12, 1.42), (-2.95, 1.82), fill: white, stroke: 0.8pt)
  rect((-1.92, 1.42), (-1.75, 1.82), fill: white, stroke: 0.8pt)

  line((1.70, 1.62), (3.15, 1.62), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((1.80, 1.50), (3.05, 1.74), fill: white, stroke: 0.8pt)
  rect((1.75, 1.42), (1.92, 1.82), fill: white, stroke: 0.8pt)
  rect((2.95, 1.42), (3.12, 1.82), fill: white, stroke: 0.8pt)

  line((-3.5, -0.52), (-3.5, -0.92), (-2.95, -0.92), (-2.95, -2.05), (-2.55, -2.05), (-2.55, -0.52), stroke: 0.85pt)
  line((3.5, -0.52), (3.5, -0.92), (2.95, -0.92), (2.95, -2.05), (2.55, -2.05), (2.55, -0.52), stroke: 0.85pt)
  line((-2.25, -0.52), (-2.25, -2.05), (-1.92, -2.05), (-1.92, -0.90), (1.92, -0.90), (1.92, -2.05), (2.25, -2.05), (2.25, -0.52), stroke: 0.85pt)
  rect((-2.52, -2.00), (-2.28, -1.05), fill: luma(200), stroke: 0.7pt)
  rect((2.28, -2.00), (2.52, -1.05), fill: luma(200), stroke: 0.7pt)

  content((0, 2.38), text(size: 8pt)[Elemento intermedio tubolare], anchor: "south")
  line((0, 2.32), (0, 0.92), mark: (end: "triangle", fill: black), stroke: 0.65pt)
  content((-2.40, 2.38), text(size: 7.5pt)[Lamine], anchor: "south")
  line((-2.40, 2.32), (-2.40, 2.02), mark: (end: "triangle", fill: black), stroke: 0.65pt)

  rect((-2.65, -3.25), (-2.15, -2.97), fill: luma(210), stroke: 0.8pt)
  rect((2.15, -3.75), (2.65, -3.47), fill: luma(210), stroke: 0.8pt)
  bezier((-2.15, -3.07), (2.15, -3.57), (-0.4, -3.07), (0.4, -3.57), stroke: 1.4pt + rgb("#1d4ed8"))
  bezier((-2.15, -3.15), (2.15, -3.65), (-0.4, -3.15), (0.4, -3.65), stroke: 0.9pt + rgb("#1d4ed8"))
  line((-2.8, -3.11), (3.0, -3.11), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(120)))
  line((2.65, -3.61), (3.0, -3.61), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(120)))
  line((2.88, -3.11), (2.88, -3.61), mark: (start: "triangle", end: "triangle", fill: black, scale: 0.7), stroke: 0.6pt)
  content((3.04, -3.36), text(size: 7.5pt)[Flessione fuori piano], anchor: "west")
  content((0, -4.13), text(size: 7.5pt)[Deformazione elastica delle biellette (lamine)], anchor: "north")
})
