#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Base plate
  line((0.30, 0.70), (4.50, 0.70), (4.50, 1.30), (0.30, 1.30), close: true, stroke: 0.9pt)
  line((0.30, 1.30), (3.50, 2.90), (7.70, 2.90), (4.50, 1.30), stroke: 0.9pt)
  line((4.50, 0.70), (7.70, 2.30), (7.70, 2.90), stroke: 0.9pt)

  // Vertical web white fill to occlude back base plate edge
  line((2.08, 1.70), (2.08, 3.70), (5.28, 5.30), (5.92, 5.30), (5.92, 2.90), (2.72, 1.30), (2.40, 1.30), close: true, fill: white, stroke: none)

  // Vertical web outline
  line((2.08, 1.70), (2.08, 3.70), (2.72, 3.70), (2.72, 1.70), stroke: 0.9pt)
  line((2.08, 3.70), (5.28, 5.30), (5.92, 5.30), (2.72, 3.70), stroke: 0.9pt)
  line((5.92, 5.30), (5.92, 3.30), stroke: 0.9pt)

  // Right weld bead along joint
  merge-path(close: true, fill: white, stroke: none, {
    line((2.72, 1.70), (5.92, 3.30))
    bezier((5.92, 3.30), (6.28, 2.90), (6.18, 3.30), (6.28, 3.12))
    line((6.28, 2.90), (3.08, 1.30))
    bezier((3.08, 1.30), (2.72, 1.70), (3.08, 1.52), (2.98, 1.70))
  })
  line((2.72, 1.70), (5.92, 3.30), stroke: 0.85pt)
  line((3.08, 1.30), (6.28, 2.90), stroke: 0.85pt)
  bezier((5.92, 3.30), (6.28, 2.90), (6.18, 3.30), (6.28, 3.12), stroke: 0.85pt)

  // Weld ripples
  bezier((3.04, 1.86), (3.40, 1.46), (3.30, 1.86), (3.40, 1.68), stroke: 0.7pt)
  bezier((3.36, 2.02), (3.72, 1.62), (3.62, 2.02), (3.72, 1.84), stroke: 0.7pt)
  bezier((3.68, 2.18), (4.04, 1.78), (3.94, 2.18), (4.04, 2.00), stroke: 0.7pt)
  bezier((4.00, 2.34), (4.36, 1.94), (4.26, 2.34), (4.36, 2.16), stroke: 0.7pt)
  bezier((4.32, 2.50), (4.68, 2.10), (4.58, 2.50), (4.68, 2.32), stroke: 0.7pt)
  bezier((4.64, 2.66), (5.00, 2.26), (4.90, 2.66), (5.00, 2.48), stroke: 0.7pt)
  bezier((4.96, 2.82), (5.32, 2.42), (5.22, 2.82), (5.32, 2.64), stroke: 0.7pt)
  bezier((5.28, 2.98), (5.64, 2.58), (5.54, 2.98), (5.64, 2.80), stroke: 0.7pt)
  bezier((5.60, 3.14), (5.96, 2.74), (5.86, 3.14), (5.96, 2.96), stroke: 0.7pt)

  // Left weld fillet cross-section (black fill)
  merge-path(close: true, fill: black, stroke: 0.85pt, {
    line((2.40, 1.30), (2.08, 1.70))
    bezier((2.08, 1.70), (1.72, 1.30), (1.82, 1.70), (1.72, 1.52))
    line((1.72, 1.30), (2.40, 1.30))
  })

  // Right weld fillet cross-section (black fill)
  merge-path(close: true, fill: black, stroke: 0.85pt, {
    line((2.40, 1.30), (2.72, 1.70))
    bezier((2.72, 1.70), (3.08, 1.30), (2.98, 1.70), (3.08, 1.52))
    line((3.08, 1.30), (2.40, 1.30))
  })

  // Dimension H
  line((0.30, 0.70), (0.30, 0.22), stroke: 0.55pt)
  line((4.50, 0.70), (4.50, 0.22), stroke: 0.55pt)
  line((0.30, 0.30), (4.50, 0.30), mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((2.40, 0.10), text(size: 9pt)[$H$], anchor: "center")

  // Dimension s
  line((2.08, 3.70), (2.08, 4.32), stroke: 0.55pt)
  line((2.72, 3.70), (2.72, 4.32), stroke: 0.55pt)
  line((2.08, 4.22), (2.72, 4.22), mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((2.40, 4.44), text(size: 9pt)[$s$], anchor: "center")

  // Dimension L
  line((4.50, 0.70), (5.05, 0.70), stroke: 0.55pt)
  line((7.70, 2.30), (8.25, 2.30), stroke: 0.55pt)
  line((4.95, 0.70), (6.37, 1.41), mark: (start: ">"), stroke: 0.65pt)
  line((6.73, 1.59), (8.15, 2.30), mark: (end: ">"), stroke: 0.65pt)
  content((6.55, 1.50), text(size: 9pt)[$L$], anchor: "center")

  // Stress vectors
  line((2.10, 1.00), (1.25, 0.575), mark: (end: ">"), stroke: 1.0pt)
  content((1.90, 0.55), text(size: 9pt)[$sigma_("//")$], anchor: "center")

  line((4.65, 2.95), (3.75, 2.50), mark: (end: ">"), stroke: 1.0pt)
  content((3.65, 2.82), text(size: 9pt)[$tau_("//")$], anchor: "center")

  line((4.65, 3.05), (4.65, 3.95), mark: (end: ">"), stroke: 1.0pt)
  content((4.90, 3.65), text(size: 9pt)[$sigma_perp$], anchor: "west")
})
