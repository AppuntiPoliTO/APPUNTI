// Figura estratta da collegamenti filettati.typ (riga 676) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((0, 0), (7.5, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.3), mark: (end: ">"), stroke: 0.8pt)

  line((0, 3.2), (7.4, 3.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.7), (5.75, 2.7), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.2), (6.3, 2.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 1.5), (7.4, 1.5), stroke: (dash: "dashed", thickness: 0.6pt))

  line((0, 0), (3.5, 3.5), stroke: 1.1pt)
  line((1.85, 2.445), (5.343, 0), stroke: 1.1pt)
  line((3.2, 1.5), (3.2, 3.2), stroke: 1.2pt)

  rect((2.11, 2.11), (2.29, 2.29), fill: red, stroke: none)
  rect((3.11, 3.11), (3.29, 3.29), fill: red, stroke: none)
  line((3.09, 1.41), (3.31, 1.41), (3.2, 1.61), close: true, fill: blue, stroke: none)

  bezier((3.45, 2.7), (3.97, 2.7), (3.671, 3.367), (3.749, 3.367), stroke: (paint: navy, thickness: 1.2pt))
  bezier((3.97, 2.7), (4.49, 2.7), (4.191, 2.033), (4.269, 2.033), stroke: (paint: navy, thickness: 1.2pt))
  bezier((4.49, 2.7), (5.01, 2.7), (4.711, 3.367), (4.789, 3.367), stroke: (paint: navy, thickness: 1.2pt))
  bezier((5.01, 2.7), (5.53, 2.7), (5.231, 2.033), (5.309, 2.033), stroke: (paint: navy, thickness: 1.2pt))

  line((0.65, 3.85), (0.65, 3.2), mark: (end: ">"), stroke: 0.7pt)
  line((0.65, 1.1), (0.65, 2.7), mark: (end: ">"), stroke: 0.7pt)
  line((4.94, 2.95), (5.5, 3.7), mark: (end: ">"), stroke: 0.7pt)
  line((6.1, 2.2), (6.1, 3.2), mark: (start: ">", end: ">"), stroke: 0.7pt)
  line((7.25, 1.5), (7.25, 3.2), mark: (start: ">", end: ">"), stroke: 0.7pt)

  content((-0.15, 4.1), text(size: 8.5pt)[$|F_p|, |F_v|$], anchor: "east")
  content((7.4, -0.25), text(size: 8.5pt)[$u$], anchor: "north")
  content((0.78, 3.52), text(size: 8pt)[$F_(v,a)$], anchor: "west")
  content((0.78, 1.85), text(size: 8pt)[$F_(v,m)$], anchor: "west")
  content((-0.15, 2.2), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")
  content((5.55, 3.78), text(size: 8.5pt)[$Delta C_v (t)$], anchor: "south")
  content((6.22, 2.7), text(size: 8pt)[$Delta C_("max",v)$], anchor: "west")
  content((7.37, 2.35), text(size: 8pt)[$C_"max"$], anchor: "west")
})
