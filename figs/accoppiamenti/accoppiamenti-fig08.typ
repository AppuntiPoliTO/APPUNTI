// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *
  circle((0, 0), radius: 2.5, fill: luma(190), stroke: 0.9pt)
  circle((0, 0), radius: 1.5, fill: luma(232), stroke: 0.9pt)
  arc((0, 1.8376), start: 67.98deg, stop: 112.02deg, radius: 1.2, anchor: "origin", fill: white, stroke: 0.9pt)
  arc((0, -1.8376), start: 247.98deg, stop: 292.02deg, radius: 1.2, anchor: "origin", fill: white, stroke: 0.9pt)
  rect((-0.45, -2.95), (0.45, 2.95), fill: white, stroke: 0.9pt)
  line((0, -3.35), (0, 3.35), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((3.1, 1.2), (0.45, 1.2), mark: (end: ">", fill: black, scale: 0.65), stroke: 1.8pt)
  line((-3.1, -1.2), (-0.45, -1.2), mark: (end: ">", fill: black, scale: 0.65), stroke: 1.8pt)
  content((2.45, 1.45), text(size: 9pt)[$T$], anchor: "south")
  content((-2.45, -1.45), text(size: 9pt)[$T$], anchor: "north")
  line((-0.45, 2.95), (-0.45, 3.95), stroke: 0.55pt)
  line((0.45, 2.95), (0.45, 3.95), stroke: 0.55pt)
  line((-0.45, 3.65), (0.45, 3.65), mark: (start: ">", end: ">", fill: black, scale: 0.45), stroke: 0.55pt)
  content((0, 3.78), text(size: 8.5pt)[$d$], anchor: "south")
  line((-1.5, 0), (-1.5, -4.25), stroke: 0.55pt)
  line((1.5, 0), (1.5, -4.25), stroke: 0.55pt)
  line((-1.5, -3.95), (1.5, -3.95), mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.55pt)
  content((0, -3.82), text(size: 8.5pt)[$D$], anchor: "south")
})
