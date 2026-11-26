#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Hatching - Left plate (-45 deg)
  line((-1.65, 0.70), (-1.47, 0.52), stroke: 0.45pt)
  line((-1.65, 0.94), (-1.23, 0.52), stroke: 0.45pt)
  line((-1.65, 1.18), (-0.99, 0.52), stroke: 0.45pt)
  line((-1.65, 1.42), (-0.75, 0.52), stroke: 0.45pt)
  line((-1.64, 1.65), (-0.51, 0.52), stroke: 0.45pt)
  line((-1.40, 1.65), (-0.27, 0.52), stroke: 0.45pt)
  line((-1.16, 1.65), (-0.03, 0.52), stroke: 0.45pt)
  line((-0.92, 1.65), (0, 0.73), stroke: 0.45pt)
  line((-0.68, 1.65), (0, 0.97), stroke: 0.45pt)
  line((-0.44, 1.65), (0, 1.21), stroke: 0.45pt)
  line((-0.20, 1.65), (0, 1.45), stroke: 0.45pt)

  line((-1.65, -1.46), (-1.46, -1.65), stroke: 0.45pt)
  line((-1.65, -1.22), (-1.22, -1.65), stroke: 0.45pt)
  line((-1.65, -0.98), (-0.98, -1.65), stroke: 0.45pt)
  line((-1.65, -0.74), (-0.74, -1.65), stroke: 0.45pt)
  line((-1.63, -0.52), (-0.50, -1.65), stroke: 0.45pt)
  line((-1.39, -0.52), (-0.26, -1.65), stroke: 0.45pt)
  line((-1.15, -0.52), (-0.02, -1.65), stroke: 0.45pt)
  line((-0.91, -0.52), (0, -1.43), stroke: 0.45pt)
  line((-0.67, -0.52), (0, -1.19), stroke: 0.45pt)
  line((-0.43, -0.52), (0, -0.95), stroke: 0.45pt)
  line((-0.19, -0.52), (0, -0.71), stroke: 0.45pt)

  // Hatching - Right plate (+45 deg)
  line((1.65, 0.70), (1.47, 0.52), stroke: 0.45pt)
  line((1.65, 0.94), (1.23, 0.52), stroke: 0.45pt)
  line((1.65, 1.18), (0.99, 0.52), stroke: 0.45pt)
  line((1.65, 1.42), (0.75, 0.52), stroke: 0.45pt)
  line((1.64, 1.65), (0.51, 0.52), stroke: 0.45pt)
  line((1.40, 1.65), (0.27, 0.52), stroke: 0.45pt)
  line((1.16, 1.65), (0.03, 0.52), stroke: 0.45pt)
  line((0.92, 1.65), (0, 0.73), stroke: 0.45pt)
  line((0.68, 1.65), (0, 0.97), stroke: 0.45pt)
  line((0.44, 1.65), (0, 1.21), stroke: 0.45pt)
  line((0.20, 1.65), (0, 1.45), stroke: 0.45pt)

  line((1.65, -1.46), (1.46, -1.65), stroke: 0.45pt)
  line((1.65, -1.22), (1.22, -1.65), stroke: 0.45pt)
  line((1.65, -0.98), (0.98, -1.65), stroke: 0.45pt)
  line((1.65, -0.74), (0.74, -1.65), stroke: 0.45pt)
  line((1.63, -0.52), (0.50, -1.65), stroke: 0.45pt)
  line((1.39, -0.52), (0.26, -1.65), stroke: 0.45pt)
  line((1.15, -0.52), (0.02, -1.65), stroke: 0.45pt)
  line((0.91, -0.52), (0, -1.43), stroke: 0.45pt)
  line((0.67, -0.52), (0, -1.19), stroke: 0.45pt)
  line((0.43, -0.52), (0, -0.95), stroke: 0.45pt)
  line((0.19, -0.52), (0, -0.71), stroke: 0.45pt)

  // Plate outlines
  line((-1.65, 0.52), (-1.65, 1.65), (0, 1.65), (0, 0.52), close: true, stroke: 1pt)
  line((-1.65, -0.52), (-1.65, -1.65), (0, -1.65), (0, -0.52), close: true, stroke: 1pt)
  line((0, 0.52), (0, 1.65), (1.65, 1.65), (1.65, 0.52), close: true, stroke: 1pt)
  line((0, -0.52), (0, -1.65), (1.65, -1.65), (1.65, -0.52), close: true, stroke: 1pt)

  // Bolt head (left)
  line((-2.37, 0.95), (-1.65, 0.95), (-1.65, -0.95), (-2.37, -0.95), stroke: 1pt)
  arc((-2.37, 0.87), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  arc((-2.37, -0.87), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((-2.45, 0.87), (-2.45, -0.87), stroke: 1pt)
  line((-2.45, 0.48), (-1.65, 0.48), stroke: 0.75pt)
  line((-2.45, -0.48), (-1.65, -0.48), stroke: 0.75pt)

  // Calibrated bolt shank & transition
  line((-1.65, 0.42), (-1.48, 0.42), (-1.35, 0.52), (0.30, 0.52), (0.48, 0.40), (3.02, 0.40), (3.10, 0.32), (3.10, -0.32), (3.02, -0.40), (0.48, -0.40), (0.30, -0.52), (-1.35, -0.52), (-1.48, -0.42), (-1.65, -0.42), stroke: 1pt)
  line((-1.35, 0.52), (-1.35, -0.52), stroke: 0.75pt)
  line((0.30, 0.52), (0.30, -0.52), stroke: 0.75pt)
  line((0.48, 0.40), (0.48, -0.40), stroke: 0.75pt)
  line((0.48, 0.34), (3.10, 0.34), stroke: 0.55pt)
  line((0.48, -0.34), (3.10, -0.34), stroke: 0.55pt)

  // Hex nut (right)
  line((1.73, 0.95), (2.37, 0.95), (2.45, 0.87), (2.45, -0.87), (2.37, -0.95), (1.73, -0.95), (1.65, -0.87), (1.65, 0.87), close: true, fill: white, stroke: 1pt)
  line((1.65, 0.48), (2.45, 0.48), stroke: 0.75pt)
  line((1.65, -0.48), (2.45, -0.48), stroke: 0.75pt)

  // Shear force vectors F_T
  line((-0.55, 2.55), (-0.55, 1.70), mark: (end: ">"), stroke: 1.5pt)
  content((-0.68, 2.25), text(size: 8.5pt)[$F_T$], anchor: "east")

  line((0.55, -2.55), (0.55, -1.70), mark: (end: ">"), stroke: 1.5pt)
  content((0.68, -2.25), text(size: 8.5pt)[$F_T$], anchor: "west")

  // Dimensions d and s
  line((-0.75, -0.52), (-0.75, 0.52), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.65, 0), text(size: 8pt)[$d$], anchor: "west")

  line((-1.35, -0.52), (-1.35, -2.65), stroke: 0.5pt)
  line((0.30, -0.52), (0.30, -2.65), stroke: 0.5pt)
  line((-1.35, -2.50), (0.30, -2.50), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.525, -2.42), text(size: 8pt)[$s$], anchor: "south")
})
