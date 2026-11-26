// Figura estratta da fatica.typ (riga 500) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  import draw: *
  rect((0.0, 2.3), (3.8, 2.55), fill: gray.lighten(50%), stroke: 0.7pt)
  rect((0.0, 0.95), (3.8, 1.2), fill: gray.lighten(50%), stroke: 0.7pt)
  line((0.0, 0.95), (0.0, 2.55), stroke: 1pt)
  line((3.8, 0.95), (3.8, 2.55), stroke: 1pt)
  line((-0.3, 1.75), (4.1, 1.75), stroke: (dash: "dash-dotted", thickness: 0.7pt))

  line((2.5, 1.75), (3.2, 2.55), (2.5, 2.55), close: true, fill: red.transparentize(75%), stroke: none)
  line((2.5, 1.75), (1.8, 0.95), (2.5, 0.95), close: true, fill: red.transparentize(75%), stroke: none)
  line((2.5, 0.95), (2.5, 2.55), stroke: 0.8pt)
  line((1.8, 0.95), (3.2, 2.55), stroke: 1pt + blue.darken(20%))
  line((2.5, 2.37), (3.04, 2.37), stroke: 0.6pt + blue.darken(20%))
  line((2.5, 2.15), (2.85, 2.15), stroke: 0.6pt + blue.darken(20%))
  line((2.5, 1.35), (2.15, 1.35), stroke: 0.6pt + blue.darken(20%))
  line((2.5, 1.13), (1.96, 1.13), stroke: 0.6pt + blue.darken(20%))
  circle((3.09, 2.425), radius: 0.06, fill: red.darken(10%), stroke: none)

  line((3.2, 2.55), (3.2, 3.35), stroke: 0.6pt)
  line((3.09, 2.425), (3.09, 2.95), stroke: 0.6pt)
  line((2.5, 2.55), (2.5, 3.35), stroke: 0.6pt)
  line((2.2, 3.2), (3.2, 3.2), mark: (end: ">"), stroke: 0.9pt)
  line((2.2, 2.8), (3.09, 2.8), mark: (end: ">"), stroke: 0.9pt + red.darken(10%))
  content((2.15, 3.25), text(size: 8pt)[$sigma_f$], anchor: "east")
  content((2.15, 2.8), text(size: 8pt, fill: red.darken(10%))[$sigma_(a,"eff") ("ZP")$], anchor: "east")

  rect((5.4, 2.3), (9.2, 2.55), fill: gray.lighten(50%), stroke: 0.7pt)
  rect((5.4, 0.95), (9.2, 1.2), fill: gray.lighten(50%), stroke: 0.7pt)
  line((5.4, 0.95), (5.4, 2.55), stroke: 1pt)
  line((9.2, 0.95), (9.2, 2.55), stroke: 1pt)
  line((5.1, 1.75), (9.5, 1.75), stroke: (dash: "dash-dotted", thickness: 0.7pt))

  rect((7.6, 0.95), (8.3, 2.55), fill: red.transparentize(75%), stroke: none)
  line((7.6, 0.95), (7.6, 2.55), stroke: 0.8pt)
  line((8.3, 0.95), (8.3, 2.55), stroke: 1pt + blue.darken(20%))
  line((7.6, 2.35), (8.3, 2.35), stroke: 0.6pt + blue.darken(20%))
  line((7.6, 2.15), (8.3, 2.15), stroke: 0.6pt + blue.darken(20%))
  line((7.6, 1.95), (8.3, 1.95), stroke: 0.6pt + blue.darken(20%))
  line((7.6, 1.55), (8.3, 1.55), stroke: 0.6pt + blue.darken(20%))
  line((7.6, 1.35), (8.3, 1.35), stroke: 0.6pt + blue.darken(20%))
  line((7.6, 1.15), (8.3, 1.15), stroke: 0.6pt + blue.darken(20%))
  circle((8.3, 2.425), radius: 0.06, fill: red.darken(10%), stroke: none)

  line((8.3, 2.55), (8.3, 3.25), stroke: 0.6pt)
  line((7.6, 2.55), (7.6, 3.25), stroke: 0.6pt)
  line((7.2, 3.05), (8.3, 3.05), mark: (end: ">"), stroke: 0.9pt + red.darken(10%))
  content((7.15, 3.05), text(size: 8pt, fill: red.darken(10%))[$sigma_(a,"eff") ("ZP") = sigma_(t c)$], anchor: "east")

  content((1.9, 0.55), text(size: 8pt)[Flessione], anchor: "center")
  content((7.3, 0.55), text(size: 8pt)[Trazione-compressione], anchor: "center")
  content((4.6, 0.25), text(size: 7.5pt)[Zona di processo (ZP)], anchor: "center")
  line((4.2, 0.45), (3.4, 1.07), mark: (end: ">"), stroke: 0.6pt)
  line((5.0, 0.45), (5.8, 1.07), mark: (end: ">"), stroke: 0.6pt)
})
