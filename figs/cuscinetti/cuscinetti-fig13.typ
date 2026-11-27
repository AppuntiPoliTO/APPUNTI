// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((-3.9, -2.0), (-2.1, 2.0), fill: rgb("#dcdfe2"), stroke: none)
  rect((1.8, -2.0), (4.0, 2.0), fill: rgb("#dcdfe2"), stroke: none)

  line(
    (-3.9, -0.7), (-3.9, 0.7), (-3.6, 0.7), (-3.5, 0.9), (-2.3, 0.9),
    (-2.3, 1.3), (-2.1, 1.3), (-2.1, -1.3), (-2.3, -1.3), (-2.3, -0.9),
    (-3.5, -0.9), (-3.6, -0.7), close: true,
    fill: rgb("#90989e"), stroke: none
  )
  rect((-3.9, -0.45), (-2.1, 0.45), fill: rgb("#a6aeb4"), stroke: none)
  rect((-3.9, -0.22), (-2.1, 0.22), fill: rgb("#c4ccd2"), stroke: none)
  rect((-3.9, -0.08), (-2.1, 0.08), fill: rgb("#eef3f7"), stroke: none)

  rect((-3.9, -0.7), (-3.5, 0.7), fill: rgb("#788086"), stroke: none)
  rect((-3.9, -0.35), (-3.5, 0.35), fill: rgb("#949ca2"), stroke: none)
  rect((-3.9, -0.12), (-3.5, 0.12), fill: rgb("#b8c0c6"), stroke: none)
  line((-3.8, 0.7), (-3.7, -0.7), stroke: (paint: rgb("#555c60"), thickness: 0.45pt))
  line((-3.7, 0.7), (-3.6, -0.7), stroke: (paint: rgb("#555c60"), thickness: 0.45pt))
  line((-3.6, 0.7), (-3.5, -0.7), stroke: (paint: rgb("#555c60"), thickness: 0.45pt))

  line(
    (-3.9, 0.7), (-3.6, 0.7), (-3.5, 0.9), (-2.3, 0.9), (-2.3, 1.3), (-2.1, 1.3),
    stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (-3.9, -0.7), (-3.6, -0.7), (-3.5, -0.9), (-2.3, -0.9), (-2.3, -1.3), (-2.1, -1.3),
    stroke: (paint: black, thickness: 0.75pt)
  )
  line((-3.9, -0.7), (-3.9, 0.7), stroke: (paint: black, thickness: 0.75pt))
  line((-3.6, -0.7), (-3.6, 0.7), stroke: (paint: black, thickness: 0.5pt))
  line((-3.5, -0.9), (-3.5, 0.9), stroke: (paint: black, thickness: 0.6pt))
  line((-2.3, -0.9), (-2.3, 0.9), stroke: (paint: black, thickness: 0.6pt))

  line(
    (1.8, -1.3), (1.8, 1.3), (2.0, 1.3), (2.0, 0.9), (3.2, 0.9),
    (3.3, 0.75), (4.2, 0.75), (4.2, -0.75), (3.3, -0.75), (3.2, -0.9),
    (2.0, -0.9), (2.0, -1.3), close: true,
    fill: rgb("#90989e"), stroke: none
  )
  rect((1.8, -0.45), (4.2, 0.45), fill: rgb("#a6aeb4"), stroke: none)
  rect((1.8, -0.22), (4.2, 0.22), fill: rgb("#c4ccd2"), stroke: none)
  rect((1.8, -0.08), (4.2, 0.08), fill: rgb("#eef3f7"), stroke: none)

  line(
    (1.8, 1.3), (2.0, 1.3), (2.0, 0.9), (3.2, 0.9), (3.3, 0.75), (4.2, 0.75),
    stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (1.8, -1.3), (2.0, -1.3), (2.0, -0.9), (3.2, -0.9), (3.3, -0.75), (4.2, -0.75),
    stroke: (paint: black, thickness: 0.75pt)
  )
  line((2.0, -0.9), (2.0, 0.9), stroke: (paint: black, thickness: 0.6pt))
  line((3.2, -0.9), (3.2, 0.9), stroke: (paint: black, thickness: 0.6pt))
  line((3.3, -0.75), (3.3, 0.75), stroke: (paint: black, thickness: 0.5pt))

  line((-2.1, -1.4), (-2.1, 1.4), stroke: (paint: black, thickness: 0.5pt))
  line((1.8, -1.4), (1.8, 1.4), stroke: (paint: black, thickness: 0.5pt))

  rect((-3.8, 0.72), (-3.55, 0.95), fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.7pt))
  rect((-3.8, -0.95), (-3.55, -0.72), fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.7pt))
  line((-3.55, 0.72), (-3.5, 0.72), (-3.5, 1.03), (-3.55, 1.03), close: true, fill: black, stroke: none)
  line((-3.55, -0.72), (-3.5, -0.72), (-3.5, -1.03), (-3.55, -1.03), close: true, fill: black, stroke: none)

  rect((3.2, 0.9), (3.3, 1.25), fill: rgb("#e9ecef"), stroke: (paint: black, thickness: 0.6pt))
  rect((3.2, -1.25), (3.3, -0.9), fill: rgb("#e9ecef"), stroke: (paint: black, thickness: 0.6pt))

  line(
    (-3.75, 2.2), (-2.7, 2.32), (-2.55, 2.65), (-2.1, 2.65),
    (-2.1, 1.9), (-2.3, 1.9), (-2.3, 2.0), (-3.75, 2.0), close: true,
    fill: rgb("#9aa2a8"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (-3.75, -2.2), (-2.7, -2.32), (-2.55, -2.65), (-2.1, -2.65),
    (-2.1, -1.9), (-2.3, -1.9), (-2.3, -2.0), (-3.75, -2.0), close: true,
    fill: rgb("#9aa2a8"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (-4.2, -1.45), (-4.2, 1.45), (-4.0, 1.7), (-4.0, 2.2), (-3.75, 2.2),
    (-3.75, 2.0), (-3.5, 2.0), (-3.5, 1.65), (-3.95, 1.65), (-3.95, -1.65),
    (-3.5, -1.65), (-3.5, -2.0), (-3.75, -2.0), (-3.75, -2.2), (-4.0, -2.2),
    (-4.0, -1.7), close: true,
    fill: rgb("#adb5bd"), stroke: (paint: black, thickness: 0.75pt)
  )

  line((-4.15, 1.98), (-3.1, 1.98), stroke: (paint: rgb("#495057"), thickness: 0.45pt, dash: "dash-dotted"))
  line((-4.15, -1.98), (-3.1, -1.98), stroke: (paint: rgb("#495057"), thickness: 0.45pt, dash: "dash-dotted"))

  line(
    (1.8, 2.65), (2.25, 2.65), (2.4, 2.32), (3.45, 2.2),
    (3.45, 2.0), (1.92, 2.0), (1.92, 1.85), (1.8, 1.85), close: true,
    fill: rgb("#9aa2a8"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (1.8, -2.65), (2.25, -2.65), (2.4, -2.32), (3.45, -2.2),
    (3.45, -2.0), (1.92, -2.0), (1.92, -1.85), (1.8, -1.85), close: true,
    fill: rgb("#9aa2a8"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (3.45, 2.2), (3.7, 2.2), (3.7, 1.45), (3.9, 1.25), (3.9, 0.82),
    (3.78, 0.82), (3.78, 1.2), (3.5, 1.2), (3.5, 1.65), (3.3, 1.65),
    (3.3, 2.0), (3.45, 2.0), close: true,
    fill: rgb("#adb5bd"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (3.45, -2.2), (3.7, -2.2), (3.7, -1.45), (3.9, -1.25), (3.9, -0.82),
    (3.78, -0.82), (3.78, -1.2), (3.5, -1.2), (3.5, -1.65), (3.3, -1.65),
    (3.3, -2.0), (3.45, -2.0), close: true,
    fill: rgb("#adb5bd"), stroke: (paint: black, thickness: 0.75pt)
  )

  line((2.8, 1.98), (3.85, 1.98), stroke: (paint: rgb("#495057"), thickness: 0.45pt, dash: "dash-dotted"))
  line((2.8, -1.98), (3.85, -1.98), stroke: (paint: rgb("#495057"), thickness: 0.45pt, dash: "dash-dotted"))

  line(
    (3.5, 1.2), (3.78, 1.2), (3.78, 0.75), (3.65, 0.75),
    (3.65, 1.05), (3.5, 1.05), close: true,
    fill: rgb("#c5dca0"), stroke: (paint: black, thickness: 0.6pt)
  )
  line(
    (3.5, -1.2), (3.78, -1.2), (3.78, -0.75), (3.65, -0.75),
    (3.65, -1.05), (3.5, -1.05), close: true,
    fill: rgb("#c5dca0"), stroke: (paint: black, thickness: 0.6pt)
  )

  line(
    (-3.5, 2.0), (-2.3, 2.0), (-2.3, 1.674),
    (-2.495, 1.745), (-2.696, 1.797), (-2.9, 1.815), (-3.104, 1.797), (-3.305, 1.745),
    (-3.5, 1.674), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (-3.5, 0.9), (-3.5, 1.16), (-3.44, 1.16), (-3.43, 1.06),
    (-3.00, 1.175), (-3.00, 1.28), (-2.80, 1.28), (-2.80, 1.175),
    (-2.37, 1.06), (-2.36, 1.16), (-2.3, 1.16), (-2.3, 0.9), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (-3.46, 1.16), (-3.41, 1.35), (-2.95, 1.47), (-2.95, 1.26),
    (-3.02, 1.26), (-3.04, 1.38), (-3.36, 1.29), (-3.39, 1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )
  line(
    (-2.34, 1.16), (-2.39, 1.35), (-2.85, 1.47), (-2.85, 1.26),
    (-2.78, 1.26), (-2.76, 1.38), (-2.44, 1.29), (-2.41, 1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )

  line(
    (-3.43, 1.06), (-3.00, 1.175), (-3.116, 1.610), (-3.546, 1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (-3.471, 1.215), (-3.041, 1.330), (-3.093, 1.523), (-3.523, 1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (-3.489, 1.282), (-3.059, 1.397), (-3.082, 1.484), (-3.512, 1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (-3.43, 1.06), (-3.00, 1.175), (-3.116, 1.610), (-3.546, 1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (-2.37, 1.06), (-2.80, 1.175), (-2.684, 1.610), (-2.254, 1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (-2.329, 1.215), (-2.759, 1.330), (-2.707, 1.523), (-2.277, 1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (-2.311, 1.282), (-2.741, 1.397), (-2.718, 1.484), (-2.288, 1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (-2.37, 1.06), (-2.80, 1.175), (-2.684, 1.610), (-2.254, 1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (-3.5, -2.0), (-2.3, -2.0), (-2.3, -1.674),
    (-2.495, -1.745), (-2.696, -1.797), (-2.9, -1.815), (-3.104, -1.797), (-3.305, -1.745),
    (-3.5, -1.674), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (-3.5, -0.9), (-3.5, -1.16), (-3.44, -1.16), (-3.43, -1.06),
    (-3.00, -1.175), (-3.00, -1.28), (-2.80, -1.28), (-2.80, -1.175),
    (-2.37, -1.06), (-2.36, -1.16), (-2.3, -1.16), (-2.3, -0.9), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (-3.46, -1.16), (-3.41, -1.35), (-2.95, -1.47), (-2.95, -1.26),
    (-3.02, -1.26), (-3.04, -1.38), (-3.36, -1.29), (-3.39, -1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )
  line(
    (-2.34, -1.16), (-2.39, -1.35), (-2.85, -1.47), (-2.85, -1.26),
    (-2.78, -1.26), (-2.76, -1.38), (-2.44, -1.29), (-2.41, -1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )

  line(
    (-3.43, -1.06), (-3.00, -1.175), (-3.116, -1.610), (-3.546, -1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (-3.471, -1.215), (-3.041, -1.330), (-3.093, -1.523), (-3.523, -1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (-3.489, -1.282), (-3.059, -1.397), (-3.082, -1.484), (-3.512, -1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (-3.43, -1.06), (-3.00, -1.175), (-3.116, -1.610), (-3.546, -1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (-2.37, -1.06), (-2.80, -1.175), (-2.684, -1.610), (-2.254, -1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (-2.329, -1.215), (-2.759, -1.330), (-2.707, -1.523), (-2.277, -1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (-2.311, -1.282), (-2.741, -1.397), (-2.718, -1.484), (-2.288, -1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (-2.37, -1.06), (-2.80, -1.175), (-2.684, -1.610), (-2.254, -1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (2.0, 2.0), (3.2, 2.0), (3.2, 1.674),
    (3.005, 1.745), (2.804, 1.797), (2.6, 1.815), (2.396, 1.797), (2.195, 1.745),
    (2.0, 1.674), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (2.0, 0.9), (2.0, 1.16), (2.06, 1.16), (2.07, 1.06),
    (2.50, 1.175), (2.50, 1.28), (2.70, 1.28), (2.70, 1.175),
    (3.13, 1.06), (3.14, 1.16), (3.2, 1.16), (3.2, 0.9), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (2.04, 1.16), (2.09, 1.35), (2.55, 1.47), (2.55, 1.26),
    (2.48, 1.26), (2.46, 1.38), (2.14, 1.29), (2.11, 1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )
  line(
    (3.16, 1.16), (3.11, 1.35), (2.65, 1.47), (2.65, 1.26),
    (2.72, 1.26), (2.74, 1.38), (3.06, 1.29), (3.09, 1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )

  line(
    (2.07, 1.06), (2.50, 1.175), (2.384, 1.610), (1.954, 1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (2.029, 1.215), (2.459, 1.330), (2.407, 1.523), (1.977, 1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (2.011, 1.282), (2.441, 1.397), (2.418, 1.484), (1.988, 1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (2.07, 1.06), (2.50, 1.175), (2.384, 1.610), (1.954, 1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (3.13, 1.06), (2.70, 1.175), (2.816, 1.610), (3.246, 1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (3.171, 1.215), (2.741, 1.330), (2.793, 1.523), (3.223, 1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (3.189, 1.282), (2.759, 1.397), (2.782, 1.484), (3.212, 1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (3.13, 1.06), (2.70, 1.175), (2.816, 1.610), (3.246, 1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (2.0, -2.0), (3.2, -2.0), (3.2, -1.674),
    (3.005, -1.745), (2.804, -1.797), (2.6, -1.815), (2.396, -1.797), (2.195, -1.745),
    (2.0, -1.674), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )
  line(
    (2.0, -0.9), (2.0, -1.16), (2.06, -1.16), (2.07, -1.06),
    (2.50, -1.175), (2.50, -1.28), (2.70, -1.28), (2.70, -1.175),
    (3.13, -1.06), (3.14, -1.16), (3.2, -1.16), (3.2, -0.9), close: true,
    fill: rgb("#5c92c4"), stroke: (paint: black, thickness: 0.75pt)
  )

  line(
    (2.04, -1.16), (2.09, -1.35), (2.55, -1.47), (2.55, -1.26),
    (2.48, -1.26), (2.46, -1.38), (2.14, -1.29), (2.11, -1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )
  line(
    (3.16, -1.16), (3.11, -1.35), (2.65, -1.47), (2.65, -1.26),
    (2.72, -1.26), (2.74, -1.38), (3.06, -1.29), (3.09, -1.16), close: true,
    fill: rgb("#f2f4f6"), stroke: (paint: black, thickness: 0.5pt)
  )

  line(
    (2.07, -1.06), (2.50, -1.175), (2.384, -1.610), (1.954, -1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (2.029, -1.215), (2.459, -1.330), (2.407, -1.523), (1.977, -1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (2.011, -1.282), (2.441, -1.397), (2.418, -1.484), (1.988, -1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (2.07, -1.06), (2.50, -1.175), (2.384, -1.610), (1.954, -1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  line(
    (3.13, -1.06), (2.70, -1.175), (2.816, -1.610), (3.246, -1.495), close: true,
    fill: rgb("#6f9fd2"), stroke: none
  )
  line(
    (3.171, -1.215), (2.741, -1.330), (2.793, -1.523), (3.223, -1.408), close: true,
    fill: rgb("#a6c8e8"), stroke: none
  )
  line(
    (3.189, -1.282), (2.759, -1.397), (2.782, -1.484), (3.212, -1.369), close: true,
    fill: rgb("#eef6fc"), stroke: none
  )
  line(
    (3.13, -1.06), (2.70, -1.175), (2.816, -1.610), (3.246, -1.495), close: true,
    fill: none, stroke: (paint: black, thickness: 0.8pt)
  )

  rect(
    (-3.65, 0.55), (-2.15, 2.15),
    radius: 0.25,
    fill: none,
    stroke: (paint: rgb("#e60000"), thickness: 1.6pt, dash: "dashed")
  )
  rect(
    (1.80, 0.55), (3.40, 2.25),
    radius: 0.25,
    fill: none,
    stroke: (paint: rgb("#55e619"), thickness: 1.6pt, dash: "dashed")
  )

  line(
    (4.1, 2.38), (2.72, 1.92),
    stroke: (paint: rgb("#e60000"), thickness: 2.2pt)
  )
  line(
    (2.96, 2.16), (2.72, 1.92), (3.06, 1.86),
    stroke: (paint: rgb("#e60000"), thickness: 2.2pt)
  )

  line(
    (4.400, 2.850), (4.494, 2.579), (4.780, 2.574), (4.552, 2.401), (4.635, 2.126),
    (4.400, 2.290), (4.165, 2.126), (4.248, 2.401), (4.020, 2.574), (4.306, 2.579),
    close: true,
    fill: white,
    stroke: (paint: rgb("#e60000"), thickness: 0.8pt)
  )

  content((-2.9, -3.05), text(size: 8.5pt)[Cuscinetto per lato bloccato], anchor: "center")
  content((2.7, -3.05), text(size: 8.5pt)[Cuscinetto per lato libero], anchor: "center")
})
