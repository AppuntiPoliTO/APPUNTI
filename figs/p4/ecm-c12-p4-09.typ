#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Housing walls (top and bottom cross-sections)
  line(
    (-1.85, 0.42), (-1.85, 0.85), (-1.65, 0.85), (-0.35, 1.78),
    (0.72, 1.78), (0.78, 1.72), (0.90, 1.72), (0.90, 1.50),
    (0.32, 1.52), (-0.30, 1.48), (-0.85, 1.15), (-1.25, 0.55),
    (-1.35, 0.0), (-1.55, 0.0), (-1.55, 0.42),
    close: true, fill: luma(232), stroke: 0.8pt
  )
  line(
    (-1.85, -0.42), (-1.85, -0.85), (-1.65, -0.85), (-0.35, -1.78),
    (0.72, -1.78), (0.78, -1.72), (0.90, -1.72), (0.90, -1.50),
    (0.32, -1.52), (-0.30, -1.48), (-0.85, -1.15), (-1.25, -0.55),
    (-1.35, 0.0), (-1.55, 0.0), (-1.55, -0.42),
    close: true, fill: luma(232), stroke: 0.8pt
  )

  // Left neck and splined input shaft
  line(
    (-3.75, 0.55), (-2.45, 0.55), (-2.45, 0.42), (-1.55, 0.42),
    (-1.55, -0.42), (-2.45, -0.42), (-2.45, -0.55), (-3.75, -0.55),
    close: true, fill: white, stroke: 0.8pt
  )
  line((-3.75, 0.42), (-2.55, 0.42), stroke: 0.55pt)
  line((-3.75, 0.28), (-2.55, 0.28), stroke: 0.55pt)
  line((-3.75, 0.14), (-2.55, 0.14), stroke: 0.55pt)
  line((-3.75, -0.14), (-2.55, -0.14), stroke: 0.55pt)
  line((-3.75, -0.28), (-2.55, -0.28), stroke: 0.55pt)
  line((-3.75, -0.42), (-2.55, -0.42), stroke: 0.55pt)
  line((-2.55, 0.55), (-2.55, -0.55), stroke: 0.6pt)

  // Output shaft (tilted at -30 deg)
  line(
    (0.86, -0.01), (2.29, -0.84), (1.87, -1.56), (0.44, -0.74),
    close: true, fill: white, stroke: 0.8pt
  )

  // Inner race (hub)
  line(
    (-0.29, 1.00), (0.15, 0.92), (0.49, 0.89), (1.01, 0.25),
    (0.29, -1.00), (-0.15, -0.92), (-0.49, -0.89), (-1.01, -0.25),
    close: true, fill: luma(232), stroke: 0.8pt
  )

  // Retaining rings
  line(
    (0.88, -0.02), (0.94, 0.02), (0.90, 0.08), (0.84, 0.04),
    close: true, fill: luma(60), stroke: 0.5pt
  )
  line(
    (0.42, -0.76), (0.48, -0.72), (0.44, -0.82), (0.38, -0.86),
    close: true, fill: luma(60), stroke: 0.5pt
  )

  // Cage segments (tilted at -15 deg)
  line(
    (-0.55, 1.15), (-0.02, 1.28), (-0.05, 1.44), (-0.65, 1.30),
    close: true, fill: luma(210), stroke: 0.75pt
  )
  line(
    (0.64, 1.12), (1.06, 0.78), (1.18, 0.90), (0.72, 1.26),
    close: true, fill: luma(210), stroke: 0.75pt
  )
  line(
    (-1.06, -0.78), (-0.64, -1.12), (-0.72, -1.26), (-1.18, -0.90),
    close: true, fill: luma(210), stroke: 0.75pt
  )
  line(
    (0.02, -1.28), (0.55, -1.15), (0.65, -1.30), (0.05, -1.44),
    close: true, fill: luma(210), stroke: 0.75pt
  )

  // Balls
  circle((0.32, 1.21), radius: 0.30, fill: white, stroke: 0.9pt)
  circle((-0.32, -1.21), radius: 0.30, fill: white, stroke: 0.9pt)

  // Geometric centers and construction lines
  line((0.32, 1.21), (-0.12, 0.00), stroke: (paint: gray, thickness: 0.45pt))
  line((0.32, 1.21), (0.12, 0.00), stroke: (paint: gray, thickness: 0.45pt))
  circle((-0.12, 0.00), radius: 0.03, fill: black, stroke: none)
  circle((0.12, 0.00), radius: 0.03, fill: black, stroke: none)

  // Leader lines for A, B, O
  line((-0.12, 0.00), (1.42, 0.46), stroke: (paint: gray, thickness: 0.45pt))
  circle((1.55, 0.48), radius: 0.13, fill: white, stroke: (paint: gray, thickness: 0.5pt))
  content((1.55, 0.48), text(size: 6.5pt)[A])

  line((0.12, 0.00), (1.52, 0.19), stroke: (paint: gray, thickness: 0.45pt))
  circle((1.65, 0.20), radius: 0.13, fill: white, stroke: (paint: gray, thickness: 0.5pt))
  content((1.65, 0.20), text(size: 6.5pt)[B])

  line((-0.45, -1.25), (-0.90, -1.78), stroke: (paint: gray, thickness: 0.45pt))
  content((-0.95, -1.85), text(size: 7pt)[$O$], anchor: "north-east")

  // Reference horizontal axis and angle beta
  line((0, 0), (2.60, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  arc((0, 0), start: 330deg, stop: 360deg, radius: 2.25, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((2.40, -0.64), text(size: 8.5pt)[$beta$], anchor: "west")

  // Torque vectors M_1 and M_2 (double arrowheads)
  line((-3.95, 0), (-0.22, 0), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((-0.55, 0), (0, 0), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  content((-4.05, 0), text(size: 9pt, fill: red)[$M_1$], anchor: "east")

  line((2.47, -1.43), (0.19, -0.11), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((0.48, -0.28), (0, 0), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  content((2.58, -1.50), text(size: 9pt, fill: red)[$M_2$], anchor: "west")
})
