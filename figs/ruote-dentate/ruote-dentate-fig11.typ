// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.7cm, {
  import draw: *

  line((0, -5.0), (12, -5.0), stroke: 0.9pt)
  line((0, 5.0), (12, 5.0), stroke: 0.9pt)
  line((0, -5.0), (0, 5.0), stroke: 0.9pt)
  line((12, -5.0), (12, 5.0), stroke: 0.9pt)

  line((0, -4.5), (12, -4.5), stroke: 0.4pt + luma(110))
  line((0, -4.0), (12, -4.0), stroke: 0.4pt + luma(110))
  line((0, -3.5), (12, -3.5), stroke: 0.4pt + luma(110))
  line((0, -3.0), (12, -3.0), stroke: 0.4pt + luma(110))
  line((0, -2.5), (12, -2.5), stroke: 0.4pt + luma(110))
  line((0, -2.0), (12, -2.0), stroke: 0.4pt + luma(110))
  line((0, -1.5), (12, -1.5), stroke: 0.4pt + luma(110))
  line((0, -1.0), (12, -1.0), stroke: 0.4pt + luma(110))
  line((0, -0.5), (12, -0.5), stroke: 0.4pt + luma(110))
  line((0, 0.0), (12, 0.0), stroke: 0.65pt + black)
  line((0, 0.5), (12, 0.5), stroke: 0.4pt + luma(110))
  line((0, 1.0), (12, 1.0), stroke: 0.4pt + luma(110))
  line((0, 1.5), (12, 1.5), stroke: 0.4pt + luma(110))
  line((0, 2.0), (12, 2.0), stroke: 0.4pt + luma(110))
  line((0, 2.5), (12, 2.5), stroke: 0.4pt + luma(110))
  line((0, 3.0), (12, 3.0), stroke: 0.4pt + luma(110))
  line((0, 3.5), (12, 3.5), stroke: 0.4pt + luma(110))
  line((0, 4.0), (12, 4.0), stroke: 0.4pt + luma(110))
  line((0, 4.5), (12, 4.5), stroke: 0.4pt + luma(110))

  line((0.803, -5.0), (0.803, 5.0), stroke: 0.4pt + luma(110))
  line((1.499, -5.0), (1.499, 5.0), stroke: 0.4pt + luma(110))
  line((2.113, -5.0), (2.113, 5.0), stroke: 0.4pt + luma(110))
  line((2.662, -5.0), (2.662, 5.0), stroke: 0.4pt + luma(110))
  line((3.159, -5.0), (3.159, 5.0), stroke: 0.35pt + luma(150))
  line((3.612, -5.0), (3.612, 5.0), stroke: 0.35pt + luma(150))
  line((4.030, -5.0), (4.030, 5.0), stroke: 0.35pt + luma(150))
  line((4.416, -5.0), (4.416, 5.0), stroke: 0.35pt + luma(150))
  line((4.775, -5.0), (4.775, 5.0), stroke: 0.4pt + luma(110))
  line((5.112, -5.0), (5.112, 5.0), stroke: 0.35pt + luma(150))
  line((5.428, -5.0), (5.428, 5.0), stroke: 0.35pt + luma(150))
  line((5.725, -5.0), (5.725, 5.0), stroke: 0.35pt + luma(150))
  line((6.007, -5.0), (6.007, 5.0), stroke: 0.35pt + luma(150))
  line((6.275, -5.0), (6.275, 5.0), stroke: 0.4pt + luma(110))
  line((7.437, -5.0), (7.437, 5.0), stroke: 0.4pt + luma(110))
  line((8.388, -5.0), (8.388, 5.0), stroke: 0.4pt + luma(110))
  line((9.191, -5.0), (9.191, 5.0), stroke: 0.4pt + luma(110))
  line((9.887, -5.0), (9.887, 5.0), stroke: 0.4pt + luma(110))
  line((10.501, -5.0), (10.501, 5.0), stroke: 0.4pt + luma(110))
  line((11.050, -5.0), (11.050, 5.0), stroke: 0.4pt + luma(110))

  line(
    (4.750, -5.0), (4.258, -4.5), (3.816, -4.0), (3.419, -3.5), (3.060, -3.0),
    (2.735, -2.5), (2.440, -2.0), (2.172, -1.5), (1.927, -1.0), (1.704, -0.5),
    (1.499, 0.0), (1.312, 0.5), (1.140, 1.0), (0.982, 1.5), (0.837, 2.0),
    (0.703, 2.5), (0.579, 3.0), (0.464, 3.5), (0.357, 4.0), (0.258, 4.5), (0.166, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (5.638, -5.0), (4.701, -4.0), (3.937, -3.0), (3.304, -2.0), (2.775, -1.0),
    (2.329, 0.0), (1.950, 1.0), (1.627, 2.0), (1.349, 3.0), (1.109, 4.0), (0.900, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (6.614, -5.0), (5.675, -4.0), (4.903, -3.0), (4.259, -2.0), (3.715, -1.0),
    (3.252, 0.0), (2.855, 1.0), (2.512, 2.0), (2.214, 3.0), (1.955, 4.0), (1.728, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (7.697, -5.0), (6.755, -4.0), (5.977, -3.0), (5.323, -2.0), (4.765, -1.0),
    (4.286, 0.0), (3.872, 1.0), (3.510, 2.0), (3.194, 3.0), (2.916, 4.0), (2.669, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (8.910, -5.0), (7.967, -4.0), (7.183, -3.0), (6.520, -2.0), (5.951, -1.0),
    (5.457, 0.0), (5.026, 1.0), (4.648, 2.0), (4.313, 3.0), (4.016, 4.0), (3.751, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (10.290, -5.0), (9.344, -4.0), (8.556, -3.0), (7.885, -2.0), (7.305, -1.0),
    (6.799, 0.0), (6.354, 1.0), (5.959, 2.0), (5.607, 3.0), (5.291, 4.0), (5.008, 5.0),
    stroke: 1.0pt + black
  )

  line(
    (11.885, -5.0), (10.939, -4.0), (10.147, -3.0), (9.469, -2.0), (8.880, -1.0),
    (8.363, 0.0), (7.904, 1.0), (7.494, 2.0), (7.126, 3.0), (6.794, 4.0), (6.494, 5.0),
    stroke: 1.0pt + black
  )

  rect((1.15, -0.32), (9.90, 0.68), stroke: 1.7pt + rgb("#e00000"), fill: none)
  line((-1.55, -2.55), (4.25, -0.35), mark: (end: ">", fill: black, scale: 0.7), stroke: 0.9pt)

  rect((1.50, 0.06), (2.06, 0.42), fill: white, stroke: none)
  content((1.78, 0.24), text(size: 6.5pt)[30°], anchor: "center")

  rect((2.31, 0.06), (3.08, 0.42), fill: white, stroke: none)
  content((2.69, 0.24), text(size: 6.5pt)[27°30'], anchor: "center")

  rect((3.34, 0.06), (3.92, 0.42), fill: white, stroke: none)
  content((3.63, 0.24), text(size: 6.5pt)[25°], anchor: "center")

  rect((4.38, 0.06), (5.16, 0.42), fill: white, stroke: none)
  content((4.77, 0.24), text(size: 6.5pt)[22°30'], anchor: "center")

  rect((5.70, 0.06), (6.28, 0.42), fill: white, stroke: none)
  content((5.99, 0.24), text(size: 6.5pt)[20°], anchor: "center")

  rect((7.04, 0.06), (7.86, 0.42), fill: white, stroke: none)
  content((7.45, 0.24), text(size: 6.5pt)[17°30'], anchor: "center")

  rect((8.50, 0.06), (9.50, 0.42), fill: white, stroke: none)
  content((9.00, 0.24), text(size: 6.5pt)[$theta = 15°$], anchor: "center")

  content((0.000, -5.18), text(size: 6.5pt)[$6$], anchor: "north")
  content((0.803, -5.18), text(size: 6.5pt)[$7$], anchor: "north")
  content((1.499, -5.18), text(size: 6.5pt)[$8$], anchor: "north")
  content((2.113, -5.18), text(size: 6.5pt)[$9$], anchor: "north")
  content((2.662, -5.18), text(size: 6.5pt)[$10$], anchor: "north")
  content((4.775, -5.18), text(size: 6.5pt)[$15$], anchor: "north")
  content((6.275, -5.18), text(size: 6.5pt)[$20$], anchor: "north")
  content((7.437, -5.18), text(size: 6.5pt)[$25$], anchor: "north")
  content((8.388, -5.18), text(size: 6.5pt)[$30$], anchor: "north")
  content((9.191, -5.18), text(size: 6.5pt)[$35$], anchor: "north")
  content((9.887, -5.18), text(size: 6.5pt)[$40$], anchor: "north")
  content((10.501, -5.18), text(size: 6.5pt)[$45$], anchor: "north")
  content((11.050, -5.18), text(size: 6.5pt)[$50$], anchor: "north")
  content((12.000, -5.18), text(size: 6.5pt)[$60$], anchor: "north")

  content((0.000, 5.18), text(size: 6.5pt)[$6$], anchor: "south")
  content((0.803, 5.18), text(size: 6.5pt)[$7$], anchor: "south")
  content((1.499, 5.18), text(size: 6.5pt)[$8$], anchor: "south")
  content((2.113, 5.18), text(size: 6.5pt)[$9$], anchor: "south")
  content((2.662, 5.18), text(size: 6.5pt)[$10$], anchor: "south")
  content((4.775, 5.18), text(size: 6.5pt)[$15$], anchor: "south")
  content((6.275, 5.18), text(size: 6.5pt)[$20$], anchor: "south")
  content((7.437, 5.18), text(size: 6.5pt)[$25$], anchor: "south")
  content((8.388, 5.18), text(size: 6.5pt)[$30$], anchor: "south")
  content((9.191, 5.18), text(size: 6.5pt)[$35$], anchor: "south")
  content((9.887, 5.18), text(size: 6.5pt)[$40$], anchor: "south")
  content((10.501, 5.18), text(size: 6.5pt)[$45$], anchor: "south")
  content((11.050, 5.18), text(size: 6.5pt)[$50$], anchor: "south")
  content((12.000, 5.18), text(size: 6.5pt)[$60$], anchor: "south")

  content((-0.14, 5.0), text(size: 6.5pt)[1,00], anchor: "east")
  content((-0.14, 4.5), text(size: 6.5pt)[0,90], anchor: "east")
  content((-0.14, 4.0), text(size: 6.5pt)[0,80], anchor: "east")
  content((-0.14, 3.5), text(size: 6.5pt)[0,70], anchor: "east")
  content((-0.14, 3.0), text(size: 6.5pt)[0,60], anchor: "east")
  content((-0.14, 2.5), text(size: 6.5pt)[0,50], anchor: "east")
  content((-0.14, 2.0), text(size: 6.5pt)[0,40], anchor: "east")
  content((-0.14, 1.5), text(size: 6.5pt)[0,30], anchor: "east")
  content((-0.14, 1.0), text(size: 6.5pt)[0,20], anchor: "east")
  content((-0.14, 0.5), text(size: 6.5pt)[0,10], anchor: "east")
  content((-0.14, 0.0), text(size: 6.5pt)[0,00], anchor: "east")
  content((-0.14, -0.5), text(size: 6.5pt)[0,10], anchor: "east")
  content((-0.14, -1.0), text(size: 6.5pt)[0,20], anchor: "east")
  content((-0.14, -1.5), text(size: 6.5pt)[0,30], anchor: "east")
  content((-0.14, -2.0), text(size: 6.5pt)[0,40], anchor: "east")
  content((-0.14, -2.5), text(size: 6.5pt)[0,50], anchor: "east")
  content((-0.14, -3.0), text(size: 6.5pt)[0,60], anchor: "east")
  content((-0.14, -3.5), text(size: 6.5pt)[0,70], anchor: "east")
  content((-0.14, -4.0), text(size: 6.5pt)[0,80], anchor: "east")
  content((-0.14, -4.5), text(size: 6.5pt)[0,90], anchor: "east")
  content((-0.14, -5.0), text(size: 6.5pt)[1,00], anchor: "east")

  line((-0.88, 2.85), (-0.88, 5.00), stroke: 0.6pt)
  content((-1.15, 3.92), text(size: 7.5pt)[Ruote esterne], angle: 90deg, anchor: "center")

  content((-1.15, 0.0), text(size: 7.5pt)[Rapporto di trasmissione], angle: 90deg, anchor: "center")

  line((-0.88, -5.00), (-0.88, -2.85), stroke: 0.6pt)
  content((-1.15, -3.92), text(size: 7.5pt)[Ruote interne], angle: 90deg, anchor: "center")

  content((2.50, -5.85), text(size: 7.5pt)[Numero minimo dei denti], anchor: "center")
})
