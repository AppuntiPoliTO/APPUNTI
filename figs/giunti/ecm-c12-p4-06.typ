// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-3.88, -2.27), (0.65, 0.38), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((-2.88, -0.42), (5.95, 0.87), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))

  bezier((-1.87, -0.27), (-1.26, -0.74), (-1.73, -0.44), (-1.52, -0.61), stroke: (paint: rgb("#c81e1e"), thickness: 0.85pt), mark: (start: ">", end: ">", fill: rgb("#c81e1e"), scale: 0.45))
  content((-1.82, -0.66), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(beta)$])

  line((-2.63, -0.51), (-3.07, -0.77), (-3.28, -1.09), (-3.28, -1.31), (-3.07, -0.99), (-2.63, -0.73), close: true, fill: luma(248), stroke: 0.85pt)
  line((-3.52, -1.07), (-3.42, -1.33), (-3.01, -1.66), (-2.40, -1.86), (-1.74, -1.88), (-1.21, -1.73), (-0.77, -1.47), (-0.77, -1.69), (-1.21, -1.95), (-1.74, -2.10), (-2.40, -2.08), (-3.01, -1.88), (-3.42, -1.55), (-3.52, -1.29), close: true, fill: white, stroke: 0.85pt)
  line((-2.81, -0.41), (-3.25, -0.67), (-3.52, -1.07), (-3.42, -1.33), (-3.01, -1.66), (-2.40, -1.86), (-1.74, -1.88), (-1.21, -1.73), (-0.77, -1.47), (-0.95, -1.37), (-1.39, -1.63), (-1.83, -1.76), (-2.37, -1.74), (-2.87, -1.58), (-3.20, -1.31), (-3.28, -1.09), (-3.07, -0.77), (-2.63, -0.51), close: true, fill: white, stroke: 0.95pt)

  circle((-2.76, -0.70), radius: (0.06, 0.08), fill: white, stroke: 0.7pt)
  circle((-0.90, -1.66), radius: (0.06, 0.08), fill: white, stroke: 0.7pt)

  line((-3.06, -0.54), (-0.78, -1.72), stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt))

  line((-3.09, -1.64), (-3.80, -2.05), (-3.64, -2.31), (-2.93, -1.90), close: true, fill: white, stroke: none)
  line((-3.09, -1.64), (-3.80, -2.05), stroke: 0.9pt)
  line((-2.93, -1.90), (-3.64, -2.31), stroke: 0.9pt)
  bezier((-3.09, -1.64), (-2.93, -1.90), (-2.97, -1.69), (-2.90, -1.80), stroke: 0.8pt)
  circle((-3.72, -2.18), radius: (0.11, 0.15), fill: white, stroke: 0.9pt)
  content((-3.72, -1.76), text(size: 8.5pt)[*1*])

  bezier((-3.24, -2.27), (-3.48, -1.67), (-3.02, -2.12), (-3.14, -1.72), stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content((-3.05, -2.34), text(size: 8.5pt)[$M_1$])

  line((-2.85, -0.54), (-2.85, 0.26), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-2.98, 0.18), text(size: 8.5pt)[$F_1$], anchor: "east")

  line((-0.99, -1.72), (-0.99, -2.52), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-0.86, -2.44), text(size: 8.5pt)[$F_1$], anchor: "west")

  line((-2.85, -0.65), (-2.62, -0.52), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((-0.99, -1.61), (-0.76, -1.48), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((-2.62, -0.52), (-0.76, -1.48), stroke: (paint: rgb("#1d4ed8"), thickness: 0.72pt), mark: (start: ">", end: ">", fill: rgb("#1d4ed8"), scale: 0.5))
  content((-1.22, -1.04), text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$])

  line((-0.04, -0.08), (-0.97, 0.40), (-0.89, 0.56), (0.04, 0.08), close: true, fill: white, stroke: none)
  line((-0.04, -0.08), (-0.97, 0.40), stroke: 0.85pt)
  line((0.04, 0.08), (-0.89, 0.56), stroke: 0.85pt)
  circle((-0.93, 0.48), radius: (0.07, 0.095), fill: white, stroke: 0.85pt)

  line((-0.095, 0.00), (-0.095, -1.10), (0.095, -1.10), (0.095, 0.00), close: true, fill: white, stroke: none)
  line((-0.095, 0.00), (-0.095, -1.10), stroke: 0.85pt)
  line((0.095, 0.00), (0.095, -1.10), stroke: 0.85pt)
  circle((0.00, -1.10), radius: (0.095, 0.045), fill: white, stroke: 0.85pt)

  line((0.03, 0.03), (0.25, 0.16), (-0.03, 0.31), (-0.25, 0.18), close: true, fill: white, stroke: 0.85pt)
  line((0.03, -0.31), (-0.25, -0.16), (-0.25, 0.18), (0.03, 0.03), close: true, fill: luma(248), stroke: 0.85pt)
  line((0.03, -0.31), (0.25, -0.18), (0.25, 0.16), (0.03, 0.03), close: true, fill: white, stroke: 0.85pt)

  line((-0.095, 0.17), (-0.095, 1.10), (0.095, 1.10), (0.095, 0.17), close: true, fill: white, stroke: none)
  line((-0.095, 0.17), (-0.095, 1.10), stroke: 0.85pt)
  line((0.095, 0.17), (0.095, 1.10), stroke: 0.85pt)
  circle((0.00, 1.10), radius: (0.095, 0.045), fill: white, stroke: 0.85pt)

  line((0.10, -0.15), (0.89, -0.56), (0.97, -0.40), (0.18, 0.01), close: true, fill: white, stroke: none)
  line((0.10, -0.15), (0.89, -0.56), stroke: 0.85pt)
  line((0.18, 0.01), (0.97, -0.40), stroke: 0.85pt)
  circle((0.93, -0.48), radius: (0.07, 0.095), fill: white, stroke: 0.85pt)

  line((-0.93, 0.48), (-0.93, -0.26), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((-1.06, -0.18), text(size: 8.5pt)[$F_1$], anchor: "east")

  line((0.93, -0.48), (0.93, 0.26), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((1.06, 0.18), text(size: 8.5pt)[$F_1$], anchor: "west")

  line((0.00, 1.10), (1.54, 1.32), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((0.00, -1.10), (1.54, -0.88), stroke: (paint: rgb("#1d4ed8"), thickness: 0.45pt, dash: "dotted"))
  line((1.54, -0.88), (1.54, 1.32), stroke: (paint: rgb("#1d4ed8"), thickness: 0.72pt), mark: (start: ">", end: ">", fill: rgb("#1d4ed8"), scale: 0.5))
  content((1.66, 0.72), text(size: 8.5pt, fill: rgb("#1d4ed8"))[$bold(h)$], anchor: "west")

  line((-0.25, 1.23), (1.31, 0.43), stroke: (paint: rgb("#c81e1e"), dash: "dashed", thickness: 0.65pt))
  line((0.51, 0.48), (1.06, 0.56), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((0.55, 1.18), (1.06, 0.56), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((0.00, 1.10), (1.06, 0.56), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: (end: ">", fill: rgb("#c81e1e"), scale: 0.6))
  line((0.00, 1.10), (0.51, 0.48), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0.00, 1.10), (0.55, 1.18), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))

  bezier((0.33, 0.70), (0.61, 0.79), (0.42, 0.72), (0.52, 0.75), stroke: (paint: rgb("#c81e1e"), thickness: 0.75pt))
  content((0.62, 0.62), text(size: 8pt, fill: rgb("#c81e1e"))[$bold(beta)$])

  content((1.14, 0.62), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "west")
  content((0.48, 0.36), text(size: 8.5pt)[$F_2$], anchor: "north")
  content((0.62, 1.24), text(size: 8.5pt)[$Q$], anchor: "west")

  line((-0.51, -0.48), (-1.06, -0.56), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((-0.55, -1.18), (-1.06, -0.56), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(90)))
  line((0.00, -1.10), (-1.06, -0.56), stroke: (paint: rgb("#c81e1e"), thickness: 1.05pt), mark: (end: ">", fill: rgb("#c81e1e"), scale: 0.6))
  line((0.00, -1.10), (-0.51, -0.48), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0.00, -1.10), (-0.55, -1.18), stroke: 0.95pt, mark: (end: ">", fill: black, scale: 0.6))

  content((-1.14, -0.60), text(size: 8.5pt, fill: rgb("#c81e1e"))[$bold(P)$], anchor: "east")
  content((-0.46, -0.42), text(size: 8.5pt)[$F_2$], anchor: "south")
  content((-0.62, -1.24), text(size: 8.5pt)[$Q$], anchor: "east")

  line((4.65, 0.82), (5.69, 0.97), (5.73, 0.69), (4.69, 0.54), close: true, fill: white, stroke: none)
  line((4.65, 0.82), (5.69, 0.97), stroke: 0.9pt)
  line((4.69, 0.54), (5.73, 0.69), stroke: 0.9pt)
  circle((5.71, 0.83), radius: (0.07, 0.145), fill: white, stroke: 0.9pt)
  content((5.71, 1.18), text(size: 8.5pt)[*2*])

  bezier((5.10, 1.06), (5.22, 0.44), (5.30, 0.94), (5.34, 0.60), stroke: 0.85pt, mark: (end: ">", fill: black, scale: 0.55))
  content((5.20, 0.22), text(size: 8.5pt)[$M_2$])

  line((2.90, 1.56), (3.55, 1.66), (4.13, 1.58), (4.56, 1.20), (4.71, 0.62), (4.56, -0.01), (4.46, 0.11), (4.61, 0.74), (4.46, 1.32), (4.03, 1.70), (3.45, 1.78), (2.80, 1.68), close: true, fill: white, stroke: 0.85pt)
  line((4.37, 1.06), (4.50, 0.59), (4.37, 0.07), (4.03, -0.34), (3.55, -0.54), (2.90, -0.64), (2.80, -0.52), (3.45, -0.42), (3.93, -0.22), (4.27, 0.19), (4.40, 0.71), (4.27, 1.18), close: true, fill: luma(248), stroke: 0.85pt)
  line((2.90, 1.56), (3.55, 1.66), (4.13, 1.58), (4.56, 1.20), (4.71, 0.62), (4.56, -0.01), (4.13, -0.51), (3.55, -0.76), (2.90, -0.86), (2.90, -0.64), (3.55, -0.54), (4.03, -0.34), (4.37, 0.07), (4.50, 0.59), (4.37, 1.06), (4.03, 1.38), (3.55, 1.44), (2.90, 1.34), close: true, fill: white, stroke: 0.95pt)
  line((2.90, 1.56), (2.80, 1.68), (2.80, 1.46), (2.90, 1.34), close: true, fill: luma(245), stroke: 0.85pt)
  line((2.90, -0.64), (2.80, -0.52), (2.80, -0.74), (2.90, -0.86), close: true, fill: luma(245), stroke: 0.85pt)

  circle((3.04, 1.65), radius: (0.09, 0.045), fill: white, stroke: 0.7pt)
  circle((3.04, -0.55), radius: (0.09, 0.045), fill: white, stroke: 0.7pt)

  line((3.04, 1.65), (2.60, 2.18), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((2.48, 2.18), text(size: 8.5pt)[$F_2$], anchor: "east")

  line((2.85, 1.51), (2.03, 1.39), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((1.93, 1.39), text(size: 8.5pt)[$Q$], anchor: "east")

  line((3.04, -0.75), (3.48, -1.28), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((3.58, -1.28), text(size: 8.5pt)[$F_2$], anchor: "west")

  line((2.03, -0.81), (2.85, -0.69), stroke: 1pt, mark: (end: ">", fill: black, scale: 0.6))
  content((1.93, -0.81), text(size: 8.5pt)[$Q$], anchor: "east")
})
