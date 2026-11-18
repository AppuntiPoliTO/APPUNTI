// Figura estratta da fatica.typ (riga 721) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  rect((0.8, 0.6), (5.3, 3.8), stroke: 0.8pt)
  line((1.3, 0.6), (1.3, 3.8), stroke: 0.4pt + gray)
  line((1.8, 0.6), (1.8, 3.8), stroke: 0.4pt + gray)
  line((2.3, 0.6), (2.3, 3.8), stroke: 0.4pt + gray)
  line((2.8, 0.6), (2.8, 3.8), stroke: 0.4pt + gray)
  line((3.3, 0.6), (3.3, 3.8), stroke: 0.4pt + gray)
  line((3.8, 0.6), (3.8, 3.8), stroke: 0.4pt + gray)
  line((4.3, 0.6), (4.3, 3.8), stroke: 0.4pt + gray)
  line((4.8, 0.6), (4.8, 3.8), stroke: 0.4pt + gray)

  line((0.8, 1.0), (5.3, 1.0), stroke: 0.4pt + gray)
  line((0.8, 1.4), (5.3, 1.4), stroke: 1pt + red.darken(10%))
  line((0.8, 1.8), (5.3, 1.8), stroke: 0.4pt + gray)
  line((0.8, 2.2), (5.3, 2.2), stroke: 0.4pt + gray)
  line((0.8, 2.6), (5.3, 2.6), stroke: 0.4pt + gray)
  line((0.8, 3.0), (5.3, 3.0), stroke: 0.4pt + gray)
  line((0.8, 3.4), (5.3, 3.4), stroke: 0.4pt + gray)

  bezier((1.05, 3.8), (1.8, 2.55), (1.3, 3.1), (1.55, 2.75), stroke: 1.3pt)
  bezier((1.8, 2.55), (3.3, 1.8), (2.2, 2.25), (2.75, 1.98), stroke: 1.3pt)
  bezier((3.3, 1.8), (5.3, 1.43), (4.0, 1.62), (4.7, 1.48), stroke: 1.3pt)

  content((0.7, 3.8), text(size: 6.5pt)[1.00], anchor: "east")
  content((0.7, 3.4), text(size: 6.5pt)[0.95], anchor: "east")
  content((0.7, 3.0), text(size: 6.5pt)[0.90], anchor: "east")
  content((0.7, 2.6), text(size: 6.5pt)[0.85], anchor: "east")
  content((0.7, 2.2), text(size: 6.5pt)[0.80], anchor: "east")
  content((0.7, 1.8), text(size: 6.5pt)[0.75], anchor: "east")
  content((0.7, 1.4), text(size: 6.5pt, fill: red.darken(10%))[0.70], anchor: "east")
  content((0.7, 1.0), text(size: 6.5pt)[0.65], anchor: "east")
  content((0.7, 0.6), text(size: 6.5pt)[0.60], anchor: "east")
  content((0.2, 3.5), text(size: 8pt)[$C_S$], anchor: "east")

  content((1.05, 0.45), text(size: 6.5pt)[10], anchor: "north")
  content((1.8, 0.45), text(size: 6.5pt)[30], anchor: "north")
  content((2.3, 0.45), text(size: 6.5pt)[50], anchor: "north")
  content((2.8, 0.45), text(size: 6.5pt)[70], anchor: "north")
  content((3.3, 0.45), text(size: 6.5pt)[90], anchor: "north")
  content((4.05, 0.45), text(size: 6.5pt)[130], anchor: "north")
  content((4.8, 0.45), text(size: 6.5pt)[170], anchor: "north")
  content((5.3, 0.45), text(size: 6.5pt)[190], anchor: "north")
  content((5.55, 0.45), text(size: 7.5pt)[$d$ (mm)], anchor: "north-west")

  rect((1.65, 3.05), (3.85, 3.45), fill: white, stroke: 0.6pt)
  content((2.75, 3.25), text(size: 7pt)[Flessione e torsione], anchor: "center")
  rect((1.5, 0.68), (4.65, 1.25), fill: white, stroke: 0.6pt + red.darken(10%))
  content((3.07, 0.96), text(size: 6.2pt)[Asintoto: valore medio $C_L = 0.7$ \ in trazione-compressione], anchor: "center")
})
