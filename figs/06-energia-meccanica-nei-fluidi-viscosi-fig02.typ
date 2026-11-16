// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 233) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  import draw: *

  rect((1.60, 1.15), (6.80, 3.65), fill: blue.transparentize(93%), stroke: none)
  circle((1.60, 2.40), radius: (0.45, 1.25), fill: blue.transparentize(87%), stroke: none)
  arc((1.60, 2.40), start: -90deg, stop: 90deg, radius: (0.45, 1.25), anchor: "origin", stroke: (paint: gray.darken(15%), thickness: 0.65pt, dash: "dashed"))
  arc((1.60, 2.40), start: 90deg, stop: 270deg, radius: (0.45, 1.25), anchor: "origin", stroke: (paint: gray.darken(35%), thickness: 0.9pt, dash: "dashed"))

  circle((4.20, 2.60), radius: (0.90, 0.324), stroke: (paint: gray.darken(15%), thickness: 0.65pt, dash: "dotted"))

  line((4.40, 2.25), (4.90, 2.38), (4.90, 2.78), (4.40, 2.65), close: true, fill: gray.lighten(45%), stroke: 0.85pt)
  line((4.06, 2.27), (3.71, 2.45), (3.71, 2.85), (4.06, 2.67), close: true, fill: gray.lighten(45%), stroke: 0.85pt)

  rect((4.11, 1.15), (4.29, 2.16), fill: red.lighten(75%), stroke: none)
  line((4.11, 1.15), (4.11, 2.16), stroke: 0.9pt + red.darken(25%))
  line((4.29, 1.15), (4.29, 2.16), stroke: 0.9pt + red.darken(25%))

  rect((3.96, 2.16), (4.44, 2.64), fill: gray.lighten(65%), stroke: none)
  circle((4.20, 2.16), radius: (0.24, 0.086), fill: gray.lighten(65%), stroke: none)
  arc((4.20, 2.16), start: 180deg, stop: 360deg, radius: (0.24, 0.086), anchor: "origin", stroke: 0.9pt)
  line((3.96, 2.16), (3.96, 2.64), stroke: 0.9pt)
  line((4.44, 2.16), (4.44, 2.64), stroke: 0.9pt)
  circle((4.20, 2.64), radius: (0.24, 0.086), fill: gray.lighten(80%), stroke: 0.9pt)

  line((4.00, 2.15), (3.50, 2.02), (3.50, 2.42), (4.00, 2.55), close: true, fill: gray.lighten(35%), stroke: 0.9pt)
  line((4.34, 2.13), (4.69, 1.95), (4.69, 2.35), (4.34, 2.53), close: true, fill: gray.lighten(35%), stroke: 0.9pt)

  circle((4.20, 1.15), radius: (0.20, 0.072), fill: gray.lighten(82%), stroke: 0.75pt)
  line((1.60, 3.65), (6.80, 3.65), stroke: 1.1pt)
  line((1.60, 1.15), (4.00, 1.15), stroke: 1.1pt)
  line((4.40, 1.15), (6.80, 1.15), stroke: 1.1pt)

  rect((4.11, 0.20), (4.29, 1.15), fill: red.lighten(75%), stroke: none)
  circle((4.20, 0.20), radius: (0.09, 0.032), fill: red.lighten(75%), stroke: none)
  line((4.11, 0.20), (4.11, 1.15), stroke: 1pt + red.darken(25%))
  line((4.29, 0.20), (4.29, 1.15), stroke: 1pt + red.darken(25%))
  arc((4.20, 0.20), start: 180deg, stop: 360deg, radius: (0.09, 0.032), anchor: "origin", stroke: 1pt + red.darken(25%))

  circle((6.80, 2.40), radius: (0.45, 1.25), fill: blue.transparentize(86%), stroke: none)
  circle((6.80, 2.40), radius: (0.45, 1.25), stroke: (paint: gray.darken(35%), thickness: 0.9pt, dash: "dashed"))

  line((1.60, 1.85), (0.70, 1.85), mark: (end: ">"), stroke: 1pt + green.darken(35%))
  line((6.80, 1.85), (7.70, 1.85), mark: (end: ">"), stroke: 1pt + green.darken(35%))

  line((0.85, 2.55), (2.15, 2.55), mark: (end: ">"), stroke: 1.1pt + blue.darken(10%))
  line((6.25, 2.55), (7.55, 2.55), mark: (end: ">"), stroke: 1.1pt + blue.darken(10%))

  line((4.62, 2.95), (3.78, 2.95), mark: (end: ">"), stroke: 0.95pt + blue.darken(10%))
  arc((4.20, 0.60), start: 195deg, stop: 345deg, radius: (0.36, 0.12), anchor: "origin", mark: (end: ">"), stroke: 0.95pt + red.darken(20%))

  content((2.95, 3.82), text(size: 8.5pt)[$S_w (arrow(u) = 0)$], anchor: "south")
  content((1.60, 3.22), text(size: 8pt, fill: gray.darken(45%))[$S_1$])
  content((6.80, 3.22), text(size: 8pt, fill: gray.darken(45%))[$S_2$])
  content((0.95, 1.68), text(size: 8.5pt, fill: green.darken(35%))[$arrow(n)_1$], anchor: "north")
  content((7.45, 1.68), text(size: 8.5pt, fill: green.darken(35%))[$arrow(n)_2$], anchor: "north")
  content((1.00, 2.75), text(size: 8.5pt, fill: blue.darken(10%))[$arrow(u)_1$], anchor: "south")
  content((7.45, 2.75), text(size: 8.5pt, fill: blue.darken(10%))[$arrow(u)_2$], anchor: "south")
  content((4.20, 3.12), text(size: 8pt, fill: blue.darken(10%))[$arrow(u) = arrow(w) != 0$], anchor: "south")
  content((4.95, 1.88), text(size: 8.5pt)[$S_m$], anchor: "west")
  content((3.72, 0.60), text(size: 8.5pt, fill: red.darken(20%))[$P_m$], anchor: "east")
})
