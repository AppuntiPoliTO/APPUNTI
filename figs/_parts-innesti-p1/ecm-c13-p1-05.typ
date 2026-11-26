#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((0.5, 0), (1.85, 2.4), fill: gray.transparentize(88%), stroke: none)
  line((0.5, 2.13), (0.77, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 1.86), (1.04, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 1.59), (1.31, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 1.32), (1.58, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 1.05), (1.85, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 0.78), (1.85, 2.13), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 0.51), (1.85, 1.86), stroke: 0.45pt + gray.darken(25%))
  line((0.5, 0.24), (1.85, 1.59), stroke: 0.45pt + gray.darken(25%))
  line((0.53, 0), (1.85, 1.32), stroke: 0.45pt + gray.darken(25%))
  line((0.80, 0), (1.85, 1.05), stroke: 0.45pt + gray.darken(25%))
  line((1.07, 0), (1.85, 0.78), stroke: 0.45pt + gray.darken(25%))
  line((1.34, 0), (1.85, 0.51), stroke: 0.45pt + gray.darken(25%))
  line((1.61, 0), (1.85, 0.24), stroke: 0.45pt + gray.darken(25%))
  rect((0.5, 0), (1.85, 2.4), stroke: 1pt)

  circle((1.175, 1.2), radius: (0.26, 0.26), fill: white.transparentize(10%), stroke: none)
  content((1.175, 1.2), text(size: 10pt, fill: red)[A])

  rect((3.1125, 0), (4.05, 2.4), fill: gray.transparentize(88%), stroke: none)
  line((3.1125, 2.13), (3.3825, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 1.86), (3.6525, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 1.59), (3.9225, 2.4), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 1.32), (4.05, 2.2575), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 1.05), (4.05, 1.9875), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 0.78), (4.05, 1.7175), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 0.51), (4.05, 1.4475), stroke: 0.45pt + gray.darken(25%))
  line((3.1125, 0.24), (4.05, 1.1775), stroke: 0.45pt + gray.darken(25%))
  line((3.1425, 0), (4.05, 0.9075), stroke: 0.45pt + gray.darken(25%))
  line((3.4125, 0), (4.05, 0.6375), stroke: 0.45pt + gray.darken(25%))
  line((3.6825, 0), (4.05, 0.3675), stroke: 0.45pt + gray.darken(25%))
  line((3.9525, 0), (4.05, 0.0975), stroke: 0.45pt + gray.darken(25%))
  rect((3.1125, 0), (4.05, 2.4), stroke: 1pt)

  circle((3.581, 1.2), radius: (0.24, 0.26), fill: white.transparentize(10%), stroke: none)
  content((3.581, 1.2), text(size: 10pt, fill: red)[B])

  line((2.18, 0), (2.4189, 0.2389), stroke: 0.55pt + gray.darken(30%))
  line((2.0146, 0.2), (2.4728, 0.6582), stroke: 0.55pt + gray.darken(30%))
  line((2.0514, 0.55), (2.5570, 1.0556), stroke: 0.55pt + gray.darken(30%))
  line((2.1111, 0.9), (2.6812, 1.4701), stroke: 0.55pt + gray.darken(30%))
  line((2.1946, 1.25), (2.8590, 1.9144), stroke: 0.55pt + gray.darken(30%))
  line((2.3029, 1.6), (3.1029, 2.4), stroke: 0.55pt + gray.darken(30%))
  line((2.4376, 1.95), (2.8876, 2.4), stroke: 0.55pt + gray.darken(30%))

  arc((7.5, -0.2), start: 151.79deg, stop: 177.92deg, radius: 5.5, anchor: "origin", stroke: 1.2pt)
  arc((7.5, -0.2), start: 149.35deg, stop: 177.75deg, radius: 5.1, anchor: "origin", stroke: 1.2pt)
  line((2.0036, 0), (2.4039, 0), stroke: 1.2pt)
  line((2.6534, 2.4), (3.1125, 2.4), stroke: 1.2pt)

  line((-0.2, 0), (5.6, 0), stroke: (dash: "dash-dotted", thickness: 0.75pt))

  line((5.55, 1.9), (4.06, 1.9), mark: (end: ">", fill: black), stroke: 1.25pt)
  line((5.55, 0.5), (4.06, 0.5), mark: (end: ">", fill: black), stroke: 1.25pt)
})
