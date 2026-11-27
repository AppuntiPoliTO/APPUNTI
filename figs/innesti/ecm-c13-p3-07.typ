#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.4cm, {
  import draw: *

  line((-2.3, 0), (2.4, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0, -2.5), (0, 2.25), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  circle((0, 0), radius: 1.80, stroke: 0.85pt)
  circle((0, 0), radius: 0.38, stroke: 0.75pt)
  circle((0, 0), radius: 0.22, stroke: 0.75pt)
  rect((-0.05, 0.21), (0.05, 0.27), fill: white, stroke: 0.6pt)

  arc((0, 0), start: 105deg, stop: 165deg, radius: 1.35, anchor: "origin", mark: (start: ">"), stroke: 0.7pt)

  arc((0, 0), start: 0deg, stop: 224.28deg, radius: 1.85, anchor: "origin", stroke: 1.1pt)
  line((-1.325, -1.292), (0, -2.65), stroke: 1.1pt)
  line((1.85, 0), (1.85, -1.95), stroke: 1.1pt)

  line((0.60, -2.05), (3.90, -2.05), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((-0.25, -2.90), (0.85, -1.80), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  circle((0.60, -2.05), radius: 0.22, fill: white, stroke: 0.85pt)
  circle((0.60, -2.05), radius: 0.12, stroke: 0.7pt)

  line((0.60, -1.85), (3.60, -1.90), stroke: 0.85pt)
  line((0.60, -2.25), (3.60, -2.20), stroke: 0.85pt)
  arc((3.60, -2.05), start: -90deg, stop: 90deg, radius: 0.15, anchor: "origin", stroke: 0.85pt)
  circle((1.85, -2.05), radius: 0.10, fill: white, stroke: 0.75pt)
  circle((3.60, -2.05), radius: 0.10, fill: white, stroke: 0.75pt)

  line((0.473, -1.923), (-0.127, -2.523), stroke: 0.85pt)
  line((0.727, -2.177), (0.127, -2.777), stroke: 0.85pt)
  arc((0, -2.65), start: 135deg, stop: 315deg, radius: 0.18, anchor: "origin", stroke: 0.85pt)
  circle((0, -2.65), radius: 0.10, fill: white, stroke: 0.75pt)

  line((0.60, -2.05), (-0.32, -1.11), stroke: 0.55pt)
  line((-0.836, -1.793), (-0.228, -1.201), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((0.60, -2.05), (0.60, -0.65), stroke: 0.55pt)
  line((0.60, -0.78), (1.85, -0.78), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((3.60, -2.05), (3.60, -3.00), mark: (end: ">"), stroke: 0.9pt)

  content((-0.62, -1.42), text(size: 8.5pt)[$a$], anchor: "south-east")
  content((1.225, -0.70), text(size: 8.5pt)[$b$], anchor: "south")
  content((-0.68, -2.25), text(size: 8.5pt)[$T_1$], anchor: "north-east")
  content((1.98, -1.25), text(size: 8.5pt)[$T_2$], anchor: "west")
  content((3.72, -2.65), text(size: 8.5pt)[$F$], anchor: "west")
})
