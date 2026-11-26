#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-2.2, 0), (2.7, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((-2.0, 0.35), (-0.10, 0.35), (-0.10, -0.35), (-2.0, -0.35), stroke: 0.8pt)
  line((2.05, 0.35), (0.10, 0.35), (0.10, -0.35), (2.05, -0.35), stroke: 0.8pt)

  line((-1.25, 0.065), (-0.45, 0.065), stroke: 0.6pt)
  line((-1.25, -0.065), (-0.45, -0.065), stroke: 0.6pt)
  arc((-1.25, 0), start: 90deg, stop: 270deg, radius: 0.065, anchor: "origin", stroke: 0.6pt)
  arc((-0.45, 0), start: -90deg, stop: 90deg, radius: 0.065, anchor: "origin", stroke: 0.6pt)

  line((0.25, 0.065), (1.65, 0.065), stroke: 0.6pt)
  line((0.25, -0.065), (1.65, -0.065), stroke: 0.6pt)
  arc((0.25, 0), start: 90deg, stop: 270deg, radius: 0.065, anchor: "origin", stroke: 0.6pt)
  arc((1.65, 0), start: -90deg, stop: 90deg, radius: 0.065, anchor: "origin", stroke: 0.6pt)

  line((-1.35, 0.35), (-1.35, 0.90), (-0.75, 0.90), (-0.75, 2.15), (0.55, 2.15), (0.55, 1.93), (-0.45, 1.73), (-0.45, 0.90), (-0.10, 0.90), (-0.10, 0.35), close: true, stroke: 0.85pt)
  line((-1.35, -0.35), (-1.35, -0.90), (-0.75, -0.90), (-0.75, -2.15), (0.55, -2.15), (0.55, -1.93), (-0.45, -1.73), (-0.45, -0.90), (-0.10, -0.90), (-0.10, -0.35), close: true, stroke: 0.85pt)

  line((-1.35, 0.60), (-1.05, 0.90), stroke: 0.45pt)
  line((-1.30, 0.35), (-0.75, 0.90), stroke: 0.45pt)
  line((-1.00, 0.35), (-0.45, 0.90), stroke: 0.45pt)
  line((-0.70, 0.35), (-0.15, 0.90), stroke: 0.45pt)
  line((-0.40, 0.35), (-0.10, 0.65), stroke: 0.45pt)
  line((-0.75, 0.95), (-0.45, 1.25), stroke: 0.45pt)
  line((-0.75, 1.25), (-0.45, 1.55), stroke: 0.45pt)
  line((-0.75, 1.55), (-0.32, 1.98), stroke: 0.45pt)
  line((-0.75, 1.85), (-0.45, 2.15), stroke: 0.45pt)
  line((-0.30, 1.76), (0.09, 2.15), stroke: 0.45pt)
  line((0.05, 1.83), (0.37, 2.15), stroke: 0.45pt)
  line((0.40, 1.90), (0.55, 2.05), stroke: 0.45pt)

  line((-1.35, -0.65), (-1.10, -0.90), stroke: 0.45pt)
  line((-1.35, -0.35), (-0.80, -0.90), stroke: 0.45pt)
  line((-1.05, -0.35), (-0.50, -0.90), stroke: 0.45pt)
  line((-0.75, -0.35), (-0.20, -0.90), stroke: 0.45pt)
  line((-0.45, -0.35), (-0.10, -0.70), stroke: 0.45pt)
  line((-0.75, -0.95), (-0.45, -1.25), stroke: 0.45pt)
  line((-0.75, -1.25), (-0.45, -1.55), stroke: 0.45pt)
  line((-0.75, -1.55), (-0.45, -1.85), stroke: 0.45pt)
  line((-0.75, -1.85), (-0.45, -2.15), stroke: 0.45pt)
  line((-0.45, -1.85), (-0.15, -2.15), stroke: 0.45pt)
  line((-0.20, -1.78), (0.17, -2.15), stroke: 0.45pt)
  line((0.15, -1.85), (0.45, -2.15), stroke: 0.45pt)

  line((0.10, 0.35), (0.10, 0.90), (0.60, 0.90), (0.60, 1.48), (-0.25, 1.48), (-0.25, 1.77), (0.55, 1.93), (0.85, 1.63), (0.85, 0.90), (1.15, 0.90), (1.15, 0.35), close: true, stroke: 0.85pt)
  line((0.10, -0.35), (0.10, -0.90), (0.60, -0.90), (0.60, -1.48), (-0.25, -1.48), (-0.25, -1.77), (0.55, -1.93), (0.85, -1.63), (0.85, -0.90), (1.15, -0.90), (1.15, -0.35), close: true, stroke: 0.85pt)

  line((0.10, 0.65), (0.35, 0.90), stroke: 0.45pt)
  line((0.10, 0.35), (0.65, 0.90), stroke: 0.45pt)
  line((0.40, 0.35), (0.95, 0.90), stroke: 0.45pt)
  line((0.70, 0.35), (1.15, 0.80), stroke: 0.45pt)
  line((1.00, 0.35), (1.15, 0.50), stroke: 0.45pt)
  line((0.60, 0.95), (0.85, 1.20), stroke: 0.45pt)
  line((0.60, 1.25), (0.85, 1.50), stroke: 0.45pt)
  line((-0.25, 1.50), (0.04, 1.79), stroke: 0.45pt)
  line((0.05, 1.48), (0.42, 1.85), stroke: 0.45pt)
  line((0.35, 1.48), (0.70, 1.83), stroke: 0.45pt)

  line((0.10, -0.60), (0.40, -0.90), stroke: 0.45pt)
  line((0.15, -0.35), (0.70, -0.90), stroke: 0.45pt)
  line((0.45, -0.35), (1.00, -0.90), stroke: 0.45pt)
  line((0.75, -0.35), (1.15, -0.75), stroke: 0.45pt)
  line((1.05, -0.35), (1.15, -0.45), stroke: 0.45pt)
  line((0.60, -1.00), (0.85, -1.25), stroke: 0.45pt)
  line((0.60, -1.30), (0.85, -1.55), stroke: 0.45pt)
  line((-0.25, -1.52), (0.02, -1.79), stroke: 0.45pt)
  line((0.05, -1.48), (0.40, -1.83), stroke: 0.45pt)
  line((0.35, -1.48), (0.68, -1.81), stroke: 0.45pt)

  line((-2.0, 1.42), (2.05, 1.42), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-2.0, 1.42), (1.95, 2.21), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((-2.0, 1.42), start: 0deg, stop: 11.31deg, radius: 3.65, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((-0.165, 3.164), (0.10, 1.84), mark: (end: ">"), stroke: 1.25pt)
  line((-0.24, 3.164), (-0.24, 1.84), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((-0.165, 3.164), (0.10, 3.164), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((0.10, 3.164), (0.10, 1.84), mark: (end: ">"), stroke: (paint: red, dash: "dotted", thickness: 0.85pt))
  arc((-0.165, 3.164), start: 270deg, stop: 281.31deg, radius: 0.75, anchor: "origin", stroke: 0.6pt)

  line((0.10, 1.84), (0.884, 1.997), mark: (end: ">"), stroke: 1.1pt)
  line((0.10, 1.84), (0.85, 1.76), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))

  line((1.55, 0.625), (1.15, 0.625), mark: (end: ">"), stroke: 0.9pt)
  line((1.55, -0.625), (1.15, -0.625), mark: (end: ">"), stroke: 0.9pt)
  line((2.95, 0), (2.10, 0), mark: (end: ">"), stroke: (paint: red, thickness: 1.35pt))

  content((1.82, 1.78), text(size: 8.5pt)[$alpha$], anchor: "west")
  content((0.20, 2.65), text(size: 8.5pt)[$alpha$], anchor: "west")
  content((2.55, 0.20), text(size: 9pt)[$F$], anchor: "south")
})
