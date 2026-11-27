// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  circle((0, 0), radius: 2.60, stroke: 0.8pt)
  circle((0, 0), radius: 2.22, stroke: 0.6pt)
  circle((0, 0), radius: 2.05, stroke: 0.6pt)
  circle((0, 0), radius: 1.40, stroke: 0.8pt)

  line((1.449, 1.449), (1.570, 1.570), (1.274, 1.818), (1.177, 1.679), close: true, fill: rgb("#cccccc"), stroke: 0.6pt)
  line((1.40, 1.50), (1.48, 1.64), stroke: 0.45pt)
  line((1.31, 1.58), (1.40, 1.72), stroke: 0.45pt)
  line((1.23, 1.65), (1.31, 1.78), stroke: 0.45pt)

  line((0, 0), (1.35, 0), stroke: 0.6pt)
  line((0, 0), (1.570, 1.570), stroke: 0.6pt)
  line((0, 0), (1.274, 1.818), stroke: 0.6pt)

  line((0, 0), (-1.992, 1.672), stroke: 0.65pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0, 0), (-0.990, -0.990), stroke: 0.65pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0, 0), (0.357, 2.019), stroke: 0.65pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.444, 2.512), (0.386, 2.187), stroke: 0.65pt, mark: (end: ">", fill: black, scale: 0.45))
  line((0.371, 2.103), (0.88, 2.58), stroke: 0.5pt)

  arc((0, 0), start: 0deg, stop: 45deg, radius: 1.00, anchor: "origin", stroke: 0.6pt, mark: (start: ">", end: ">", fill: black, scale: 0.45))
  arc((0, 0), start: 33deg, stop: 45deg, radius: 1.22, anchor: "origin", stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  arc((0, 0), start: 55deg, stop: 67deg, radius: 1.22, anchor: "origin", stroke: 0.6pt, mark: (start: ">", fill: black, scale: 0.45))

  content((-0.82, 0.96), text(size: 8.5pt)[$r_e$])
  content((-0.18, -0.78), text(size: 8.5pt)[$r_i$])
  content((0.08, 1.78), text(size: 8.5pt)[$r$])
  content((0.96, 2.75), text(size: 8.5pt)[$d r$])
  content((1.16, 0.46), text(size: 8.5pt)[$Phi$])
  content((0.50, 1.18), text(size: 8.5pt)[$d Phi$])

  rect((3.30, 1.40), (3.45, 2.60), stroke: 0.8pt)
  rect((3.30, -2.60), (3.45, -1.40), stroke: 0.8pt)
  line((3.30, -1.40), (3.30, 1.40), stroke: 0.7pt)
  line((3.45, -1.40), (3.45, 1.40), stroke: 0.7pt)

  line((3.30, 1.45), (3.45, 1.60), stroke: 0.45pt)
  line((3.30, 1.65), (3.45, 1.80), stroke: 0.45pt)
  line((3.30, 1.85), (3.45, 2.00), stroke: 0.45pt)
  line((3.30, 2.05), (3.45, 2.20), stroke: 0.45pt)
  line((3.30, 2.25), (3.45, 2.40), stroke: 0.45pt)
  line((3.30, 2.45), (3.45, 2.60), stroke: 0.45pt)

  line((3.30, -2.55), (3.45, -2.40), stroke: 0.45pt)
  line((3.30, -2.35), (3.45, -2.20), stroke: 0.45pt)
  line((3.30, -2.15), (3.45, -2.00), stroke: 0.45pt)
  line((3.30, -1.95), (3.45, -1.80), stroke: 0.45pt)
  line((3.30, -1.75), (3.45, -1.60), stroke: 0.45pt)
  line((3.30, -1.55), (3.45, -1.40), stroke: 0.45pt)

  line((3.05, 0), (5.40, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  line((5.300, 1.40), (3.45, 1.40), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((5.069, 1.60), (3.45, 1.60), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.889, 1.80), (3.45, 1.80), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.745, 2.00), (3.45, 2.00), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.627, 2.20), (3.45, 2.20), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.529, 2.40), (3.45, 2.40), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.446, 2.60), (3.45, 2.60), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((5.300, 1.40), (5.069, 1.60), (4.889, 1.80), (4.745, 2.00), (4.627, 2.20), (4.529, 2.40), (4.446, 2.60), stroke: 0.75pt)

  line((5.300, -1.40), (3.45, -1.40), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((5.069, -1.60), (3.45, -1.60), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.889, -1.80), (3.45, -1.80), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.745, -2.00), (3.45, -2.00), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.627, -2.20), (3.45, -2.20), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.529, -2.40), (3.45, -2.40), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((4.446, -2.60), (3.45, -2.60), stroke: 0.6pt, mark: (end: ">", fill: black, scale: 0.45))
  line((5.300, -1.40), (5.069, -1.60), (4.889, -1.80), (4.745, -2.00), (4.627, -2.20), (4.529, -2.40), (4.446, -2.60), stroke: 0.75pt)

  content((4.38, 1.00), text(size: 8.5pt)[$p(r)$])
})
