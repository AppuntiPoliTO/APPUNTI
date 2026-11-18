// Figura estratta da cuscinetti.typ (riga 1114) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  rect((0, 0), (1.6, 4.6), fill: rgb(215, 215, 215), stroke: 1pt)
  rect((0, 4.26), (1.6, 4.6), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((0, 3.46), (1.6, 3.8), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((0, 0.8), (1.6, 1.14), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((0, 0), (1.6, 0.34), fill: rgb(90, 140, 195), stroke: 1pt)
  circle((0.8, 4.03), radius: 0.44, fill: rgb(35, 95, 165), stroke: 1pt)
  circle((0.8, 0.57), radius: 0.44, fill: rgb(35, 95, 165), stroke: 1pt)
  line((-0.2, 2.3), (1.8, 2.3), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0.8, 2.35), (0.8, 0.35), mark: (end: "straight"), stroke: (paint: rgb(220, 0, 0), thickness: 3pt))
  line((0.75, 2.35), (2.45, 2.35), mark: (end: "straight"), stroke: (paint: rgb(220, 0, 0), thickness: 3pt))
  content((1.25, 2.55), [$F_a$], anchor: "south")
  content((0.6, 1.65), [$F_r$], anchor: "east")

  rect((4.2, 0), (5.8, 4.6), fill: rgb(215, 215, 215), stroke: 1pt)
  rect((4.2, 4.26), (5.8, 4.6), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((4.2, 3.46), (5.8, 3.8), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((4.2, 0.8), (5.8, 1.14), fill: rgb(90, 140, 195), stroke: 1pt)
  rect((4.2, 0), (5.8, 0.34), fill: rgb(90, 140, 195), stroke: 1pt)
  circle((5.0, 4.03), radius: 0.44, fill: rgb(35, 95, 165), stroke: 1pt)
  circle((5.0, 0.57), radius: 0.44, fill: rgb(35, 95, 165), stroke: 1pt)
  line((4.0, 2.3), (6.0, 2.3), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((5.0, 2.3), (5.0, -0.55), mark: (end: "straight"), stroke: (paint: rgb(220, 0, 0), thickness: 3pt))
  content((5.2, 1.65), [$P$], anchor: "west")
})
