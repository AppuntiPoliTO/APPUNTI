// Figura estratta da collegamenti filettati.typ (riga 1075) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  content((1.7, 3.05), text(size: 9pt)[_prima del montaggio_])
  content((6.9, 3.05), text(size: 9pt)[_dopo il montaggio_])

  line((0.0, 0.25), (0.0, 0.0), (1.0, 0.0), (1.0, 0.25), stroke: 0.7pt)
  line((0.0, 2.05), (0.0, 2.25), (0.85, 2.25), stroke: 0.7pt)
  line((1.0, 1.75), (1.0, 1.95), (0.45, 1.95), stroke: 0.7pt)
  line((0.55, 2.55), (0.55, 2.25), mark: (end: ">"), stroke: 0.6pt)
  line((0.55, 1.65), (0.55, 1.95), mark: (end: ">"), stroke: 0.6pt)

  line((0.0, 0.25), (-0.13, 0.314), (0.13, 0.443), (-0.13, 0.571), (0.13, 0.700), (-0.13, 0.829), (0.13, 0.957), (-0.13, 1.086), (0.13, 1.214), (-0.13, 1.343), (0.13, 1.471), (-0.13, 1.600), (0.13, 1.729), (-0.13, 1.857), (0.13, 1.986), (0.0, 2.05), stroke: 1.1pt)
  line((1.0, 0.25), (0.87, 0.313), (1.13, 0.438), (0.87, 0.563), (1.13, 0.688), (0.87, 0.813), (1.13, 0.938), (0.87, 1.063), (1.13, 1.188), (0.87, 1.313), (1.13, 1.438), (0.87, 1.563), (1.13, 1.688), (1.0, 1.75), stroke: 1.1pt)

  circle((0.0, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((0.0, 2.05), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((1.0, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((1.0, 1.75), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)

  content((0.5, 1.05), text(size: 8.5pt)[A])
  content((-0.22, 1.15), text(size: 8pt)[$delta_p$], anchor: "east")
  content((1.22, 1.00), text(size: 8pt)[$delta_v$], anchor: "west")
  content((0.48, 2.45), text(size: 8pt)[$i$], anchor: "east")

  line((2.4, 0.25), (2.4, 0.0), (3.4, 0.0), (3.4, 0.25), stroke: 0.7pt)
  line((2.4, 2.05), (2.4, 2.25), (3.25, 2.25), stroke: 0.7pt)
  line((3.4, 1.75), (3.4, 1.95), (2.85, 1.95), stroke: 0.7pt)
  line((2.95, 2.55), (2.95, 2.25), mark: (end: ">"), stroke: 0.6pt)
  line((2.95, 1.65), (2.95, 1.95), mark: (end: ">"), stroke: 0.6pt)

  line((2.4, 0.25), (2.27, 0.325), (2.53, 0.475), (2.27, 0.625), (2.53, 0.775), (2.4, 0.85), stroke: 1.1pt)
  line((2.4, 0.85), (2.27, 0.925), (2.53, 1.075), (2.27, 1.225), (2.53, 1.375), (2.4, 1.45), stroke: 1.1pt)
  line((2.4, 1.45), (2.27, 1.525), (2.53, 1.675), (2.27, 1.825), (2.53, 1.975), (2.4, 2.05), stroke: 1.1pt)
  line((3.4, 0.25), (3.27, 0.313), (3.53, 0.438), (3.27, 0.563), (3.53, 0.688), (3.27, 0.813), (3.53, 0.938), (3.27, 1.063), (3.53, 1.188), (3.27, 1.313), (3.53, 1.438), (3.27, 1.563), (3.53, 1.688), (3.4, 1.75), stroke: 1.1pt)

  circle((2.4, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((2.4, 0.85), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((2.4, 1.45), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((2.4, 2.05), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((3.4, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((3.4, 1.75), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)

  content((2.9, 1.05), text(size: 8.5pt)[B])
  content((2.18, 1.75), text(size: 8pt)[$delta_p^a$], anchor: "east")
  content((2.18, 1.15), text(size: 8pt)[$delta_p^b$], anchor: "east")
  content((2.18, 0.55), text(size: 8pt)[$delta_p^c$], anchor: "east")
  content((3.62, 1.00), text(size: 8pt)[$delta_v$], anchor: "west")
  content((2.88, 2.45), text(size: 8pt)[$i$], anchor: "east")

  line((5.2, 0.25), (5.2, 0.0), (6.2, 0.0), (6.2, 0.25), stroke: 0.7pt)
  line((5.2, 1.90), (5.2, 2.10), (6.2, 2.10), (6.2, 1.90), stroke: 0.7pt)

  line((5.2, 0.25), (5.07, 0.309), (5.33, 0.427), (5.07, 0.545), (5.33, 0.663), (5.07, 0.780), (5.33, 0.898), (5.07, 1.016), (5.33, 1.134), (5.07, 1.252), (5.33, 1.370), (5.07, 1.488), (5.33, 1.605), (5.07, 1.723), (5.33, 1.841), (5.2, 1.90), stroke: 1.1pt)
  line((6.2, 0.25), (6.07, 0.319), (6.33, 0.456), (6.07, 0.594), (6.33, 0.731), (6.07, 0.869), (6.33, 1.006), (6.07, 1.144), (6.33, 1.281), (6.07, 1.419), (6.33, 1.556), (6.07, 1.694), (6.33, 1.831), (6.2, 1.90), stroke: 1.1pt)

  circle((5.2, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((5.2, 1.90), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((6.2, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((6.2, 1.90), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)

  content((5.7, 1.08), text(size: 8.5pt)[A])
  content((4.98, 1.08), text(size: 8pt)[$delta_p$], anchor: "east")
  content((6.42, 1.08), text(size: 8pt)[$delta_v$], anchor: "west")

  line((7.6, 0.25), (7.6, 0.0), (8.6, 0.0), (8.6, 0.25), stroke: 0.7pt)
  line((7.6, 1.90), (7.6, 2.10), (8.6, 2.10), (8.6, 1.90), stroke: 0.7pt)

  line((7.6, 0.25), (7.47, 0.319), (7.73, 0.456), (7.47, 0.594), (7.73, 0.731), (7.6, 0.80), stroke: 1.1pt)
  line((7.6, 0.80), (7.47, 0.869), (7.73, 1.006), (7.47, 1.144), (7.73, 1.281), (7.6, 1.35), stroke: 1.1pt)
  line((7.6, 1.35), (7.47, 1.419), (7.73, 1.556), (7.47, 1.694), (7.73, 1.831), (7.6, 1.90), stroke: 1.1pt)
  line((8.6, 0.25), (8.47, 0.319), (8.73, 0.456), (8.47, 0.594), (8.73, 0.731), (8.47, 0.869), (8.73, 1.006), (8.47, 1.144), (8.73, 1.281), (8.47, 1.419), (8.73, 1.556), (8.47, 1.694), (8.73, 1.831), (8.6, 1.90), stroke: 1.1pt)

  circle((7.6, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((7.6, 0.80), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((7.6, 1.35), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((7.6, 1.90), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((8.6, 0.25), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)
  circle((8.6, 1.90), radius: 0.04, fill: rgb("#00a878"), stroke: 0.5pt)

  content((8.1, 1.08), text(size: 8.5pt)[B])
  content((7.38, 1.625), text(size: 8pt)[$delta_p^a$], anchor: "east")
  content((7.38, 1.075), text(size: 8pt)[$delta_p^b$], anchor: "east")
  content((7.38, 0.525), text(size: 8pt)[$delta_p^c$], anchor: "east")
  content((8.82, 1.08), text(size: 8pt)[$delta_v$], anchor: "west")
})
