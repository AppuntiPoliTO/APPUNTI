// Figura estratta da collegamenti filettati.typ (riga 723) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((0, 0), (0, 4.1), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (8.2, 0), mark: (end: ">"), stroke: 0.8pt)

  line((0, 0), (3.5, 3.5), stroke: 1.1pt)
  line((1.9, 2.8), (5.4, 0), stroke: 1.1pt)

  line((0, 3.20), (7.4, 3.20), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.90), (6.0, 2.90), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.60), (6.6, 2.60), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.24), (7.4, 2.24), stroke: (dash: "dashed", thickness: 0.6pt))

  line((2.6, 2.24), (2.6, 2.60), stroke: 1.1pt)
  line((3.2, 1.76), (3.2, 3.20), stroke: 1.1pt)

  rect((2.50, 2.50), (2.70, 2.70), fill: red, stroke: none)
  rect((3.10, 3.10), (3.30, 3.30), fill: red, stroke: none)

  line((2.49, 2.16), (2.71, 2.16), (2.60, 2.36), close: true, fill: blue.darken(15%), stroke: none)
  line((3.09, 1.68), (3.31, 1.68), (3.20, 1.88), close: true, fill: blue.darken(15%), stroke: none)

  bezier((3.45, 2.90), (3.725, 3.20), (3.549, 3.070), (3.625, 3.20), stroke: (paint: blue.darken(45%), thickness: 1.2pt))
  bezier((3.725, 3.20), (4.275, 2.60), (3.925, 3.20), (4.075, 2.60), stroke: (paint: blue.darken(45%), thickness: 1.2pt))
  bezier((4.275, 2.60), (4.825, 3.20), (4.475, 2.60), (4.625, 3.20), stroke: (paint: blue.darken(45%), thickness: 1.2pt))
  bezier((4.825, 3.20), (5.375, 2.60), (5.025, 3.20), (5.175, 2.60), stroke: (paint: blue.darken(45%), thickness: 1.2pt))
  bezier((5.375, 2.60), (5.65, 2.90), (5.475, 2.60), (5.551, 2.730), stroke: (paint: blue.darken(45%), thickness: 1.2pt))

  line((0.60, 3.75), (0.60, 3.20), mark: (end: ">"), stroke: 0.6pt)
  line((0.60, 1.35), (0.60, 2.90), mark: (end: ">"), stroke: 0.6pt)

  line((7.05, 2.24), (7.05, 3.20), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((6.25, 2.95), (6.25, 2.60), mark: (end: ">"), stroke: 0.6pt)
  line((6.25, 1.89), (6.25, 2.24), mark: (end: ">"), stroke: 0.6pt)

  line((4.35, 3.65), (4.76, 3.24), mark: (end: ">"), stroke: 0.6pt)
  line((4.90, 1.50), (3.25, 2.35), mark: (end: ">"), stroke: 0.6pt)
  line((4.90, 0.90), (2.65, 2.40), mark: (end: ">"), stroke: 0.6pt)

  content((-0.15, 3.95), text(size: 8.5pt)[$|F_p|, |F_v|$], anchor: "east")
  content((8.10, -0.15), text(size: 8.5pt)[$u$], anchor: "north")

  content((0.72, 3.48), text(size: 8pt)[$F_(v,a)$], anchor: "west")
  content((0.72, 1.75), text(size: 8pt)[$F_(v,m)$], anchor: "west")
  content((-0.15, 2.24), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")

  content((4.25, 3.70), text(size: 8.5pt)[$Delta C_v(t)$], anchor: "south")
  content((7.18, 2.72), text(size: 8pt)[$Delta C_(max,v)$], anchor: "west")
  content((6.35, 2.02), text(size: 8pt)[$Delta C_(min,v)$], anchor: "west")

  content((4.95, 1.48), text(size: 8.5pt)[$C_max$], anchor: "west")
  content((4.95, 0.88), text(size: 8.5pt)[$C_min$], anchor: "west")
})
