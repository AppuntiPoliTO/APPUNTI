#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Left panel: sez. A-A
  line((-4.85, 0), (-0.30, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  // Input shaft and splined hub
  line(
    (-4.75, 0.14), (-3.75, 0.14), (-3.55, 0.17), (-2.65, 0.15), (-2.55, 0.26), (-2.05, 0.26),
    (-2.05, -0.26), (-2.55, -0.26), (-2.65, -0.15), (-3.55, -0.17), (-3.75, -0.14), (-4.75, -0.14),
    close: true, fill: white, stroke: 0.75pt
  )
  line((-2.55, 0.16), (-2.05, 0.16), stroke: 0.45pt)
  line((-2.55, 0.06), (-2.05, 0.06), stroke: 0.45pt)
  line((-2.55, -0.06), (-2.05, -0.06), stroke: 0.45pt)
  line((-2.55, -0.16), (-2.05, -0.16), stroke: 0.45pt)
  line((-2.55, 0.26), (-2.55, -0.26), stroke: 0.55pt)

  // Rubber boot (top and bottom bellows)
  line(
    (-3.65, 0.16), (-3.52, 0.52), (-3.40, 0.32), (-3.25, 0.68), (-3.12, 0.42), (-2.98, 0.72), (-2.90, 0.65),
    stroke: 1.1pt
  )
  line(
    (-3.65, -0.16), (-3.52, -0.52), (-3.40, -0.32), (-3.25, -0.68), (-3.12, -0.42), (-2.98, -0.72), (-2.90, -0.65),
    stroke: 1.1pt
  )

  // Outer tripod housing walls
  line(
    (-2.90, 0.65), (-2.65, 1.00), (-1.65, 1.00), (-1.55, 0.85), (-1.55, 0.0),
    (-1.68, 0.0), (-1.68, 0.80), (-2.55, 0.80), (-2.75, 0.58),
    close: true, fill: luma(228), stroke: 0.7pt
  )
  line(
    (-2.90, -0.65), (-2.65, -0.88), (-1.65, -0.88), (-1.55, -0.78), (-1.55, 0.0),
    (-1.68, 0.0), (-1.68, -0.72), (-2.55, -0.72), (-2.75, -0.58),
    close: true, fill: luma(228), stroke: 0.7pt
  )

  // Bottom mounting bolt
  line((-2.45, -0.96), (-1.25, -0.96), (-1.25, -1.14), (-2.45, -1.14), close: true, fill: luma(240), stroke: 0.65pt)
  line((-2.45, -0.90), (-2.30, -0.90), (-2.30, -1.20), (-2.45, -1.20), close: true, fill: luma(215), stroke: 0.65pt)

  // Top trunnion and roller
  line((-2.33, 0.26), (-2.17, 0.26), (-2.17, 0.84), (-2.33, 0.84), close: true, fill: white, stroke: 0.65pt)
  line((-2.48, 0.45), (-2.33, 0.45), (-2.33, 0.82), (-2.48, 0.82), close: true, fill: luma(238), stroke: 0.7pt)
  line((-2.17, 0.45), (-2.02, 0.45), (-2.02, 0.82), (-2.17, 0.82), close: true, fill: luma(238), stroke: 0.7pt)
  line((-2.33, -0.26), (-2.17, -0.26), (-2.17, -0.40), (-2.33, -0.40), close: true, fill: luma(228), stroke: 0.65pt)

  // Right flange and output shaft
  line(
    (-1.45, 0.85), (-1.25, 0.85), (-1.25, 1.05), (-0.95, 1.05), (-0.95, 2.05), (-0.80, 2.05),
    (-0.80, 0.40), (-1.10, 0.16), (-1.10, -0.16), (-0.80, -0.40), (-0.80, -2.05), (-0.95, -2.05),
    (-0.95, -1.05), (-1.25, -1.05), (-1.25, -0.85), (-1.45, -0.85), (-1.45, -0.45), (-1.30, -0.45),
    (-1.30, 0.45), (-1.45, 0.45),
    close: true, fill: luma(228), stroke: 0.7pt
  )
  line((-1.10, 0.16), (-0.35, 0.16), (-0.35, -0.16), (-1.10, -0.16), close: true, fill: white, stroke: 0.75pt)

  // Section plane B-B
  line((-2.05, 1.35), (-2.05, 0.40), (-2.25, 0.40), (-2.25, -0.75), (-2.85, -0.75), (-2.85, -1.35), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((-2.05, 1.35), (-1.80, 1.35), mark: (end: ">"), stroke: 0.8pt)
  line((-2.85, -1.35), (-2.60, -1.35), mark: (end: ">"), stroke: 0.8pt)
  content((-2.00, 1.18), text(size: 7.5pt)[*B*], anchor: "west")
  content((-2.80, -1.18), text(size: 7.5pt)[*B*], anchor: "west")
  content((-2.60, -2.25), text(size: 8pt)[sez. A-A], anchor: "north")

  // Right panel: sez. B-B
  circle((2.50, 0), radius: 2.05, fill: white, stroke: 0.75pt)
  circle((2.50, 0), radius: 1.48, fill: white, stroke: 0.65pt)

  // Outer housing sectioned ring
  circle((2.50, 0), radius: 1.24, fill: luma(228), stroke: 0.75pt)
  circle((2.50, 0), radius: 0.90, fill: white, stroke: 0.7pt)

  // 6 mounting bolts on housing lobes
  circle((3.47, 0.17), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((3.47, 0.17), radius: 0.08, fill: luma(215), stroke: 0.55pt)
  circle((3.13, 0.75), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((3.13, 0.75), radius: 0.08, fill: luma(215), stroke: 0.55pt)
  circle((1.87, 0.75), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((1.87, 0.75), radius: 0.08, fill: luma(215), stroke: 0.55pt)
  circle((1.53, 0.17), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((1.53, 0.17), radius: 0.08, fill: luma(215), stroke: 0.55pt)
  circle((2.16, -0.92), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((2.16, -0.92), radius: 0.08, fill: luma(215), stroke: 0.55pt)
  circle((2.84, -0.92), radius: 0.15, fill: white, stroke: 0.65pt)
  circle((2.84, -0.92), radius: 0.08, fill: luma(215), stroke: 0.55pt)

  // Three rollers at 90, 210, 330 deg
  line((2.26, 0.55), (2.74, 0.55), (2.74, 0.88), (2.26, 0.88), close: true, fill: luma(238), stroke: 0.7pt)
  line((2.42, 0.40), (2.58, 0.40), (2.58, 0.92), (2.42, 0.92), close: true, fill: white, stroke: 0.65pt)

  line((2.13, -0.47), (1.85, -0.63), (1.63, -0.25), (1.91, -0.08), close: true, fill: luma(238), stroke: 0.7pt)
  line((2.19, -0.27), (1.74, -0.53), (1.66, -0.39), (2.11, -0.13), close: true, fill: white, stroke: 0.65pt)

  line((2.87, -0.47), (3.15, -0.63), (3.37, -0.25), (3.09, -0.08), close: true, fill: luma(238), stroke: 0.7pt)
  line((2.81, -0.27), (3.26, -0.53), (3.34, -0.39), (2.89, -0.13), close: true, fill: white, stroke: 0.65pt)

  // Central spider hub and splined shaft
  circle((2.50, 0), radius: 0.40, fill: luma(215), stroke: 0.75pt)
  circle((2.50, 0), radius: 0.24, fill: luma(235), stroke: 0.7pt)

  // Centerlines
  line((0.25, 0), (4.75, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))
  line((2.50, -2.20), (2.50, 2.20), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  // Section plane A-A markers
  line((2.50, 1.55), (2.25, 1.55), mark: (end: ">"), stroke: 0.8pt)
  line((2.50, -1.55), (2.25, -1.55), mark: (end: ">"), stroke: 0.8pt)
  content((2.42, 1.38), text(size: 7.5pt)[*A*], anchor: "east")
  content((2.42, -1.38), text(size: 7.5pt)[*A*], anchor: "east")
  content((3.95, -2.25), text(size: 8pt)[sez. B-B], anchor: "north")
})
