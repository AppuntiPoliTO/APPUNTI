// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  circle((0, 0), radius: 1.2, fill: white, stroke: none)
  line((-1.083, 0.517), (-0.517, 1.083), stroke: 0.55pt)
  line((-1.180, 0.220), (-0.220, 1.180), stroke: 0.55pt)
  line((-1.200, 0.000), (0.000, 1.200), stroke: 0.55pt)
  line((-1.186, -0.186), (0.186, 1.186), stroke: 0.55pt)
  line((-1.148, -0.348), (0.348, 1.148), stroke: 0.55pt)
  line((-1.094, -0.494), (0.494, 1.094), stroke: 0.55pt)
  line((-1.025, -0.625), (0.625, 1.025), stroke: 0.55pt)
  line((-0.943, -0.743), (0.743, 0.943), stroke: 0.55pt)
  line((-0.849, -0.849), (0.849, 0.849), stroke: 0.55pt)
  line((-0.743, -0.943), (0.943, 0.743), stroke: 0.55pt)
  line((-0.625, -1.025), (1.025, 0.625), stroke: 0.55pt)
  line((-0.494, -1.094), (1.094, 0.494), stroke: 0.55pt)
  line((-0.348, -1.148), (1.148, 0.348), stroke: 0.55pt)
  line((-0.186, -1.186), (1.186, 0.186), stroke: 0.55pt)
  line((0.000, -1.200), (1.200, 0.000), stroke: 0.55pt)
  line((0.220, -1.180), (1.180, -0.220), stroke: 0.55pt)
  line((0.517, -1.083), (1.083, -0.517), stroke: 0.55pt)
  circle((0, 0), radius: 1.2, stroke: 0.95pt)

  arc((0, 0), start: 5.74deg, stop: 174.26deg, radius: 1.2, anchor: "origin", stroke: 0.95pt)
  arc((0, 0), start: 3.44deg, stop: 176.56deg, radius: 2.0, anchor: "origin", stroke: 0.95pt)
  line((-1.996, 0.12), (-1.194, 0.12), stroke: 0.95pt)
  line((1.194, 0.12), (1.996, 0.12), stroke: 0.95pt)

  line((-1.996, 0.12), (-1.996, 1.85), (-1.404, 1.85), (-1.404, 1.424), stroke: 0.95pt)
  line((1.996, 0.12), (1.996, 1.85), (1.404, 1.85), (1.404, 1.424), stroke: 0.95pt)

  arc((0, 0), start: 185.74deg, stop: 354.26deg, radius: 1.2, anchor: "origin", stroke: 0.95pt)
  arc((0, 0), start: 183.44deg, stop: 356.56deg, radius: 2.0, anchor: "origin", stroke: 0.95pt)
  line((-1.996, -0.12), (-1.194, -0.12), stroke: 0.95pt)
  line((1.194, -0.12), (1.996, -0.12), stroke: 0.95pt)

  line((-1.996, -0.12), (-1.996, -1.85), (-1.404, -1.85), (-1.404, -1.424), stroke: 0.95pt)
  line((1.996, -0.12), (1.996, -1.85), (1.404, -1.85), (1.404, -1.424), stroke: 0.95pt)

  line((-1.85, -0.12), (-1.85, 0.12), stroke: 0.9pt)
  line((-1.55, -0.12), (-1.55, 0.12), stroke: 0.9pt)
  line((1.55, -0.12), (1.55, 0.12), stroke: 0.9pt)
  line((1.85, -0.12), (1.85, 0.12), stroke: 0.9pt)

  line((-1.98, 1.85), (-1.98, 2.04), (-1.94, 2.07), (-1.46, 2.07), (-1.42, 2.04), (-1.42, 1.85), close: true, stroke: 0.9pt)
  line((-1.84, 1.85), (-1.84, 2.07), stroke: 0.65pt)
  line((-1.56, 1.85), (-1.56, 2.07), stroke: 0.65pt)

  line((1.42, 1.85), (1.42, 2.04), (1.46, 2.07), (1.94, 2.07), (1.98, 2.04), (1.98, 1.85), close: true, stroke: 0.9pt)
  line((1.56, 1.85), (1.56, 2.07), stroke: 0.65pt)
  line((1.84, 1.85), (1.84, 2.07), stroke: 0.65pt)

  line((-1.98, -1.85), (-1.98, -2.04), (-1.94, -2.07), (-1.46, -2.07), (-1.42, -2.04), (-1.42, -1.85), close: true, stroke: 0.9pt)
  line((-1.84, -1.85), (-1.84, -2.07), stroke: 0.65pt)
  line((-1.56, -1.85), (-1.56, -2.07), stroke: 0.65pt)
  line((-1.85, -2.07), (-1.85, -2.17), (-1.82, -2.20), (-1.58, -2.20), (-1.55, -2.17), (-1.55, -2.07), stroke: 0.9pt)
  line((-1.85, -2.17), (-1.55, -2.17), stroke: 0.55pt)

  line((1.42, -1.85), (1.42, -2.04), (1.46, -2.07), (1.94, -2.07), (1.98, -2.04), (1.98, -1.85), close: true, stroke: 0.9pt)
  line((1.56, -1.85), (1.56, -2.07), stroke: 0.65pt)
  line((1.84, -1.85), (1.84, -2.07), stroke: 0.65pt)
  line((1.55, -2.07), (1.55, -2.17), (1.58, -2.20), (1.82, -2.20), (1.85, -2.17), (1.85, -2.07), stroke: 0.9pt)
  line((1.55, -2.17), (1.85, -2.17), stroke: 0.55pt)

  line((0, 3.0), (0, 1.28), mark: (end: ">", fill: black, scale: 0.75), stroke: 2.0pt)
  line((0, -3.0), (0, -1.28), mark: (end: ">", fill: black, scale: 0.75), stroke: 2.0pt)
  content((0.35, 2.55), text(size: 11pt)[$F$], anchor: "west")
  content((0.35, -2.55), text(size: 11pt)[$F$], anchor: "west")
})
