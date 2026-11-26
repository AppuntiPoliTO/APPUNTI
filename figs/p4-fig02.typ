// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.95cm, {
  import draw: *

  line((-4.8, 0), (4.8, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  line((-3.35, -1.35), (-3.35, 1.35), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-4.55, 0.45), (-3.95, 0.45), (-3.75, 1.05), (-2.95, 1.05), (-2.95, 0.65), (-3.65, 0.65), (-3.65, -0.65), (-2.95, -0.65), (-2.95, -1.05), (-3.75, -1.05), (-3.95, -0.45), (-4.55, -0.45), close: true, fill: luma(238), stroke: 0.85pt)
  circle((-3.35, 0), radius: 0.42, fill: white, stroke: 0.85pt)
  circle((-3.35, 0), radius: 0.18, stroke: 0.65pt)
  rect((-3.52, 0.42), (-3.18, 1.05), fill: luma(215), stroke: 0.75pt)
  rect((-3.52, -1.05), (-3.18, -0.42), fill: luma(215), stroke: 0.75pt)

  line((-2.78, 0.95), (-2.15, 0.95), (-1.95, 0.58), (1.35, 0.58), (1.35, 0.34), (-1.95, 0.34), (-2.15, 0.62), (-2.78, 0.62), close: true, fill: rgb("#fde68a").transparentize(20%), stroke: 0.85pt)
  line((-2.78, -0.95), (-2.15, -0.95), (-1.95, -0.58), (1.35, -0.58), (1.35, -0.34), (-1.95, -0.34), (-2.15, -0.62), (-2.78, -0.62), close: true, fill: rgb("#fde68a").transparentize(20%), stroke: 0.85pt)
  for x in range(-18, 12, step: 3) {
    let xf = x / 10
    line((xf, 0.34), (xf + 0.22, 0.58), stroke: 0.4pt)
    line((xf, -0.58), (xf + 0.22, -0.34), stroke: 0.4pt)
  }

  line((-1.15, 0.34), (1.95, 0.34), (2.15, 0.62), (2.78, 0.62), (2.78, 0.95), (2.15, 0.95), (1.95, 0.58), (1.95, -0.58), (2.15, -0.95), (2.78, -0.95), (2.78, -0.62), (2.15, -0.62), (1.95, -0.34), (-1.15, -0.34), close: true, fill: rgb("#bae6fd").transparentize(25%), stroke: 0.85pt)
  line((-1.15, 0.22), (1.35, 0.22), stroke: 0.65pt)
  line((-1.15, -0.22), (1.35, -0.22), stroke: 0.65pt)
  line((-1.15, 0.10), (1.35, 0.10), stroke: 0.5pt)
  line((-1.15, -0.10), (1.35, -0.10), stroke: 0.5pt)

  line((3.35, -1.35), (3.35, 1.35), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.55, 0.45), (3.95, 0.45), (3.75, 1.05), (2.95, 1.05), (2.95, 0.65), (3.65, 0.65), (3.65, -0.65), (2.95, -0.65), (2.95, -1.05), (3.75, -1.05), (3.95, -0.45), (4.55, -0.45), close: true, fill: luma(238), stroke: 0.85pt)
  circle((3.35, 0), radius: 0.42, fill: white, stroke: 0.85pt)
  circle((3.35, 0), radius: 0.18, stroke: 0.65pt)
  rect((3.18, 0.42), (3.52, 1.05), fill: luma(215), stroke: 0.75pt)
  rect((3.18, -1.05), (3.52, -0.42), fill: luma(215), stroke: 0.75pt)

  line((-0.65, 0.92), (0.65, 0.92), mark: (start: ">", end: ">"), stroke: (paint: rgb("#1d4ed8"), thickness: 0.9pt))
  content((0, 1.05), text(size: 7.5pt, fill: rgb("#1d4ed8"))[scorrimento assiale (scanalato)], anchor: "south")

  content((-3.35, -1.48), text(size: 7.5pt)[cardano 1], anchor: "north")
  content((3.35, -1.48), text(size: 7.5pt)[cardano 2], anchor: "north")
  content((0, -1.02), text(size: 7.5pt)[albero intermedio telescopico], anchor: "north")
})
