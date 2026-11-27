// Figura estratta da fatica.typ (riga 642) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.52cm, {
  // BBox: x in [-0.95, 4.35] (dx=5.30), y in [-0.85, 4.05], length=1.42cm -> larghezza = 7.53 cm <= 8.2 cm
  import draw: *

  // Riquadro assi principali (x = log10(N) - 4, y = (sigma_a - 10)/30)
  rect((0, 0), (4.0, 3.85), stroke: 0.9pt)

  // Ticks asse X (10^4 .. 10^8)
  for (xval, lbl) in ((0, $10^4$), (1, $10^5$), (2, $10^6$), (3, $10^7$), (4, $10^8$)) {
    line((xval, 0), (xval, -0.07), stroke: 0.7pt)
    line((xval, 3.85), (xval, 3.78), stroke: 0.55pt)
    content((xval, -0.12), anchor: "north", text(size: 7pt)[#lbl])
  }
  content((2.0, -0.40), anchor: "north", text(size: 7.5pt)[$N$])

  // Ticks asse Y (20 .. 120 MPa)
  for s in (20, 40, 60, 80, 100, 120) {
    let yval = (s - 10) / 30
    line((0, yval), (-0.07, yval), stroke: 0.7pt)
    line((4.0, yval), (3.93, yval), stroke: 0.55pt)
    content((-0.11, yval), anchor: "east", text(size: 7pt)[#s])
  }
  content((-0.68, 1.92), angle: 90deg, anchor: "center", text(size: 7.5pt)[$sigma_a$ (MPa)])

  // Riquadro parametri prova
  content((3.85, 3.68), anchor: "north-east", text(size: 7pt)[
    #align(right)[
      M12 \
      $sigma_m = 230$ MPa \
      Weibull-2p
    ]
  ])

  // Punti di rottura (x) distribuiti attorno a B50 tra B10 e B90
  let xpts = (
    (0.97, 3.33), (1.07, 3.33), (1.15, 3.33), (1.25, 3.33),
    (1.50, 2.33), (1.62, 2.33), (1.71, 2.33), (1.80, 2.33), (1.91, 2.33),
    (1.86, 1.67), (1.99, 1.67), (2.11, 1.67), (2.26, 1.67),
    (2.04, 1.33), (2.18, 1.33), (2.31, 1.33), (2.48, 1.33),
    (2.20, 1.00), (2.36, 1.00),
    (2.34, 0.76),
  )
  for (px, py) in xpts {
    let d = 0.045
    line((px - d, py - d), (px + d, py + d), stroke: 0.75pt)
    line((px - d, py + d), (px + d, py - d), stroke: 0.75pt)
  }

  // Run-outs (o) a troncamento N = 10^7
  let opts = (
    (3.00, 1.33), (2.88, 1.00), (3.02, 1.00), (3.00, 0.67), (3.00, 0.33),
  )
  for (px, py) in opts {
    circle((px, py), radius: 0.048, fill: white, stroke: 0.75pt + rgb("#1f77b4"))
  }

  // Curve iso-probabilità Weibull (B90, B50, B10)
  line((1.18, 3.45), (2.38, 1.55), (4.0, 1.55), stroke: (paint: black.transparentize(35%), thickness: 0.85pt, dash: "dashed"))
  content((3.42, 1.62), anchor: "south", text(size: 7pt)[$B_90$])

  line((1.05, 3.45), (2.38, 1.15), (4.0, 1.15), stroke: (paint: black, thickness: 1.0pt))
  content((3.42, 1.22), anchor: "south", text(size: 7pt, weight: "bold")[$B_50$])

  line((0.92, 3.45), (2.38, 0.72), (4.0, 0.72), stroke: (paint: rgb("#1f77b4"), thickness: 1.0pt))
  content((3.42, 0.79), anchor: "south", text(size: 7pt, fill: rgb("#1f77b4"), weight: "bold")[$B_10$])

  // Legenda inferiore
  line((0.35 - 0.045, -0.72 - 0.045), (0.35 + 0.045, -0.72 + 0.045), stroke: 0.75pt)
  line((0.35 - 0.045, -0.72 + 0.045), (0.35 + 0.045, -0.72 - 0.045), stroke: 0.75pt)
  content((0.48, -0.72), anchor: "west", text(size: 7pt)[rotture])

  circle((1.75, -0.72), radius: 0.048, fill: white, stroke: 0.75pt + rgb("#1f77b4"))
  content((1.88, -0.72), anchor: "west", text(size: 7pt)[*run-outs* (non rotture)])
})
