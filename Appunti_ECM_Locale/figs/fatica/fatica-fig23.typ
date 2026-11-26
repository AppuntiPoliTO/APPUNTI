// Figura estratta da fatica.typ (riga 813) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  rect((1.0, 0.8), (7.0, 4.4), stroke: 0.8pt)
  line((2.0, 0.8), (2.0, 4.4), stroke: 0.4pt + gray)
  line((3.0, 0.8), (3.0, 4.4), stroke: 0.4pt + gray)
  line((4.0, 0.8), (4.0, 4.4), stroke: 0.4pt + gray)
  line((5.0, 0.8), (5.0, 4.4), stroke: 0.4pt + gray)
  line((6.0, 0.8), (6.0, 4.4), stroke: 0.4pt + gray)

  line((1.0, 1.4), (7.0, 1.4), stroke: 0.4pt + gray)
  line((1.0, 2.0), (7.0, 2.0), stroke: 0.4pt + gray)
  line((1.0, 2.6), (7.0, 2.6), stroke: 0.4pt + gray)
  line((1.0, 3.2), (7.0, 3.2), stroke: 0.4pt + gray)
  line((1.0, 3.8), (7.0, 3.8), stroke: 0.4pt + gray)

  line((1.0, 4.4), (7.0, 4.4), stroke: 1.1pt)
  bezier((1.0, 4.4), (7.0, 4.12), (3.0, 4.22), (5.0, 4.15), stroke: 1pt)
  bezier((1.0, 4.4), (7.0, 3.82), (3.0, 4.02), (5.0, 3.88), stroke: 1pt)
  bezier((1.0, 4.4), (7.0, 3.55), (3.0, 3.85), (5.0, 3.65), stroke: 1pt)
  bezier((1.0, 4.35), (7.0, 2.95), (3.0, 3.55), (5.0, 3.12), stroke: 1pt)
  bezier((1.0, 4.3), (7.0, 2.15), (3.0, 3.1), (5.0, 2.45), stroke: 1pt)
  bezier((1.0, 4.22), (7.0, 1.3), (3.0, 2.75), (5.0, 1.85), stroke: 1pt)

  content((0.85, 4.4), text(size: 7pt)[1.0], anchor: "east")
  content((0.85, 3.8), text(size: 7pt)[0.9], anchor: "east")
  content((0.85, 3.2), text(size: 7pt)[0.8], anchor: "east")
  content((0.85, 2.6), text(size: 7pt)[0.7], anchor: "east")
  content((0.85, 2.0), text(size: 7pt)[0.6], anchor: "east")
  content((0.85, 1.4), text(size: 7pt)[0.5], anchor: "east")
  content((0.85, 0.8), text(size: 7pt)[0.4], anchor: "east")
  content((0.3, 4.0), text(size: 8.5pt)[$C_F$], anchor: "east")

  content((1.0, 0.65), text(size: 7pt)[200], anchor: "north")
  content((2.0, 0.65), text(size: 7pt)[400], anchor: "north")
  content((3.0, 0.65), text(size: 7pt)[600], anchor: "north")
  content((4.0, 0.65), text(size: 7pt)[800], anchor: "north")
  content((5.0, 0.65), text(size: 7pt)[1000], anchor: "north")
  content((6.0, 0.65), text(size: 7pt)[1200], anchor: "north")
  content((7.0, 0.65), text(size: 7pt)[1400], anchor: "north")
  content((7.35, 0.65), text(size: 7.5pt, fill: red.darken(10%))[$R_m$ (MPa)], anchor: "north-west")

  content((7.15, 4.4), text(size: 6.5pt)[0.8], anchor: "west")
  content((7.15, 4.12), text(size: 6.5pt)[1.6], anchor: "west")
  content((7.15, 3.82), text(size: 6.5pt)[3.2], anchor: "west")
  content((7.15, 3.55), text(size: 6.5pt)[6.3], anchor: "west")
  content((7.15, 2.95), text(size: 6.5pt)[10], anchor: "west")
  content((7.15, 2.15), text(size: 6.5pt)[40], anchor: "west")
  content((7.15, 1.3), text(size: 6.5pt)[160], anchor: "west")
  content((7.85, 2.8), text(size: 7.5pt)[Rugosità $R_a$ ($mu$m)], anchor: "west")
})
