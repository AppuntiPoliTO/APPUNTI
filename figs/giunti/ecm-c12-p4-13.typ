// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // ==========================================
  // Left panel: sez. A-A
  // ==========================================

  // Main axis centerline
  line((-4.85, 0), (-0.15, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  // Input shaft and splined hub
  line(
    (-4.75, 0.14), (-3.75, 0.14), (-3.60, 0.18), (-2.65, 0.16), (-2.55, 0.26), (-2.05, 0.26),
    (-2.05, -0.26), (-2.55, -0.26), (-2.65, -0.16), (-3.60, -0.18), (-3.75, -0.14), (-4.75, -0.14),
    close: true, fill: white, stroke: 0.75pt
  )
  line((-2.55, 0.16), (-2.05, 0.16), stroke: 0.45pt)
  line((-2.55, 0.06), (-2.05, 0.06), stroke: 0.45pt)
  line((-2.55, -0.06), (-2.05, -0.06), stroke: 0.45pt)
  line((-2.55, -0.16), (-2.05, -0.16), stroke: 0.45pt)
  line((-2.55, 0.26), (-2.55, -0.26), stroke: 0.55pt)

  // Rubber boot (top and bottom sectioned bellows walls)
  line(
    (-3.65, 0.18), (-3.50, 0.54), (-3.36, 0.34), (-3.22, 0.70), (-3.08, 0.46), (-2.94, 0.78), (-2.85, 0.72),
    (-2.85, 0.62), (-2.95, 0.67), (-3.08, 0.36), (-3.22, 0.60), (-3.36, 0.24), (-3.50, 0.44), (-3.60, 0.18),
    close: true, fill: luma(165), stroke: 0.65pt
  )
  line(
    (-3.65, -0.18), (-3.50, -0.54), (-3.36, -0.34), (-3.22, -0.70), (-3.08, -0.46), (-2.94, -0.78), (-2.85, -0.72),
    (-2.85, -0.62), (-2.95, -0.67), (-3.08, -0.36), (-3.22, -0.60), (-3.36, -0.24), (-3.50, -0.44), (-3.60, -0.18),
    close: true, fill: luma(165), stroke: 0.65pt
  )
  // Boot clamp bands
  line((-3.68, 0.18), (-3.58, 0.18), (-3.58, 0.24), (-3.68, 0.24), close: true, fill: luma(210), stroke: 0.55pt)
  line((-3.68, -0.18), (-3.58, -0.18), (-3.58, -0.24), (-3.68, -0.24), close: true, fill: luma(210), stroke: 0.55pt)
  line((-2.90, 0.72), (-2.80, 0.72), (-2.80, 0.80), (-2.90, 0.80), close: true, fill: luma(210), stroke: 0.55pt)
  line((-2.90, -0.72), (-2.80, -0.72), (-2.80, -0.80), (-2.90, -0.80), close: true, fill: luma(210), stroke: 0.55pt)

  // Outer tripod housing walls (sectioned)
  line(
    (-2.85, 0.72), (-2.60, 1.02), (-1.65, 1.02), (-1.65, 1.24), (-1.45, 1.24),
    (-1.45, 0.0), (-1.65, 0.0), (-1.65, 0.88), (-2.55, 0.88), (-2.78, 0.64),
    close: true, fill: luma(222), stroke: 0.75pt
  )
  line(
    (-2.85, -0.72), (-2.60, -1.02), (-1.65, -1.02), (-1.65, -1.24), (-1.45, -1.24),
    (-1.45, 0.0), (-1.65, 0.0), (-1.65, -0.88), (-2.55, -0.88), (-2.78, -0.64),
    close: true, fill: luma(222), stroke: 0.75pt
  )

  // Right flange and output shaft (projected 1:1 with sez. B-B)
  line(
    (-1.45, 1.24), (-1.25, 1.24), (-1.25, 1.45), (-0.95, 1.45), (-0.95, 2.05), (-0.80, 2.05),
    (-0.80, 0.42), (-1.10, 0.16), (-1.10, -0.16), (-0.80, -0.42), (-0.80, -2.05), (-0.95, -2.05),
    (-0.95, -1.45), (-1.25, -1.45), (-1.25, -1.24), (-1.45, -1.24), (-1.45, -0.45), (-1.30, -0.45),
    (-1.30, 0.45), (-1.45, 0.45),
    close: true, fill: luma(200), stroke: 0.75pt
  )
  line((-1.10, 0.16), (-0.30, 0.16), (-0.30, -0.16), (-1.10, -0.16), close: true, fill: white, stroke: 0.75pt)

  // Bottom mounting bolt (aligned with r = 0.98 in sez. B-B)
  line((-1.65, -0.92), (-1.15, -0.92), (-1.15, -1.04), (-1.65, -1.04), close: true, fill: luma(242), stroke: 0.65pt)
  line((-1.80, -0.87), (-1.65, -0.87), (-1.65, -1.09), (-1.80, -1.09), close: true, fill: luma(190), stroke: 0.65pt)
  line((-1.88, -0.98), (-1.08, -0.98), stroke: (dash: "dash-dotted", thickness: 0.45pt, paint: luma(80)))

  // Top trunnion and roller (aligned with sez. B-B)
  line((-2.33, 0.26), (-2.17, 0.26), (-2.17, 0.86), (-2.33, 0.86), close: true, fill: white, stroke: 0.65pt)
  line((-2.48, 0.50), (-2.33, 0.50), (-2.33, 0.88), (-2.48, 0.88), close: true, fill: luma(240), stroke: 0.7pt)
  line((-2.17, 0.50), (-2.02, 0.50), (-2.02, 0.88), (-2.17, 0.88), close: true, fill: luma(240), stroke: 0.7pt)
  // Foreshortened lower trunnion
  line((-2.33, -0.26), (-2.17, -0.26), (-2.17, -0.44), (-2.33, -0.44), close: true, fill: luma(232), stroke: 0.65pt)

  // Section plane B-B
  line((-2.25, 1.45), (-2.25, -1.45), stroke: (dash: "dash-dotted", thickness: 0.6pt, paint: luma(60)))
  line((-2.25, 1.45), (-2.25, 1.15), stroke: 1.4pt)
  line((-2.25, -1.15), (-2.25, -1.45), stroke: 1.4pt)
  line((-2.25, 1.40), (-1.92, 1.40), mark: (end: ">"), stroke: 0.8pt)
  line((-2.25, -1.40), (-1.92, -1.40), mark: (end: ">"), stroke: 0.8pt)
  content((-1.88, 1.40), text(size: 8pt)[*B*], anchor: "west")
  content((-1.88, -1.40), text(size: 8pt)[*B*], anchor: "west")
  content((-2.60, -2.35), text(size: 8.5pt)[*sez. A-A*], anchor: "north")

  // ==========================================
  // Right panel: sez. B-B
  // ==========================================

  // Output flange outer rings (projected 1:1 with sez. A-A)
  circle((2.50, 0), radius: 2.05, fill: white, stroke: 0.75pt)
  circle((2.50, 0), radius: 1.45, fill: white, stroke: 0.65pt)

  // Outer housing sectioned ring
  circle((2.50, 0), radius: 1.24, fill: luma(222), stroke: 0.75pt)

  // Tripod 3-lobed internal cavity (tracks at 90, 210, 330 deg; webs at 30, 150, 270 deg)
  line(
    (2.24, 0.90), (2.76, 0.90),
    (3.09, 0.34),
    (3.41, -0.23), (3.15, -0.68),
    (2.50, -0.68),
    (1.85, -0.68), (1.59, -0.23),
    (1.91, 0.34),
    close: true, fill: white, stroke: 0.75pt
  )

  // 6 mounting bolts on the 3 thick housing webs (r = 0.98)
  circle((3.46, 0.20), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((3.46, 0.20), radius: 0.065, fill: luma(200), stroke: 0.55pt)
  circle((3.16, 0.73), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((3.16, 0.73), radius: 0.065, fill: luma(200), stroke: 0.55pt)

  circle((1.84, 0.73), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((1.84, 0.73), radius: 0.065, fill: luma(200), stroke: 0.55pt)
  circle((1.54, 0.20), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((1.54, 0.20), radius: 0.065, fill: luma(200), stroke: 0.55pt)

  circle((2.20, -0.93), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((2.20, -0.93), radius: 0.065, fill: luma(200), stroke: 0.55pt)
  circle((2.80, -0.93), radius: 0.12, fill: white, stroke: 0.65pt)
  circle((2.80, -0.93), radius: 0.065, fill: luma(200), stroke: 0.55pt)

  // Three rollers and trunnions at 90, 210, 330 deg
  // 90 deg (top)
  line((2.27, 0.50), (2.73, 0.50), (2.73, 0.88), (2.27, 0.88), close: true, fill: luma(240), stroke: 0.7pt)
  line((2.42, 0.36), (2.58, 0.36), (2.58, 0.86), (2.42, 0.86), close: true, fill: white, stroke: 0.65pt)

  // 210 deg (bottom-left)
  line((1.95, -0.05), (2.18, -0.45), (1.85, -0.64), (1.62, -0.24), close: true, fill: luma(240), stroke: 0.7pt)
  line((2.15, -0.11), (2.23, -0.25), (1.80, -0.50), (1.72, -0.36), close: true, fill: white, stroke: 0.65pt)

  // 330 deg (bottom-right)
  line((3.05, -0.05), (2.82, -0.45), (3.15, -0.64), (3.38, -0.24), close: true, fill: luma(240), stroke: 0.7pt)
  line((2.85, -0.11), (2.77, -0.25), (3.20, -0.50), (3.28, -0.36), close: true, fill: white, stroke: 0.65pt)

  // Central spider hub and splined input shaft
  circle((2.50, 0), radius: 0.38, fill: luma(210), stroke: 0.75pt)
  circle((2.50, 0), radius: 0.25, fill: luma(238), stroke: 0.7pt)
  circle((2.50, 0), radius: 0.20, fill: none, stroke: (dash: "dashed", thickness: 0.45pt, paint: luma(80)))
  circle((2.50, 0), radius: 0.15, fill: white, stroke: 0.6pt)

  // Centerlines
  line((0.20, 0), (4.80, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))
  line((2.50, -2.25), (2.50, 2.25), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(80)))

  // Section plane A-A markers
  line((2.50, 2.20), (2.50, 1.90), stroke: 1.4pt)
  line((2.50, -1.90), (2.50, -2.20), stroke: 1.4pt)
  line((2.50, 2.15), (2.17, 2.15), mark: (end: ">"), stroke: 0.8pt)
  line((2.50, -2.15), (2.17, -2.15), mark: (end: ">"), stroke: 0.8pt)
  content((2.13, 2.15), text(size: 8pt)[*A*], anchor: "east")
  content((2.13, -2.15), text(size: 8pt)[*A*], anchor: "east")
  content((2.50, -2.35), text(size: 8.5pt)[*sez. B-B*], anchor: "north")
})
