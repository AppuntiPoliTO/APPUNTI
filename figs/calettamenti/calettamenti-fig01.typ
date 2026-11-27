// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *
  line((-2.95, 0), (2.95, 0), stroke: (paint: rgb(110, 110, 110), dash: "dash-dotted", thickness: 0.65pt))
  line((0, -2.95), (0, 2.95), stroke: (paint: rgb(110, 110, 110), dash: "dash-dotted", thickness: 0.65pt))
  circle((0, 0), radius: 2.6, stroke: (dash: "dashed", thickness: 1pt))
  line((0, 0), (2.411, 0.974), mark: (end: ">", fill: black, scale: 0.55), stroke: 0.8pt)
  line((0, 0), (1.671, 1.992), stroke: 0.8pt)
  arc((0, 0), start: 10deg, stop: 22deg, radius: 1.15, anchor: "origin", mark: (end: ">", fill: black, scale: 0.5), stroke: 0.6pt)
  arc((0, 0), start: 22deg, stop: 50deg, radius: 1.15, anchor: "origin", stroke: 0.6pt)
  arc((0, 0), start: 50deg, stop: 62deg, radius: 1.15, anchor: "origin", mark: (start: ">", fill: black, scale: 0.5), stroke: 0.6pt)
  line((3.523, 1.424), (2.411, 0.974), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.95pt)
  line((2.842, -0.092), (2.411, 0.974), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.95pt)
  content((1.68, 0.52), text(size: 8.5pt)[$r$], anchor: "north")
  content((0.92, 1.62), text(size: 8.5pt)[$upright(d) theta$], anchor: "south-east")
  content((3.12, 1.48), text(size: 8.5pt)[$upright(d) N$], anchor: "south")
  content((2.88, -0.18), text(size: 8.5pt)[$upright(d) T$], anchor: "north")
})
