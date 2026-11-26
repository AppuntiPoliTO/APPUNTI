#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Plate outline
  line((0.30, 0.70), (4.60, 0.70), (4.60, 1.45), (0.30, 1.45), close: true, stroke: 0.9pt)
  line((0.30, 1.45), (3.90, 3.25), (8.20, 3.25), (4.60, 1.45), stroke: 0.9pt)
  line((4.60, 0.70), (8.20, 2.50), (8.20, 3.25), stroke: 0.9pt)

  // Weld bead white background to occlude back plate edge
  line((1.60, 1.45), (5.20, 3.25), (5.48, 3.39), (5.75, 3.42), (6.02, 3.39), (6.30, 3.25), (2.70, 1.45), close: true, fill: white, stroke: none)

  // Weld V-groove cross-section (black fill)
  line((2.15, 0.70), (1.60, 1.45), (1.88, 1.59), (2.15, 1.62), (2.42, 1.59), (2.70, 1.45), close: true, fill: black, stroke: none)
  line((1.60, 1.45), (2.15, 0.70), (2.70, 1.45), stroke: 0.9pt)
  bezier((1.60, 1.45), (2.70, 1.45), (1.88, 1.67), (2.42, 1.67), stroke: 0.9pt)

  // Weld bead longitudinal edges and back cap
  line((1.60, 1.45), (5.20, 3.25), stroke: 0.9pt)
  line((2.70, 1.45), (6.30, 3.25), stroke: 0.9pt)
  bezier((5.20, 3.25), (6.30, 3.25), (5.48, 3.47), (6.02, 3.47), stroke: 0.9pt)

  // Weld ripples
  bezier((2.10, 1.70), (3.20, 1.70), (2.38, 1.92), (2.92, 1.92), stroke: 0.75pt)
  bezier((2.61, 1.95), (3.71, 1.95), (2.89, 2.17), (3.43, 2.17), stroke: 0.75pt)
  bezier((3.11, 2.21), (4.21, 2.21), (3.39, 2.43), (3.93, 2.43), stroke: 0.75pt)
  bezier((3.62, 2.46), (4.72, 2.46), (3.90, 2.68), (4.44, 2.68), stroke: 0.75pt)
  bezier((4.12, 2.71), (5.22, 2.71), (4.40, 2.93), (4.94, 2.93), stroke: 0.75pt)
  bezier((4.62, 2.96), (5.72, 2.96), (4.90, 3.18), (5.44, 3.18), stroke: 0.75pt)

  // Dimension H
  line((0.30, 0.70), (0.30, 0.22), stroke: 0.55pt)
  line((4.60, 0.70), (4.60, 0.22), stroke: 0.55pt)
  line((0.30, 0.30), (4.60, 0.30), mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((2.45, 0.10), text(size: 9pt)[$H$], anchor: "center")

  // Dimension s
  line((3.55, 0.70), (3.55, 1.45), mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((3.40, 1.08), text(size: 9pt)[$s$], anchor: "east")

  // Dimension L
  line((3.30, 1.45), (4.92, 2.26), mark: (start: ">"), stroke: 0.65pt)
  line((5.28, 2.44), (6.90, 3.25), mark: (end: ">"), stroke: 0.65pt)
  content((5.10, 2.35), text(size: 9pt)[$L$], anchor: "center")

  // Stress vectors
  line((1.85, 0.92), (1.05, 0.52), mark: (end: ">"), stroke: 1.0pt)
  content((1.35, 1.12), text(size: 9pt)[$sigma_("//")$], anchor: "center")

  line((6.85, 2.45), (5.75, 1.90), mark: (end: ">"), stroke: 1.0pt)
  content((5.45, 1.72), text(size: 9pt)[$tau_("//")$], anchor: "center")

  line((6.85, 1.85), (8.25, 1.85), mark: (end: ">"), stroke: 1.0pt)
  content((7.85, 1.55), text(size: 9pt)[$sigma_perp$], anchor: "center")
})
