// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.88cm, {
  import draw: *

  line((-4.53, -2.65), (0.71, 0.42), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(95)))
  line((-3.46, -0.50), (6.91, 1.01), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(95)))

  bezier((-2.35, -0.34), (-1.59, -0.93), (-2.17, -0.56), (-1.92, -0.76), stroke: (paint: rgb("#c81e1e"), thickness: 0.85pt), mark: (start: ">", end: ">", fill: rgb("#c81e1e"), scale: 0.45))
  content((-2.26, -0.78), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(beta)$])

  line((-3.35, -0.69), (-3.80, -0.96), (-3.97, -1.10), (-4.07, -1.36), (-4.07, -1.58), (-3.97, -1.32), (-3.80, -1.18), (-3.35, -0.91), close: true, fill: luma(246), stroke: 0.85pt)
  line((-4.30, -1.34), (-4.19, -1.66), (-3.98, -1.87), (-3.69, -2.05), (-3.34, -2.20), (-2.95, -2.30), (-2.54, -2.34), (-2.15, -2.33), (-1.80, -2.26), (-1.51, -2.14), (-1.06, -1.87), (-1.06, -2.09), (-1.51, -2.36), (-1.80, -2.48), (-2.15, -2.55), (-2.54, -2.56), (-2.95, -2.52), (-3.34, -2.42), (-3.69, -2.27), (-3.98, -2.09), (-4.19, -1.88), (-4.30, -1.56), close: true, fill: white, stroke: 0.85pt)
  line((-3.54, -0.59), (-3.99, -0.86), (-4.19, -1.03), (-4.30, -1.34), (-4.19, -1.66), (-3.98, -1.87), (-3.69, -2.05), (-3.34, -2.20), (-2.95, -2.30), (-2.54, -2.34), (-2.15, -2.33), (-1.80, -2.26), (-1.51, -2.14), (-1.06, -1.87), (-1.25, -1.77), (-1.70, -2.04), (-1.95, -2.14), (-2.24, -2.20), (-2.58, -2.21), (-2.92, -2.18), (-3.25, -2.09), (-3.55, -1.97), (-3.80, -1.81), (-3.97, -1.64), (-4.07, -1.36), (-3.97, -1.10), (-3.80, -0.96), (-3.35, -0.69), close: true, fill: white, stroke: 0.95pt)

  circle((-3.48, -0.88), radius: (0.06, 0.08), fill: white, stroke: 0.7pt)
  circle((-1.20, -2.06), radius: (0.06, 0.08), fill: white, stroke: 0.7pt)

  line((-3.78, -0.72), (-1.08, -2.12), stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt))

  line((-3.77, -2.03), (-4.48, -2.45), (-4.32, -2.71), (-3.61, -2.29), close: true, fill: white, stroke: none)
  line((-3.77, -2.03), (-4.48, -2.45), stroke: 0.9pt)
  line((-3.61, -2.29), (-4.32, -2.71), stroke: 0.9pt)
  bezier((-3.77, -2.03), (-3.61, -2.29), (-3.65, -2.08), (-3.58, -2.19), stroke: 0.8pt)
  circle((-4.40, -2.58), radius: (0.11, 0.15), fill: white, stroke: 0.9pt)
  content((-4.40, -2.14), text(size: 8.5pt)[*1*])

  bezier((-3.92, -2.67), (-4.16, -2.07), (-3.70, -2.52), (-3.82, -2.12), stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content((-3.72, -2.74), text(size: 8.5pt)[$M_1$])

  line((-3.57, -0.72), (-3.57, 0.12), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-3.72, 0.02), text(size: 8.5pt)[$F_1$], anchor: "east")

  line((-1.29, -2.12), (-1.29, -2.96), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-1.14, -2.86), text(size: 8.5pt)[$F_1$], anchor: "west")

  line((-3.57, -0.83), (-3.30, -0.67), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((-1.29, -2.01), (-1.02, -1.85), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((-3.30, -0.67), (-1.02, -1.85), stroke: (paint: rgb("#1d4ed8"), thickness: 0.72pt), mark: (start: ">", end: ">", fill: rgb("#1d4ed8"), scale: 0.5))
  content((-1.60, -1.32), text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$])

  line((-0.04, -0.08), (-1.18, 0.51), (-1.10, 0.67), (0.04, 0.08), close: true, fill: white, stroke: none)
  line((-0.04, -0.08), (-1.18, 0.51), stroke: 0.85pt)
  line((0.04, 0.08), (-1.10, 0.67), stroke: 0.85pt)
  circle((-1.14, 0.59), radius: (0.07, 0.095), fill: white, stroke: 0.85pt)

  line((-0.095, 0.00), (-0.095, -1.35), (0.095, -1.35), (0.095, 0.00), close: true, fill: white, stroke: none)
  line((-0.095, 0.00), (-0.095, -1.35), stroke: 0.85pt)
  line((0.095, 0.00), (0.095, -1.35), stroke: 0.85pt)
  circle((0.00, -1.35), radius: (0.095, 0.045), fill: white, stroke: 0.85pt)

  line((0.04, 0.03), (0.27, 0.17), (-0.04, 0.33), (-0.27, 0.19), close: true, fill: white, stroke: 0.85pt)
  line((0.04, -0.33), (-0.27, -0.17), (-0.27, 0.19), (0.04, 0.03), close: true, fill: luma(246), stroke: 0.85pt)
  line((0.04, -0.33), (0.27, -0.19), (0.27, 0.17), (0.04, 0.03), close: true, fill: white, stroke: 0.85pt)

  line((-0.095, 0.18), (-0.095, 1.35), (0.095, 1.35), (0.095, 0.18), close: true, fill: white, stroke: none)
  line((-0.095, 0.18), (-0.095, 1.35), stroke: 0.85pt)
  line((0.095, 0.18), (0.095, 1.35), stroke: 0.85pt)
  circle((0.00, 1.35), radius: (0.095, 0.045), fill: white, stroke: 0.85pt)

  line((0.11, -0.16), (1.10, -0.67), (1.18, -0.51), (0.19, 0.00), close: true, fill: white, stroke: none)
  line((0.11, -0.16), (1.10, -0.67), stroke: 0.85pt)
  line((0.19, 0.00), (1.18, -0.51), stroke: 0.85pt)
  circle((1.14, -0.59), radius: (0.07, 0.095), fill: white, stroke: 0.85pt)

  line((-1.14, 0.59), (-1.14, -0.09), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-1.28, 0.16), text(size: 8.5pt)[$F_1$], anchor: "east")

  line((1.14, -0.59), (1.14, 0.09), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((1.28, -0.16), text(size: 8.5pt)[$F_1$], anchor: "west")

  line((0.00, 1.35), (1.97, 1.64), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((0.00, -1.35), (1.97, -1.06), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((1.97, -1.06), (1.97, 1.64), stroke: (paint: rgb("#1d4ed8"), thickness: 0.72pt), mark: (start: ">", end: ">", fill: rgb("#1d4ed8"), scale: 0.5))
  content((2.12, 0.86), text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$], anchor: "west")

  line((-0.25, 1.48), (1.26, 0.71), stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt))
  line((0.48, 0.76), (1.00, 0.84), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  line((0.51, 1.42), (1.00, 0.84), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  line((0.00, 1.35), (1.00, 0.84), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: (end: ">", fill: rgb("#c81e1e"), scale: 0.6))
  line((0.00, 1.35), (0.48, 0.76), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0.00, 1.35), (0.51, 1.42), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))

  bezier((0.30, 0.99), (0.55, 1.07), (0.38, 1.01), (0.47, 1.04), stroke: (paint: rgb("#c81e1e"), thickness: 0.75pt))
  content((0.62, 0.87), text(size: 8pt, fill: rgb("#c81e1e"))[$bold(beta)$])

  content((1.12, 0.86), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "west")
  content((0.48, 0.64), text(size: 8.5pt)[$F_2$], anchor: "north")
  content((0.60, 1.46), text(size: 8.5pt)[$Q$], anchor: "west")

  line((-0.48, -0.76), (-1.00, -0.84), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  line((-0.51, -1.42), (-1.00, -0.84), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  line((0.00, -1.35), (-1.00, -0.84), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: (end: ">", fill: rgb("#c81e1e"), scale: 0.6))
  line((0.00, -1.35), (-0.48, -0.76), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0.00, -1.35), (-0.51, -1.42), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))

  content((-1.12, -0.86), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "east")
  content((-0.48, -0.62), text(size: 8.5pt)[$F_2$], anchor: "south")
  content((-0.60, -1.46), text(size: 8.5pt)[$Q$], anchor: "east")

  line((5.65, 0.97), (6.70, 1.12), (6.74, 0.84), (5.69, 0.69), close: true, fill: white, stroke: none)
  line((5.65, 0.97), (6.70, 1.12), stroke: 0.9pt)
  line((5.69, 0.69), (6.74, 0.84), stroke: 0.9pt)
  circle((6.72, 0.98), radius: (0.07, 0.145), fill: white, stroke: 0.9pt)
  content((6.72, 1.34), text(size: 8.5pt)[*2*])

  bezier((6.14, 1.21), (6.26, 0.59), (6.34, 1.09), (6.38, 0.75), stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content((6.24, 0.36), text(size: 8.5pt)[$M_2$])

  line((3.65, 1.92), (4.32, 2.02), (4.80, 2.00), (5.22, 1.81), (5.53, 1.47), (5.70, 1.02), (5.70, 0.51), (5.53, 0.01), (5.43, 0.13), (5.60, 0.63), (5.60, 1.14), (5.43, 1.59), (5.12, 1.93), (4.70, 2.12), (4.22, 2.14), (3.55, 2.04), close: true, fill: white, stroke: 0.85pt)
  line((5.35, 1.33), (5.49, 0.95), (5.49, 0.52), (5.35, 0.09), (5.09, -0.28), (4.73, -0.55), (4.32, -0.68), (3.65, -0.78), (3.55, -0.66), (4.22, -0.56), (4.63, -0.43), (4.99, -0.16), (5.25, 0.21), (5.39, 0.64), (5.39, 1.07), (5.25, 1.45), close: true, fill: luma(246), stroke: 0.85pt)
  line((3.65, 1.92), (4.32, 2.02), (4.80, 2.00), (5.22, 1.81), (5.53, 1.47), (5.70, 1.02), (5.70, 0.51), (5.53, 0.01), (5.22, -0.43), (4.80, -0.74), (4.32, -0.90), (3.65, -1.00), (3.65, -0.78), (4.32, -0.68), (4.73, -0.55), (5.09, -0.28), (5.35, 0.09), (5.49, 0.52), (5.49, 0.95), (5.35, 1.33), (5.09, 1.62), (4.73, 1.79), (4.32, 1.80), (3.65, 1.70), close: true, fill: white, stroke: 0.95pt)
  line((3.65, 1.92), (3.55, 2.04), (3.55, 1.82), (3.65, 1.70), close: true, fill: luma(244), stroke: 0.85pt)
  line((3.65, -0.78), (3.55, -0.66), (3.55, -0.88), (3.65, -1.00), close: true, fill: luma(244), stroke: 0.85pt)

  circle((3.79, 2.01), radius: (0.09, 0.045), fill: white, stroke: 0.7pt)
  circle((3.79, -0.69), radius: (0.09, 0.045), fill: white, stroke: 0.7pt)

  line((3.79, 2.01), (3.35, 2.54), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((3.22, 2.54), text(size: 8.5pt)[$F_2$], anchor: "east")

  line((3.60, 1.87), (2.78, 1.75), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((2.68, 1.75), text(size: 8.5pt)[$Q$], anchor: "east")

  line((3.79, -0.90), (4.23, -1.43), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((4.36, -1.43), text(size: 8.5pt)[$F_2$], anchor: "west")

  line((2.78, -0.95), (3.60, -0.83), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((2.68, -0.95), text(size: 8.5pt)[$Q$], anchor: "east")
})
