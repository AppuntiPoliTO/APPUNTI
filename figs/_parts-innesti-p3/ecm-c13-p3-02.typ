#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((1.762, 1.702), (1.870, 1.806), (1.706, 1.962), (1.607, 1.849), close: true, fill: black.transparentize(70%), stroke: none)

  circle((0, 0), radius: 3.0, stroke: 1pt)
  circle((0, 0), radius: 2.6, stroke: 0.65pt)
  circle((0, 0), radius: 2.45, stroke: 0.65pt)
  circle((0, 0), radius: 1.8, stroke: 1pt)

  line((0, 0), (-2.298, 1.928), mark: (end: ">"), stroke: 0.7pt)
  line((0, 0), (-1.157, -1.379), mark: (end: ">"), stroke: 0.7pt)
  line((0, 0), (0.299, 2.432), mark: (end: ">"), stroke: 0.7pt)
  line((0.384, 3.126), (0.317, 2.581), mark: (end: ">"), stroke: 0.7pt)

  line((0, 0), (1.55, 0), stroke: 0.65pt)
  line((0, 0), (1.870, 1.806), stroke: 0.65pt)
  line((0, 0), (1.706, 1.962), stroke: 0.65pt)

  arc((0, 0), start: 0deg, stop: 44deg, radius: 1.35, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  arc((0, 0), start: 30deg, stop: 44deg, radius: 1.65, anchor: "origin", mark: (end: ">"), stroke: 0.65pt)
  arc((0, 0), start: 49deg, stop: 64deg, radius: 1.65, anchor: "origin", mark: (start: ">"), stroke: 0.65pt)

  content((-1.15, 0.85), text(size: 8.5pt)[$r_e$], anchor: "north-east")
  content((-0.52, -0.75), text(size: 8.5pt)[$r_i$], anchor: "west")
  content((0.18, 1.95), text(size: 8.5pt)[$r$], anchor: "east")
  content((0.42, 3.16), text(size: 8.5pt)[$d r$], anchor: "south-west")
  content((1.42, 0.56), text(size: 8pt)[$phi$], anchor: "west")
  content((0.62, 1.35), text(size: 8pt)[$d phi$], anchor: "center")
})
