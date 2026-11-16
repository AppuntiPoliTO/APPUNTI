// Figura estratta da capitoli/cap7.typ (riga 525) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1cm, {
  import draw: *

  line((0.85, 2.84), (2.3, 2.84), (3.125, 2.952), (3.71, 3.258), (4.066, 3.737), (4.18, 4.35), (4.5, 4.35), (4.5, 0.65), (4.18, 0.65), (4.066, 1.263), (3.71, 1.742), (3.125, 2.048), (2.3, 2.16), (0.85, 2.16), close: true, fill: blue.transparentize(89%), stroke: none)

  circle((1.2, 2.5), radius: (0.06, 0.34), fill: blue.transparentize(78%), stroke: none)
  arc((1.2, 2.5), start: 90deg, stop: 270deg, radius: (0.06, 0.34), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt))
  arc((1.2, 2.5), start: 270deg, stop: 450deg, radius: (0.06, 0.34), anchor: "origin", stroke: 0.75pt + blue.darken(15%))

  line((0.85, 2.84), (2.3, 2.84), stroke: 0.95pt)
  bezier((2.3, 2.84), (4.18, 4.35), (3.55, 2.84), (4.18, 3.45), stroke: 0.95pt)
  line((0.85, 2.16), (2.3, 2.16), stroke: 0.95pt)
  bezier((2.3, 2.16), (4.18, 0.65), (3.55, 2.16), (4.18, 1.55), stroke: 0.95pt)

  line((4.5, 0.6), (4.5, 4.4), stroke: 1.2pt)
  line((4.5, 0.75), (4.72, 0.95), stroke: 0.55pt)
  line((4.5, 1.05), (4.72, 1.25), stroke: 0.55pt)
  line((4.5, 1.35), (4.72, 1.55), stroke: 0.55pt)
  line((4.5, 1.65), (4.72, 1.85), stroke: 0.55pt)
  line((4.5, 1.95), (4.72, 2.15), stroke: 0.55pt)
  line((4.5, 2.25), (4.72, 2.45), stroke: 0.55pt)
  line((4.5, 2.55), (4.72, 2.75), stroke: 0.55pt)
  line((4.5, 2.85), (4.72, 3.05), stroke: 0.55pt)
  line((4.5, 3.15), (4.72, 3.35), stroke: 0.55pt)
  line((4.5, 3.45), (4.72, 3.65), stroke: 0.55pt)
  line((4.5, 3.75), (4.72, 3.95), stroke: 0.55pt)
  line((4.5, 4.05), (4.72, 4.25), stroke: 0.55pt)

  line((1.2, 2.5), (2.15, 2.5), mark: (end: ">"), stroke: 1pt + blue.darken(15%))
  content((1.72, 2.61), text(size: 7.5pt, fill: blue.darken(15%))[$U$], anchor: "south")
  content((0.68, 2.5), text(size: 8.5pt)[$Q$], anchor: "east")
  content((1.2, 2.02), text(size: 7.5pt)[$S_1$], anchor: "north")

  bezier((3.85, 2.85), (4.34, 4.05), (4.22, 3.05), (4.34, 3.45), mark: (end: ">"), stroke: 0.85pt + blue.darken(10%))
  bezier((3.85, 2.15), (4.34, 0.95), (4.22, 1.95), (4.34, 1.55), mark: (end: ">"), stroke: 0.85pt + blue.darken(10%))

  content((1.45, 3.18), text(size: 8.5pt)[$p = 0$], anchor: "south")

  line((2.55, 3.85), (3.15, 3.85), mark: (end: ">"), stroke: 0.75pt)
  line((2.55, 3.85), (2.55, 4.45), mark: (end: ">"), stroke: 0.75pt)
  line((2.55, 3.85), (2.22, 3.52), mark: (end: ">"), stroke: 0.75pt)
  content((3.22, 3.85), text(size: 7.5pt)[$x$], anchor: "west")
  content((2.55, 4.52), text(size: 7.5pt)[$y$], anchor: "south")
  content((2.16, 3.46), text(size: 7.5pt)[$z$], anchor: "north-east")

  line((5.95, 2.5), (4.88, 2.5), mark: (end: ">"), stroke: 1.1pt)
  content((5.5, 2.65), text(size: 8.5pt)[$arrow(F) = (F_x, 0, 0)$], anchor: "south")
})
