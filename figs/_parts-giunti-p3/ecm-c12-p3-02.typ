// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-2.90, 1.32), (-2.90, 1.55), (-2.80, 1.65), (-2.25, 1.65), (-2.25, 1.78), (-1.75, 1.78), (-1.75, 1.88), (-1.55, 1.88), (-1.55, 2.02), (-0.06, 2.02), (-0.06, 1.32), close: true, fill: rgb("#ff7f27").transparentize(20%), stroke: none)
  line((0.06, 1.32), (0.06, 2.02), (1.55, 2.02), (1.55, 1.88), (1.75, 1.88), (1.75, 1.78), (2.25, 1.78), (2.25, 1.65), (2.80, 1.65), (2.90, 1.55), (2.90, 1.32), close: true, fill: rgb("#00a2b8").transparentize(20%), stroke: none)

  line((-1.95, 1.78), (-1.95, 2.53), (-1.83, 2.65), (-0.62, 2.65), (-0.62, 2.38), (-1.68, 2.38), (-1.68, 1.78), close: true, fill: rgb("#ec4899").transparentize(25%), stroke: none)
  rect((-0.62, 2.38), (0.00, 2.86), fill: rgb("#ec4899").transparentize(25%), stroke: none)
  rect((-0.62, 3.04), (0.00, 3.45), fill: rgb("#ec4899").transparentize(25%), stroke: none)

  line((1.95, 1.78), (1.95, 2.53), (1.83, 2.65), (0.62, 2.65), (0.62, 2.38), (1.68, 2.38), (1.68, 1.78), close: true, fill: rgb("#76c41f").transparentize(20%), stroke: none)
  rect((0.00, 2.38), (0.62, 2.86), fill: rgb("#76c41f").transparentize(20%), stroke: none)
  rect((0.00, 3.04), (0.62, 3.45), fill: rgb("#76c41f").transparentize(20%), stroke: none)

  rect((-1.55, 2.06), (-1.40, 2.34), fill: rgb("#d4c82a").transparentize(20%), stroke: none)

  bezier((-0.95, -0.21), (-0.06, -0.30), (-0.50, -0.21), (-0.25, -0.30), stroke: 0.65pt)
  bezier((-0.95, -0.46), (-0.06, -0.37), (-0.50, -0.46), (-0.25, -0.37), stroke: 0.65pt)
  bezier((0.95, -0.21), (0.06, -0.30), (0.50, -0.21), (0.25, -0.30), stroke: 0.65pt)
  bezier((0.95, -0.46), (0.06, -0.37), (0.50, -0.46), (0.25, -0.37), stroke: 0.65pt)

  bezier((-0.95, -0.58), (-0.06, -0.67), (-0.50, -0.58), (-0.25, -0.67), stroke: 0.65pt)
  bezier((-0.95, -0.83), (-0.06, -0.74), (-0.50, -0.83), (-0.25, -0.74), stroke: 0.65pt)
  bezier((0.95, -0.58), (0.06, -0.67), (0.50, -0.58), (0.25, -0.67), stroke: 0.65pt)
  bezier((0.95, -0.83), (0.06, -0.74), (0.50, -0.83), (0.25, -0.74), stroke: 0.65pt)

  bezier((-0.95, -0.95), (-0.06, -1.04), (-0.50, -0.95), (-0.25, -1.04), stroke: 0.65pt)
  bezier((-0.95, -1.20), (-0.06, -1.11), (-0.50, -1.20), (-0.25, -1.11), stroke: 0.65pt)
  bezier((0.95, -0.95), (0.06, -1.04), (0.50, -0.95), (0.25, -1.04), stroke: 0.65pt)
  bezier((0.95, -1.20), (0.06, -1.11), (0.50, -1.20), (0.25, -1.11), stroke: 0.65pt)

  line((-0.06, -1.36), (-0.06, 2.02), stroke: 0.75pt)
  line((0.06, -1.36), (0.06, 2.02), stroke: 0.75pt)

  rect((-1.15, -0.19), (1.15, -0.11), fill: white, stroke: none)
  rect((-1.15, -0.56), (1.15, -0.48), fill: white, stroke: none)
  rect((-1.15, -0.93), (1.15, -0.85), fill: white, stroke: none)
  rect((-1.15, -1.30), (1.15, -1.22), fill: white, stroke: none)

  arc((-1.25, 0.00), start: 180deg, stop: 270deg, radius: 0.11, anchor: "origin", stroke: 0.75pt)
  arc((-1.17, 0.00), start: 180deg, stop: 270deg, radius: 0.19, anchor: "origin", stroke: 0.75pt)

  line((-1.25, -0.11), (1.15, -0.11), stroke: 0.75pt)
  line((-1.17, -0.19), (1.15, -0.19), stroke: 0.75pt)
  arc((1.15, -0.335), start: 270deg, stop: 450deg, radius: 0.225, anchor: "origin", stroke: 0.75pt)
  arc((1.15, -0.335), start: 270deg, stop: 450deg, radius: 0.145, anchor: "origin", stroke: 0.75pt)

  line((-1.15, -0.48), (1.15, -0.48), stroke: 0.75pt)
  line((-1.15, -0.56), (1.15, -0.56), stroke: 0.75pt)
  arc((-1.15, -0.705), start: 90deg, stop: 270deg, radius: 0.225, anchor: "origin", stroke: 0.75pt)
  arc((-1.15, -0.705), start: 90deg, stop: 270deg, radius: 0.145, anchor: "origin", stroke: 0.75pt)

  line((-1.15, -0.85), (1.15, -0.85), stroke: 0.75pt)
  line((-1.15, -0.93), (1.15, -0.93), stroke: 0.75pt)
  arc((1.15, -1.075), start: 270deg, stop: 450deg, radius: 0.225, anchor: "origin", stroke: 0.75pt)
  arc((1.15, -1.075), start: 270deg, stop: 450deg, radius: 0.145, anchor: "origin", stroke: 0.75pt)

  line((-1.15, -1.22), (1.15, -1.22), stroke: 0.75pt)
  line((-1.15, -1.30), (1.15, -1.30), stroke: 0.75pt)
  line((-1.15, -1.22), (-1.05, -1.36), stroke: 0.75pt)
  line((-1.15, -1.30), (-1.11, -1.36), stroke: 0.75pt)

  line((-1.95, -1.36), (-1.95, -2.53), stroke: 0.95pt)
  arc((-1.83, -2.53), start: 180deg, stop: 270deg, radius: 0.12, anchor: "origin", stroke: 0.95pt)
  line((-1.83, -2.65), (-0.82, -2.65), stroke: 0.95pt)
  line((-0.82, -2.65), (-0.82, -3.35), stroke: 0.95pt)
  arc((-0.72, -3.35), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((-0.72, -3.45), (0.72, -3.45), stroke: 0.95pt)
  arc((0.72, -3.35), start: 270deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((0.82, -3.35), (0.82, -2.65), stroke: 0.95pt)
  line((0.82, -2.65), (1.83, -2.65), stroke: 0.95pt)
  arc((1.83, -2.53), start: 270deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 0.95pt)
  line((1.95, -2.53), (1.95, -1.36), stroke: 0.95pt)

  line((-0.82, -1.38), (-0.82, -2.65), stroke: 0.75pt)
  line((0.82, -1.38), (0.82, -2.65), stroke: 0.75pt)
  line((0.00, -1.36), (0.00, -3.45), stroke: 0.75pt)

  line((-1.95, -1.65), (-2.80, -1.65), stroke: 0.95pt)
  arc((-2.80, -1.55), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((-2.90, -1.55), (-2.90, 1.55), stroke: 0.95pt)
  arc((-2.80, 1.55), start: 90deg, stop: 180deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((-2.80, 1.65), (-2.25, 1.65), (-2.25, 1.78), (-1.75, 1.78), (-1.75, 1.88), (-1.55, 1.88), (-1.55, 2.02), (-0.06, 2.02), stroke: 0.95pt)

  line((1.95, -1.65), (2.80, -1.65), stroke: 0.95pt)
  arc((2.80, -1.55), start: 270deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((2.90, -1.55), (2.90, 1.55), stroke: 0.95pt)
  arc((2.80, 1.55), start: 0deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((2.80, 1.65), (2.25, 1.65), (2.25, 1.78), (1.75, 1.78), (1.75, 1.88), (1.55, 1.88), (1.55, 2.02), (0.06, 2.02), stroke: 0.95pt)

  line((-2.90, 1.05), (-0.06, 1.05), stroke: 0.75pt)
  line((0.06, 1.05), (2.90, 1.05), stroke: 0.75pt)
  line((-2.90, 1.32), (-0.06, 1.32), stroke: 0.75pt)
  line((0.06, 1.32), (2.90, 1.32), stroke: 0.75pt)

  line((-2.25, 0.00), (-2.25, 1.65), stroke: 0.65pt)
  line((2.25, 0.00), (2.25, 1.65), stroke: 0.65pt)
  line((-0.95, 0.00), (-0.95, -1.36), stroke: 0.65pt)
  line((0.95, 0.00), (0.95, -1.36), stroke: 0.65pt)

  line((-1.95, 1.78), (-1.95, 2.53), stroke: 0.95pt)
  arc((-1.83, 2.53), start: 90deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 0.95pt)
  line((-1.83, 2.65), (-0.82, 2.65), stroke: 0.95pt)
  line((-0.82, 2.65), (-0.82, 3.35), stroke: 0.95pt)
  arc((-0.72, 3.35), start: 90deg, stop: 180deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((-0.72, 3.45), (0.72, 3.45), stroke: 0.95pt)
  arc((0.72, 3.35), start: 0deg, stop: 90deg, radius: 0.10, anchor: "origin", stroke: 0.95pt)
  line((0.82, 3.35), (0.82, 2.65), stroke: 0.95pt)
  line((0.82, 2.65), (1.83, 2.65), stroke: 0.95pt)
  arc((1.83, 2.53), start: 0deg, stop: 90deg, radius: 0.12, anchor: "origin", stroke: 0.95pt)
  line((1.95, 2.53), (1.95, 1.78), stroke: 0.95pt)

  line((-1.95, 1.78), (-1.68, 1.78), (-1.68, 2.38), (1.68, 2.38), (1.68, 1.78), (1.95, 1.78), stroke: 0.8pt)
  line((-0.62, 2.38), (-0.62, 3.45), stroke: 0.75pt)
  line((0.00, 2.38), (0.00, 3.45), stroke: 0.8pt)
  line((0.62, 2.38), (0.62, 3.45), stroke: 0.75pt)

  rect((-1.55, 2.02), (1.55, 2.38), stroke: 0.75pt)
  line((-1.40, 2.02), (-1.40, 2.38), stroke: 0.65pt)
  line((-0.95, 2.02), (-0.95, 2.38), stroke: 0.65pt)
  line((0.95, 2.02), (0.95, 2.38), stroke: 0.65pt)
  line((1.40, 2.02), (1.40, 2.38), stroke: 0.65pt)

  rect((-0.58, 2.77), (-0.42, 3.13), fill: white, stroke: 0.75pt)
  line((-0.58, 2.86), (-0.42, 2.86), stroke: 0.65pt)
  line((-0.58, 3.04), (-0.42, 3.04), stroke: 0.65pt)
  rect((-0.42, 2.86), (0.68, 3.04), fill: white, stroke: 0.75pt)
  rect((0.42, 2.77), (0.58, 3.13), fill: white, stroke: 0.75pt)
  line((0.42, 2.86), (0.58, 2.86), stroke: 0.65pt)
  line((0.42, 3.04), (0.58, 3.04), stroke: 0.65pt)

  bezier((-1.95, -1.36), (-0.95, -1.36), (-1.65, -1.26), (-1.25, -1.46), stroke: 0.85pt)
  bezier((-0.95, -1.36), (0.00, -1.36), (-0.65, -1.26), (-0.30, -1.46), stroke: 0.85pt)
  bezier((0.00, -1.36), (0.95, -1.36), (0.30, -1.26), (0.65, -1.46), stroke: 0.85pt)
  bezier((0.95, -1.36), (1.95, -1.36), (1.25, -1.26), (1.65, -1.46), stroke: 0.85pt)

  line((-3.60, 0.00), (3.60, 0.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((-0.95, 2.95), (0.95, 2.95), stroke: (dash: "dash-dotted", thickness: 0.6pt))
})
