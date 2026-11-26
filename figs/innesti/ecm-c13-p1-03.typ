// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-5.15, 0), (5.15, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((-3.75, -1.55), (-3.75, 1.55), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  circle((-3.75, 0), radius: 1.35, stroke: 0.9pt)
  circle((-3.75, 0), radius: 0.72, stroke: 0.8pt)
  circle((-3.75, 0), radius: 0.19, stroke: 0.8pt)
  rect((-4.00, -0.045), (-3.93, 0.045), fill: white, stroke: 0.65pt)

  line((-2.20, 0.19), (-1.32, 0.19), stroke: 0.85pt)
  line((-2.20, -0.19), (-1.32, -0.19), stroke: 0.85pt)
  line((-1.18, 0.19), (-0.30, 0.19), stroke: 0.85pt)
  line((-1.18, -0.19), (-0.30, -0.19), stroke: 0.85pt)

  arc((-1.90, 0), start: 90deg, stop: 270deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  arc((-1.38, 0), start: -90deg, stop: 90deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  line((-1.90, 0.045), (-1.38, 0.045), stroke: 0.65pt)
  line((-1.90, -0.045), (-1.38, -0.045), stroke: 0.65pt)

  arc((-1.10, 0), start: 90deg, stop: 270deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  arc((-0.55, 0), start: -90deg, stop: 90deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  line((-1.10, 0.045), (-0.55, 0.045), stroke: 0.65pt)
  line((-1.10, -0.045), (-0.55, -0.045), stroke: 0.65pt)

  line((-1.95, 0.19), (-1.95, 0.52), (-1.52, 0.52), (-1.52, 1.35), (-1.27, 1.35), (-1.27, 0.19), close: true, stroke: 0.85pt)
  line((-1.95, -0.19), (-1.95, -0.52), (-1.52, -0.52), (-1.52, -1.35), (-1.27, -1.35), (-1.27, -0.19), close: true, stroke: 0.85pt)

  line((-1.95, 0.34), (-1.77, 0.52), stroke: 0.45pt)
  line((-1.95, 0.19), (-1.62, 0.52), stroke: 0.45pt)
  line((-1.77, 0.19), (-1.27, 0.69), stroke: 0.45pt)
  line((-1.58, 0.19), (-1.27, 0.50), stroke: 0.45pt)
  line((-1.39, 0.19), (-1.27, 0.31), stroke: 0.45pt)
  line((-1.52, 0.63), (-1.27, 0.88), stroke: 0.45pt)
  line((-1.52, 0.82), (-1.27, 1.07), stroke: 0.45pt)
  line((-1.52, 1.01), (-1.27, 1.26), stroke: 0.45pt)
  line((-1.52, 1.20), (-1.37, 1.35), stroke: 0.45pt)

  line((-1.95, -0.37), (-1.77, -0.19), stroke: 0.45pt)
  line((-1.95, -0.52), (-1.62, -0.19), stroke: 0.45pt)
  line((-1.76, -0.52), (-1.43, -0.19), stroke: 0.45pt)
  line((-1.57, -0.52), (-1.27, -0.22), stroke: 0.45pt)
  line((-1.52, -0.66), (-1.27, -0.41), stroke: 0.45pt)
  line((-1.52, -0.85), (-1.27, -0.60), stroke: 0.45pt)
  line((-1.52, -1.04), (-1.27, -0.79), stroke: 0.45pt)
  line((-1.52, -1.23), (-1.27, -0.98), stroke: 0.45pt)
  line((-1.45, -1.35), (-1.27, -1.17), stroke: 0.45pt)

  line((-1.23, 0.19), (-1.23, 1.35), (-0.98, 1.35), (-0.98, 0.52), (-0.55, 0.52), (-0.55, 0.19), close: true, stroke: 0.85pt)
  line((-1.23, -0.19), (-1.23, -1.35), (-0.98, -1.35), (-0.98, -0.52), (-0.55, -0.52), (-0.55, -0.19), close: true, stroke: 0.85pt)

  line((-0.55, 0.34), (-0.73, 0.52), stroke: 0.45pt)
  line((-0.55, 0.19), (-0.88, 0.52), stroke: 0.45pt)
  line((-0.73, 0.19), (-1.23, 0.69), stroke: 0.45pt)
  line((-0.92, 0.19), (-1.23, 0.50), stroke: 0.45pt)
  line((-1.11, 0.19), (-1.23, 0.31), stroke: 0.45pt)
  line((-0.98, 0.63), (-1.23, 0.88), stroke: 0.45pt)
  line((-0.98, 0.82), (-1.23, 1.07), stroke: 0.45pt)
  line((-0.98, 1.01), (-1.23, 1.26), stroke: 0.45pt)
  line((-0.98, 1.20), (-1.13, 1.35), stroke: 0.45pt)

  line((-0.55, -0.37), (-0.73, -0.19), stroke: 0.45pt)
  line((-0.55, -0.52), (-0.88, -0.19), stroke: 0.45pt)
  line((-0.74, -0.52), (-1.07, -0.19), stroke: 0.45pt)
  line((-0.93, -0.52), (-1.23, -0.22), stroke: 0.45pt)
  line((-0.98, -0.66), (-1.23, -0.41), stroke: 0.45pt)
  line((-0.98, -0.85), (-1.23, -0.60), stroke: 0.45pt)
  line((-0.98, -1.04), (-1.23, -0.79), stroke: 0.45pt)
  line((-0.98, -1.23), (-1.23, -0.98), stroke: 0.45pt)
  line((-1.05, -1.35), (-1.23, -1.17), stroke: 0.45pt)

  line((-1.25, 0.72), (-1.25, 1.33), stroke: (paint: red, thickness: 1.6pt))
  line((-1.25, -0.72), (-1.25, -1.33), stroke: (paint: red, thickness: 1.6pt))
  line((-0.42, 0.66), (-0.78, 0.66), mark: (end: ">"), stroke: 1.1pt)
  line((-0.42, -0.66), (-0.78, -0.66), mark: (end: ">"), stroke: 1.1pt)

  line((0.30, 0.19), (1.18, 0.19), stroke: 0.85pt)
  line((0.30, -0.19), (1.18, -0.19), stroke: 0.85pt)
  line((1.32, 0.19), (2.20, 0.19), stroke: 0.85pt)
  line((1.32, -0.19), (2.20, -0.19), stroke: 0.85pt)

  arc((0.60, 0), start: 90deg, stop: 270deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  arc((1.12, 0), start: -90deg, stop: 90deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  line((0.60, 0.045), (1.12, 0.045), stroke: 0.65pt)
  line((0.60, -0.045), (1.12, -0.045), stroke: 0.65pt)

  arc((1.40, 0), start: 90deg, stop: 270deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  arc((1.95, 0), start: -90deg, stop: 90deg, radius: 0.045, anchor: "origin", stroke: 0.65pt)
  line((1.40, 0.045), (1.95, 0.045), stroke: 0.65pt)
  line((1.40, -0.045), (1.95, -0.045), stroke: 0.65pt)

  line((0.55, 0.19), (0.55, 0.52), (0.98, 0.52), (0.98, 1.35), (1.58, 1.35), (1.58, 1.22), (1.12, 1.07), (1.12, 0.19), close: true, stroke: 0.85pt)
  line((0.55, -0.19), (0.55, -0.52), (0.98, -0.52), (0.98, -1.35), (1.58, -1.35), (1.58, -1.22), (1.12, -1.07), (1.12, -0.19), close: true, stroke: 0.85pt)

  line((0.55, 0.34), (0.73, 0.52), stroke: 0.45pt)
  line((0.55, 0.19), (0.88, 0.52), stroke: 0.45pt)
  line((0.73, 0.19), (1.12, 0.58), stroke: 0.45pt)
  line((0.92, 0.19), (1.12, 0.39), stroke: 0.45pt)
  line((0.98, 0.63), (1.12, 0.77), stroke: 0.45pt)
  line((0.98, 0.82), (1.12, 0.96), stroke: 0.45pt)
  line((0.98, 1.01), (1.32, 1.35), stroke: 0.45pt)
  line((0.98, 1.20), (1.13, 1.35), stroke: 0.45pt)
  line((1.25, 1.11), (1.49, 1.35), stroke: 0.45pt)
  line((1.49, 1.19), (1.58, 1.28), stroke: 0.45pt)

  line((0.55, -0.37), (0.73, -0.19), stroke: 0.45pt)
  line((0.55, -0.52), (0.88, -0.19), stroke: 0.45pt)
  line((0.74, -0.52), (1.07, -0.19), stroke: 0.45pt)
  line((0.93, -0.52), (1.12, -0.33), stroke: 0.45pt)
  line((0.98, -0.66), (1.12, -0.52), stroke: 0.45pt)
  line((0.98, -0.85), (1.12, -0.71), stroke: 0.45pt)
  line((0.98, -1.04), (1.12, -0.90), stroke: 0.45pt)
  line((0.98, -1.23), (1.14, -1.07), stroke: 0.45pt)
  line((1.05, -1.35), (1.27, -1.13), stroke: 0.45pt)
  line((1.24, -1.35), (1.42, -1.17), stroke: 0.45pt)
  line((1.43, -1.35), (1.56, -1.22), stroke: 0.45pt)

  line((1.16, 0.19), (1.16, 1.05), (1.60, 1.20), (1.60, 0.52), (1.95, 0.52), (1.95, 0.19), close: true, stroke: 0.85pt)
  line((1.16, -0.19), (1.16, -1.05), (1.60, -1.20), (1.60, -0.52), (1.95, -0.52), (1.95, -0.19), close: true, stroke: 0.85pt)
  line((1.12, 0.90), (1.16, 0.90), stroke: 0.65pt)
  line((1.12, -0.90), (1.16, -0.90), stroke: 0.65pt)

  line((1.95, 0.34), (1.77, 0.52), stroke: 0.45pt)
  line((1.95, 0.19), (1.62, 0.52), stroke: 0.45pt)
  line((1.77, 0.19), (1.16, 0.80), stroke: 0.45pt)
  line((1.58, 0.19), (1.16, 0.61), stroke: 0.45pt)
  line((1.39, 0.19), (1.16, 0.42), stroke: 0.45pt)
  line((1.20, 0.19), (1.16, 0.23), stroke: 0.45pt)
  line((1.60, 0.55), (1.16, 0.99), stroke: 0.45pt)
  line((1.60, 0.74), (1.26, 1.08), stroke: 0.45pt)
  line((1.60, 0.93), (1.40, 1.13), stroke: 0.45pt)
  line((1.60, 1.12), (1.54, 1.18), stroke: 0.45pt)

  line((1.95, -0.37), (1.77, -0.19), stroke: 0.45pt)
  line((1.95, -0.52), (1.62, -0.19), stroke: 0.45pt)
  line((1.76, -0.52), (1.43, -0.19), stroke: 0.45pt)
  line((1.57, -0.52), (1.24, -0.19), stroke: 0.45pt)
  line((1.60, -0.68), (1.16, -0.24), stroke: 0.45pt)
  line((1.60, -0.87), (1.16, -0.43), stroke: 0.45pt)
  line((1.60, -1.06), (1.16, -0.62), stroke: 0.45pt)
  line((1.53, -1.18), (1.16, -0.81), stroke: 0.45pt)
  line((1.36, -1.12), (1.16, -0.92), stroke: 0.45pt)

  line((1.14, 1.06), (1.58, 1.21), stroke: (paint: red, thickness: 1.6pt))
  line((1.14, -1.06), (1.58, -1.21), stroke: (paint: red, thickness: 1.6pt))
  line((2.08, 0.66), (1.72, 0.66), mark: (end: ">"), stroke: 1.1pt)
  line((2.08, -0.66), (1.72, -0.66), mark: (end: ">"), stroke: 1.1pt)

  line((3.75, -1.55), (3.75, 1.55), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  circle((3.75, 0), radius: 1.35, stroke: 0.9pt)
  circle((3.75, 0), radius: 1.22, stroke: 0.8pt)
  circle((3.75, 0), radius: 1.12, stroke: 0.65pt)
  circle((3.75, 0), radius: 0.19, stroke: 0.8pt)
  rect((3.50, -0.045), (3.57, 0.045), fill: white, stroke: 0.65pt)

  for a in (0deg, 60deg, 120deg, 180deg, 240deg, 300deg) {
    let r1 = 0.52
    let r2 = 1.04
    line((3.75 + r1 * calc.cos(a), r1 * calc.sin(a)), (3.75 + r2 * calc.cos(a), r2 * calc.sin(a)), mark: (end: ">"), stroke: 0.85pt)
  }
})
