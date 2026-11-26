#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.00, 0.00), (0.00, 2.40), (2.40, 0.00), stroke: 0.8pt)
  line((0.00, 0.00), (1.35, 1.35), stroke: 0.75pt)
  line((0.00, 0.00), (2.40, 0.00), stroke: 2.2pt)

  circle((0.00, 0.00), radius: 0.06, fill: black, stroke: none)
  circle((2.40, 0.00), radius: 0.06, fill: black, stroke: none)

  line((0.75, 0.75), (0.75, -2.25), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))
  line((0.75, 0.75), (-0.75, -0.75), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))
  line((-0.75, -0.75), (0.75, -2.25), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))

  content((0.15, -0.14), text(size: 10.5pt, weight: "bold")[A], anchor: "north")
  content((2.45, -0.14), text(size: 10.5pt, weight: "bold")[B], anchor: "north")

  content((1.00, -1.00), text(size: 12pt, fill: red, weight: "bold")[$n_perp$], anchor: "west")
  content((-0.50, 0.20), text(size: 10.5pt, fill: red, weight: "bold")[$n_(perp t) = n_perp "sen" 45 degree$], anchor: "east")
  content((-0.35, -1.85), text(size: 10.5pt, fill: red, weight: "bold")[$n_(perp n) = n_perp cos 45 degree$], anchor: "east")
})
