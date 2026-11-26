#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Subtle shading fills
  rect((-4.20, -0.45), (-3.25, 0.45), fill: gray.transparentize(90%), stroke: none)
  line((-3.25, -0.82), (-1.70, -0.96), (-1.70, 0.96), (-3.25, 0.82), close: true, fill: gray.transparentize(90%), stroke: none)
  rect((-1.70, -1.65), (-0.50, 1.65), fill: gray.transparentize(92%), stroke: none)
  rect((-0.25, -1.65), (1.00, 1.65), fill: gray.transparentize(92%), stroke: none)
  rect((1.00, -1.18), (1.65, 1.18), fill: gray.transparentize(88%), stroke: none)
  rect((1.65, -1.25), (1.85, 1.25), fill: gray.transparentize(86%), stroke: none)
  line((1.85, -0.96), (3.15, -0.82), (3.15, 0.82), (1.85, 0.96), close: true, fill: gray.transparentize(90%), stroke: none)
  rect((3.15, -0.45), (4.20, 0.45), fill: gray.transparentize(90%), stroke: none)

  // Centerline
  line((-4.35, 0), (4.35, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Left shaft & broken end
  line((-4.20, 0.45), (-3.25, 0.45), stroke: 1pt)
  line((-4.20, -0.45), (-3.25, -0.45), stroke: 1pt)
  line((-4.20, 0.30), (-3.25, 0.30), stroke: 0.4pt)
  line((-4.20, -0.30), (-3.25, -0.30), stroke: 0.4pt)
  bezier((-4.20, 0), (-4.11, -0.15), (-4.11, -0.30), (-4.20, -0.45), stroke: 0.8pt)
  bezier((-4.20, 0), (-4.29, -0.15), (-4.29, -0.30), (-4.20, -0.45), stroke: 0.8pt)
  bezier((-4.20, 0.45), (-4.29, 0.30), (-4.11, 0.15), (-4.20, 0), stroke: 0.8pt)
  line((-4.26, -0.12), (-4.15, -0.23), stroke: 0.45pt)
  line((-4.27, -0.22), (-4.16, -0.33), stroke: 0.45pt)
  line((-4.25, -0.32), (-4.18, -0.39), stroke: 0.45pt)

  // Left tapered hub
  line((-3.25, 0.70), (-3.25, -0.70), stroke: 1pt)
  arc((-3.13, 0.70), start: 90deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  arc((-3.13, -0.70), start: 180deg, stop: 270deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  line((-3.13, 0.82), (-1.70, 0.96), stroke: 1pt)
  line((-3.13, -0.82), (-1.70, -0.96), stroke: 1pt)
  line((-3.15, 0.56), (-1.70, 0.64), stroke: 0.45pt)
  line((-3.15, -0.56), (-1.70, -0.64), stroke: 0.45pt)

  // Keyway slot on left hub
  arc((-2.96, 0), start: 90deg, stop: 270deg, radius: 0.14, anchor: "origin", stroke: 0.75pt)
  arc((-2.09, 0), start: -90deg, stop: 90deg, radius: 0.14, anchor: "origin", stroke: 0.75pt)
  line((-2.96, 0.14), (-2.09, 0.14), stroke: 0.75pt)
  line((-2.96, -0.14), (-2.09, -0.14), stroke: 0.75pt)

  // Left flange & jaws
  line((-1.70, 1.53), (-1.70, -1.53), stroke: 1pt)
  arc((-1.58, 1.53), start: 90deg, stop: 180deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  arc((-1.58, -1.53), start: 180deg, stop: 270deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  line((-1.58, 1.65), (-0.50, 1.65), stroke: 1pt)
  line((-1.58, -1.65), (-1.12, -1.65), stroke: 1pt)
  line((-1.12, -1.65), (-0.50, -1.65), stroke: 1pt)
  line((-0.50, 1.65), (-0.50, 1.37), stroke: 1pt)
  arc((-0.35, 0.62), start: 101deg, stop: 180deg, radius: (0.77, 0.76), anchor: "origin", stroke: 1pt)
  line((-1.12, 0.62), (-1.12, 0.04), stroke: 1pt)
  line((-1.12, 0.04), (-0.50, 0.04), stroke: 1pt)
  line((-0.50, 0.04), (-0.50, -1.04), stroke: 1pt)
  arc((-0.35, -1.55), start: 101deg, stop: 180deg, radius: (0.77, 0.52), anchor: "origin", stroke: 1pt)
  line((-1.12, -1.55), (-1.12, -1.65), stroke: 1pt)

  // Left flange inner jaw details
  line((-0.94, 1.06), (-0.50, 1.06), stroke: 0.8pt)
  line((-0.50, 1.06), (-0.50, 0.52), stroke: 0.8pt)
  line((-1.12, 0.44), (-0.64, 0.44), stroke: 0.8pt)
  line((-0.64, 0.44), (-0.64, 0.04), stroke: 0.8pt)
  line((-1.65, 1.42), (-0.50, 1.42), stroke: 0.45pt)
  line((-1.65, -1.42), (-1.12, -1.42), stroke: 0.45pt)

  // Right flange & jaws
  line((-0.25, 1.65), (0.88, 1.65), stroke: 1pt)
  line((-0.25, -1.65), (0.88, -1.65), stroke: 1pt)
  arc((0.88, 1.53), start: 0deg, stop: 90deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  arc((0.88, -1.53), start: 270deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  line((1.00, 1.53), (1.00, -1.53), stroke: 1pt)
  line((-0.25, 1.65), (-0.25, 1.15), stroke: 1pt)
  line((-0.25, 1.15), (-0.15, 1.15), stroke: 1pt)
  line((-0.15, 0.85), (-0.15, 0.04), stroke: 1pt)
  line((-0.15, 0.04), (0.35, 0.04), stroke: 1pt)
  line((0.35, 0.04), (0.35, -0.58), stroke: 1pt)
  arc((0.45, 0.85), start: 100deg, stop: 180deg, radius: (0.60, 0.61), anchor: "origin", stroke: 1pt)
  line((0.35, 1.65), (0.35, 1.45), stroke: 1pt)
  arc((0.45, -1.35), start: 98deg, stop: 180deg, radius: (0.70, 0.78), anchor: "origin", stroke: 1pt)
  line((-0.25, -1.35), (-0.25, -1.65), stroke: 1pt)

  // Right flange inner jaw details
  line((-0.25, 0.48), (-0.25, -0.48), stroke: 0.8pt)
  line((-0.25, 0.48), (-0.15, 0.48), stroke: 0.8pt)
  line((-0.25, -0.48), (0.35, -0.48), stroke: 0.8pt)
  line((-0.10, -1.04), (0.28, -1.04), stroke: 0.8pt)
  line((0.35, 1.42), (0.95, 1.42), stroke: 0.45pt)
  line((-0.25, -1.42), (0.95, -1.42), stroke: 0.45pt)

  // Hidden guide pins / splines (dashed)
  line((-0.25, 0.62), (2.92, 0.62), stroke: (dash: "dashed", thickness: 0.7pt))
  line((-0.25, 0.42), (2.92, 0.42), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.92, 0.42), (2.92, 0.62), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.35, -0.42), (2.92, -0.42), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.35, -0.62), (2.92, -0.62), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.92, -0.62), (2.92, -0.42), stroke: (dash: "dashed", thickness: 0.7pt))

  // Collar
  line((1.00, 1.18), (1.65, 1.18), stroke: 1pt)
  line((1.00, -1.18), (1.65, -1.18), stroke: 1pt)
  line((1.65, 1.25), (1.65, -1.25), stroke: 1pt)
  line((1.65, 1.25), (1.85, 1.25), stroke: 1pt)
  line((1.65, -1.25), (1.85, -1.25), stroke: 1pt)
  line((1.85, 1.25), (1.85, -1.25), stroke: 1pt)
  line((1.00, 0.98), (1.65, 0.98), stroke: 0.45pt)
  line((1.00, -0.98), (1.65, -0.98), stroke: 0.45pt)

  // Control lever & pivot boss
  line((1.08, 2.55), (1.13, 0.22), fill: white, stroke: none)
  line((1.08, 2.55), (1.57, 2.55), (1.52, 0.22), (1.13, 0.22), close: true, fill: white, stroke: none)
  line((1.08, 2.55), (1.13, 0.22), stroke: 1pt)
  line((1.57, 2.55), (1.52, 0.22), stroke: 1pt)
  bezier((1.08, 2.55), (1.24, 2.60), (1.41, 2.50), (1.57, 2.55), stroke: 0.9pt)
  circle((1.325, 0), radius: 0.30, fill: white, stroke: 1pt)
  circle((1.325, 0), radius: 0.20, stroke: 0.8pt)

  // Right tapered hub
  line((1.85, 0.96), (3.03, 0.82), stroke: 1pt)
  line((1.85, -0.96), (3.03, -0.82), stroke: 1pt)
  arc((3.03, 0.70), start: 0deg, stop: 90deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  arc((3.03, -0.70), start: 270deg, stop: 360deg, radius: 0.12, anchor: "origin", stroke: 1pt)
  line((3.15, 0.70), (3.15, -0.70), stroke: 1pt)
  line((1.85, 0.64), (3.05, 0.56), stroke: 0.45pt)
  line((1.85, -0.64), (3.05, -0.56), stroke: 0.45pt)

  // Right shaft & broken end
  line((3.15, 0.45), (4.20, 0.45), stroke: 1pt)
  line((3.15, -0.45), (4.20, -0.45), stroke: 1pt)
  line((3.15, 0.30), (4.20, 0.30), stroke: 0.4pt)
  line((3.15, -0.30), (4.20, -0.30), stroke: 0.4pt)
  bezier((4.20, 0.45), (4.11, 0.30), (4.11, 0.15), (4.20, 0), stroke: 0.8pt)
  bezier((4.20, 0.45), (4.29, 0.30), (4.29, 0.15), (4.20, 0), stroke: 0.8pt)
  bezier((4.20, 0), (4.29, -0.15), (4.11, -0.30), (4.20, -0.45), stroke: 0.8pt)
  line((4.15, 0.33), (4.26, 0.22), stroke: 0.45pt)
  line((4.14, 0.23), (4.25, 0.12), stroke: 0.45pt)
  line((4.17, 0.12), (4.24, 0.05), stroke: 0.45pt)

  // Leader lines
  circle((1.24, 2.05), radius: 0.035, fill: black, stroke: none)
  line((1.24, 2.05), (0.60, 2.55), (0.42, 2.55), stroke: 0.55pt)
  circle((1.325, -0.85), radius: 0.035, fill: black, stroke: none)
  line((1.325, -0.85), (1.56, -1.58), (1.74, -1.58), stroke: 0.55pt)
})
