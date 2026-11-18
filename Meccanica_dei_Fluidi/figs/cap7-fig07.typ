// Figura estratta da capitoli/cap7.typ (riga 704) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1cm, {
  import draw: *

  line((2.15, 0.15), (2.27, -0.03), stroke: 0.6pt)
  line((2.30, 0.35), (2.42, 0.17), stroke: 0.6pt)
  line((2.44, 0.56), (2.56, 0.38), stroke: 0.6pt)
  line((2.59, 0.76), (2.71, 0.58), stroke: 0.6pt)
  line((2.74, 0.96), (2.86, 0.78), stroke: 0.6pt)
  line((2.88, 1.16), (3.00, 0.98), stroke: 0.6pt)
  line((3.03, 1.37), (3.15, 1.19), stroke: 0.6pt)
  line((3.18, 1.57), (3.30, 1.39), stroke: 0.6pt)
  line((3.32, 1.77), (3.44, 1.59), stroke: 0.6pt)
  line((3.47, 1.97), (3.59, 1.79), stroke: 0.6pt)
  line((3.62, 2.17), (3.74, 1.99), stroke: 0.6pt)
  line((3.76, 2.38), (3.88, 2.20), stroke: 0.6pt)
  line((3.91, 2.58), (4.03, 2.40), stroke: 0.6pt)
  line((4.06, 2.78), (4.18, 2.60), stroke: 0.6pt)
  line((4.21, 2.98), (4.33, 2.80), stroke: 0.6pt)
  line((4.35, 3.19), (4.47, 3.01), stroke: 0.6pt)
  line((4.50, 3.39), (4.62, 3.21), stroke: 0.6pt)
  line((4.65, 3.59), (4.77, 3.41), stroke: 0.6pt)
  line((4.79, 3.79), (4.91, 3.61), stroke: 0.6pt)
  line((4.94, 3.99), (5.06, 3.81), stroke: 0.6pt)
  line((5.09, 4.20), (5.21, 4.02), stroke: 0.6pt)
  line((5.23, 4.40), (5.35, 4.22), stroke: 0.6pt)
  line((5.38, 4.60), (5.50, 4.42), stroke: 0.6pt)
  line((5.53, 4.80), (5.65, 4.62), stroke: 0.6pt)
  line((5.68, 5.01), (5.80, 4.83), stroke: 0.6pt)
  line((5.82, 5.21), (5.94, 5.03), stroke: 0.6pt)

  line((2.09, 0.07), (5.91, 5.33), stroke: 1pt)

  line((0.90, 3.35), (2.41, 3.35), stroke: 1pt)
  arc((2.41, 5.116), start: 270deg, stop: 324deg, radius: 1.766, anchor: "origin", stroke: 1pt)
  line((3.839, 4.078), (5.062, 5.760), stroke: 1pt)

  line((0.90, 2.05), (2.416, 2.05), stroke: 1pt)
  arc((2.416, 1.710), start: -36deg, stop: 90deg, radius: 0.340, anchor: "origin", stroke: 1pt)
  line((2.691, 1.510), (1.887, 0.404), stroke: 1pt)

  line((1.75, 2.05), (1.75, 3.35), stroke: 0.6pt)
  line((5.411, 4.642), (4.650, 5.194), stroke: 0.6pt)
  line((2.442, 0.556), (2.151, 0.768), stroke: 0.6pt)

  line((2.25, 2.70), (5.15, 2.70), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((4.00, 2.70), start: 0deg, stop: 54deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)

  line((5.91, 5.33), (6.44, 6.06), mark: (end: ">"), stroke: 1pt)
  line((4.00, 2.70), (4.93, 2.02), mark: (end: ">"), stroke: 1pt)

  line((1.08, 2.70), (2.15, 2.70), mark: (end: ">"), stroke: 1pt)
  line((4.296, 3.906), (4.766, 4.554), mark: (end: ">"), stroke: 1pt)
  line((2.808, 1.366), (2.432, 0.848), mark: (end: ">"), stroke: 1pt)

  line((0.90, 2.05), (0.90, 3.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.822, 5.208), (5.062, 5.760), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((2.178, 0.192), (1.887, 0.404), mark: (start: ">", end: ">"), stroke: 0.6pt)

  content((0.80, 2.70), text(size: 9pt)[$h_1$], anchor: "east")
  content((1.40, 2.82), text(size: 9pt)[$U_1$], anchor: "south")
  content((1.75, 1.93), text(size: 9pt)[$S_1$], anchor: "north")
  content((4.05, 4.55), text(size: 9pt)[$U_2$], anchor: "south-east")
  content((4.58, 5.25), text(size: 9pt)[$S_2$], anchor: "south-east")
  content((4.98, 5.82), text(size: 9pt)[$h_2$], anchor: "south-east")
  content((2.40, 1.30), text(size: 9pt)[$U_3$], anchor: "east")
  content((2.06, 0.82), text(size: 9pt)[$S_3$], anchor: "east")
  content((1.80, 0.46), text(size: 9pt)[$h_3$], anchor: "east")
  content((4.72, 3.02), text(size: 8.5pt)[$theta$], anchor: "west")
  content((6.45, 5.95), text(size: 8.5pt)[$t$], anchor: "west")
  content((5.00, 2.04), text(size: 8.5pt)[$n$], anchor: "west")
})
