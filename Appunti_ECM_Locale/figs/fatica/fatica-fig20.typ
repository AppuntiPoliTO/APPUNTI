// Figura estratta da fatica.typ (riga 690) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  circle((1.8, 3.8), radius: 0.65, fill: gray.lighten(70%), stroke: none)
  arc((1.8, 3.8), start: 53.13deg, stop: 126.87deg, radius: 0.65, anchor: "origin", fill: red.transparentize(65%), stroke: none)
  line((1.41, 4.32), (2.19, 4.32), (1.8, 4.32), close: true, fill: gray.lighten(70%), stroke: none)
  circle((1.8, 3.8), radius: 0.65, stroke: 1pt)
  line((1.0, 3.8), (2.6, 3.8), stroke: 0.6pt)
  line((1.8, 3.0), (1.8, 4.6), stroke: 0.6pt)
  line((1.41, 4.32), (2.19, 4.32), stroke: 0.9pt + blue.darken(20%))
  line((1.8, 4.45), (3.6, 4.45), stroke: 0.9pt + red.darken(10%))
  line((1.8, 4.32), (3.24, 4.32), stroke: 0.8pt + blue.darken(20%))
  line((0.0, 3.15), (1.8, 3.15), stroke: 0.9pt + red.darken(10%))
  line((0.0, 3.15), (3.6, 4.45), stroke: 1pt + red.darken(10%))
  content((3.68, 4.48), text(size: 7.5pt)[$sigma_a$], anchor: "south-west")
  content((3.32, 4.26), text(size: 7pt, fill: blue.darken(20%))[$80% thin sigma_a$], anchor: "north-west")

  circle((1.8, 1.3), radius: 1.35, fill: gray.lighten(70%), stroke: none)
  arc((1.8, 1.3), start: 53.13deg, stop: 126.87deg, radius: 1.35, anchor: "origin", fill: red.transparentize(65%), stroke: none)
  line((0.99, 2.38), (2.61, 2.38), (1.8, 2.38), close: true, fill: gray.lighten(70%), stroke: none)
  circle((1.8, 1.3), radius: 1.35, stroke: 1pt)
  line((0.3, 1.3), (3.3, 1.3), stroke: 0.6pt)
  line((1.8, -0.2), (1.8, 2.8), stroke: 0.6pt)
  line((0.99, 2.38), (2.61, 2.38), stroke: 0.9pt + blue.darken(20%))
  line((1.8, 2.65), (3.6, 2.65), stroke: 0.9pt + red.darken(10%))
  line((1.8, 2.38), (3.24, 2.38), stroke: 0.8pt + blue.darken(20%))
  line((0.45, -0.05), (3.6, 2.65), stroke: 1pt + red.darken(10%))
  content((3.68, 2.65), text(size: 7.5pt)[$sigma_a$], anchor: "south-west")
  content((3.32, 2.36), text(size: 7pt, fill: blue.darken(20%))[$80% thin sigma_a$], anchor: "north-west")
})
