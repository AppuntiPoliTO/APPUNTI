// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-2.2, 0), (2.85, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

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

  line((-1.35, 0.35), (-1.35, 0.90), (-0.75, 0.90), (-0.75, 2.22), (0.55, 2.22), (0.55, 1.98), (-0.45, 1.73), (-0.45, 0.90), (-0.10, 0.90), (-0.10, 0.35), close: true, stroke: 0.85pt)
  line((-1.35, -0.35), (-1.35, -0.90), (-0.75, -0.90), (-0.75, -2.22), (0.55, -2.22), (0.55, -1.98), (-0.45, -1.73), (-0.45, -0.90), (-0.10, -0.90), (-0.10, -0.35), close: true, stroke: 0.85pt)

  line((-1.35, 0.60), (-1.05, 0.90), stroke: 0.45pt)
  line((-1.30, 0.35), (-0.75, 0.90), stroke: 0.45pt)
  line((-1.00, 0.35), (-0.45, 0.90), stroke: 0.45pt)
  line((-0.70, 0.35), (-0.15, 0.90), stroke: 0.45pt)
  line((-0.40, 0.35), (-0.10, 0.65), stroke: 0.45pt)
  line((-0.75, 0.95), (-0.45, 1.25), stroke: 0.45pt)
  line((-0.75, 1.25), (-0.45, 1.55), stroke: 0.45pt)
  line((-0.75, 1.55), (-0.28, 2.02), stroke: 0.45pt)
  line((-0.75, 1.85), (-0.38, 2.22), stroke: 0.45pt)
  line((-0.34, 1.76), (0.12, 2.22), stroke: 0.45pt)
  line((0.02, 1.85), (0.39, 2.22), stroke: 0.45pt)
  line((0.38, 1.94), (0.55, 2.11), stroke: 0.45pt)

  line((-1.35, -0.65), (-1.10, -0.90), stroke: 0.45pt)
  line((-1.35, -0.35), (-0.80, -0.90), stroke: 0.45pt)
  line((-1.05, -0.35), (-0.50, -0.90), stroke: 0.45pt)
  line((-0.75, -0.35), (-0.20, -0.90), stroke: 0.45pt)
  line((-0.45, -0.35), (-0.10, -0.70), stroke: 0.45pt)
  line((-0.75, -0.95), (-0.45, -1.25), stroke: 0.45pt)
  line((-0.75, -1.25), (-0.45, -1.55), stroke: 0.45pt)
  line((-0.75, -1.55), (-0.45, -1.85), stroke: 0.45pt)
  line((-0.75, -1.85), (-0.38, -2.22), stroke: 0.45pt)
  line((-0.45, -1.85), (-0.08, -2.22), stroke: 0.45pt)
  line((-0.20, -1.79), (0.23, -2.22), stroke: 0.45pt)
  line((0.15, -1.88), (0.49, -2.22), stroke: 0.45pt)

  line((0.10, 0.35), (0.10, 0.90), (0.60, 0.90), (0.60, 1.48), (-0.25, 1.48), (-0.25, 1.78), (0.55, 1.98), (0.85, 1.68), (0.85, 0.90), (1.15, 0.90), (1.15, 0.35), close: true, stroke: 0.85pt)
  line((0.10, -0.35), (0.10, -0.90), (0.60, -0.90), (0.60, -1.48), (-0.25, -1.48), (-0.25, -1.78), (0.55, -1.98), (0.85, -1.68), (0.85, -0.90), (1.15, -0.90), (1.15, -0.35), close: true, stroke: 0.85pt)

  line((0.10, 0.65), (0.35, 0.90), stroke: 0.45pt)
  line((0.10, 0.35), (0.65, 0.90), stroke: 0.45pt)
  line((0.40, 0.35), (0.95, 0.90), stroke: 0.45pt)
  line((0.70, 0.35), (1.15, 0.80), stroke: 0.45pt)
  line((1.00, 0.35), (1.15, 0.50), stroke: 0.45pt)
  line((0.60, 0.95), (0.85, 1.20), stroke: 0.45pt)
  line((0.60, 1.25), (0.85, 1.50), stroke: 0.45pt)
  line((-0.25, 1.50), (0.04, 1.79), stroke: 0.45pt)
  line((0.05, 1.48), (0.45, 1.88), stroke: 0.45pt)
  line((0.35, 1.48), (0.72, 1.85), stroke: 0.45pt)

  line((0.10, -0.60), (0.40, -0.90), stroke: 0.45pt)
  line((0.15, -0.35), (0.70, -0.90), stroke: 0.45pt)
  line((0.45, -0.35), (1.00, -0.90), stroke: 0.45pt)
  line((0.75, -0.35), (1.15, -0.75), stroke: 0.45pt)
  line((1.05, -0.35), (1.15, -0.45), stroke: 0.45pt)
  line((0.60, -1.00), (0.85, -1.25), stroke: 0.45pt)
  line((0.60, -1.30), (0.85, -1.55), stroke: 0.45pt)
  line((-0.25, -1.52), (0.03, -1.80), stroke: 0.45pt)
  line((0.05, -1.48), (0.43, -1.86), stroke: 0.45pt)
  line((0.35, -1.48), (0.70, -1.83), stroke: 0.45pt)

  line((-1.75, 1.44), (2.20, 1.44), stroke: (dash: "dashed", thickness: 0.55pt))
  line((-1.61, 1.44), (2.15, 2.38), stroke: (dash: "dashed", thickness: 0.55pt))
  arc((-1.61, 1.44), start: 0deg, stop: 14.04deg, radius: 3.45, anchor: "origin", mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((1.95, 1.88), text(size: 8.5pt)[$alpha$], anchor: "west")

  let px = 0.15
  let py = 1.88
  let Ln = 1.65
  let tx = px - 0.2425 * Ln
  let ty = py + 0.9701 * Ln

  line((tx, ty), (px, py), mark: (end: ">", fill: black), stroke: 1.35pt)

  line((tx, ty), (px, ty), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  line((tx, ty), (tx, py), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  line((px, ty), (px, py), stroke: (paint: red, dash: "dotted", thickness: 0.75pt))
  line((tx, py), (px, py), stroke: (paint: red, dash: "dotted", thickness: 0.75pt))

  // Angle alpha between vertical right dotted line and normal vector (alternate interior angle, cleanly labeled to the right!)
  arc((px, py), start: 90deg, stop: 104.04deg, radius: 0.85, anchor: "origin", stroke: 0.65pt)
  content((px + 0.10, py + 0.92), text(size: 8.5pt)[$alpha$], anchor: "west")

  content((px + 0.08, ty + 0.05), text(size: 7.5pt, fill: red.darken(10%))[$p sin alpha thin d A$], anchor: "west")
  content((tx - 0.08, (ty + py) / 2), text(size: 7.5pt, fill: red.darken(10%))[$p cos alpha thin d A$], anchor: "east")

  let Lf = 1.15
  let fx = px + 0.9701 * Lf
  let fy = py + 0.2425 * Lf
  line((px, py), (fx, fy), mark: (end: ">", fill: black), stroke: 1.25pt)
  line((px, py), (fx, py), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  line((fx, fy), (fx, py), stroke: (paint: red, dash: "dotted", thickness: 0.7pt))
  content((fx + 0.06, fy + 0.14), text(size: 7.5pt)[$f p thin d A$], anchor: "south")

  line((1.55, 0.625), (1.15, 0.625), mark: (end: ">", fill: black), stroke: 0.95pt)
  line((1.55, -0.625), (1.15, -0.625), mark: (end: ">", fill: black), stroke: 0.95pt)
  line((2.95, 0), (2.10, 0), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.35pt))
  content((2.55, 0.18), text(size: 9pt)[$F$], anchor: "south")
})
