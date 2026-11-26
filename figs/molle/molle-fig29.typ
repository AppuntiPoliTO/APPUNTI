// Figura estratta da molle.typ (riga 3679) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  line((2.05, 5.14), (2.37, 5.45), stroke: (paint: luma(160), thickness: 0.5pt))
  line((2.05, 4.42), (3.00, 5.21), stroke: (paint: luma(160), thickness: 0.5pt))
  line((2.05, 3.69), (3.63, 4.97), stroke: (paint: luma(160), thickness: 0.5pt))
  line((2.05, 2.97), (4.26, 4.74), stroke: (paint: luma(160), thickness: 0.5pt))
  line((3.56, 3.45), (4.89, 4.50), stroke: (paint: luma(160), thickness: 0.5pt))
  line((4.18, 3.21), (5.52, 4.26), stroke: (paint: luma(160), thickness: 0.5pt))
  line((4.80, 2.97), (6.15, 4.02), stroke: (paint: luma(160), thickness: 0.5pt))
  line((5.42, 2.74), (6.46, 3.55), stroke: (paint: luma(160), thickness: 0.5pt))
  line((3.85, 0.78), (6.46, 2.83), stroke: (paint: luma(160), thickness: 0.5pt))
  line((4.48, 0.54), (6.46, 2.11), stroke: (paint: luma(160), thickness: 0.5pt))
  line((5.11, 0.30), (6.46, 1.38), stroke: (paint: luma(160), thickness: 0.5pt))
  line((5.74, 0.06), (6.46, 0.66), stroke: (paint: luma(160), thickness: 0.5pt))

  line((2.05, 2.84), (2.05, 5.58), (6.46, 3.90), (6.46, -0.20), (3.58, 0.89), stroke: 0.8pt)

  line((0.09, 1.15), (3.42, 3.51), (5.84, 2.59), (2.48, 0.25), close: true, fill: rgb(135, 198, 248), stroke: (paint: rgb(25, 85, 145), thickness: 0.7pt))

  line((2.48, 0.25), (5.84, 2.59), (5.84, 2.13), close: true, fill: rgb(135, 198, 248), stroke: (paint: rgb(25, 85, 145), thickness: 0.7pt))

  line((0.09, 1.15), (-0.16, 0.42), stroke: (paint: luma(180), thickness: 0.5pt))
  line((2.48, 0.25), (2.23, -0.48), stroke: (paint: luma(180), thickness: 0.5pt))
  line((-0.16, 0.42), (2.23, -0.48), stroke: (paint: luma(180), thickness: 0.5pt))
  line((0.02, 0.38), (-0.16, 0.42), (-0.01, 0.32), close: true, fill: luma(140), stroke: none)
  line((2.05, -0.44), (2.23, -0.48), (2.08, -0.38), close: true, fill: luma(140), stroke: none)
  content((1.05, -0.05), text(fill: luma(120))[$b$], anchor: "north")

  line((2.48, 0.25), (2.97, -0.60), stroke: (paint: luma(180), thickness: 0.5pt))
  line((5.84, 2.13), (6.33, 1.28), stroke: (paint: luma(180), thickness: 0.5pt))
  line((2.97, -0.60), (6.33, 1.28), stroke: (paint: luma(180), thickness: 0.5pt))
  line((3.11, -0.56), (2.97, -0.60), (3.15, -0.49), close: true, fill: luma(140), stroke: none)
  line((6.19, 1.24), (6.33, 1.28), (6.15, 1.17), close: true, fill: luma(140), stroke: none)
  content((4.55, 0.40), text(fill: luma(120))[$L$], anchor: "south")

  line((4.45, 2.75), (4.45, 1.12), stroke: (paint: luma(140), thickness: 0.5pt))
  line((4.42, 1.79), (4.45, 1.62), (4.48, 1.79), close: true, fill: black, stroke: none)
  line((4.42, 1.19), (4.45, 1.36), (4.48, 1.19), close: true, fill: black, stroke: none)
  content((4.35, 2.35), [$h(x)$], anchor: "east")

  line((1.28, 0.70), (2.34, 1.45), mark: (end: ">"), stroke: (paint: luma(60), thickness: 0.5pt))
  content((2.25, 1.50), text(size: 8pt)[x], anchor: "south")

  line((1.28, 2.65), (1.28, 1.05), stroke: (paint: red, thickness: 0.6pt))
  line((1.12, 1.22), (1.44, 1.10), (1.28, 0.70), close: true, fill: red, stroke: none)
  content((1.22, 2.72), text(fill: red, "F"))
})
