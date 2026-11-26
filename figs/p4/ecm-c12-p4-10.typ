#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  arc((6.00, 0), start: 150deg, stop: 180deg, radius: 6.00, anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(80)))
  line((6.00, 0), (0.40, 1.50), stroke: (thickness: 0.55pt, paint: luma(60)))
  arc((6.00, 0), start: 150deg, stop: 180deg, radius: 1.85, anchor: "origin", stroke: (thickness: 0.6pt, paint: luma(60)))
  content((4.55, 1.12), text(size: 8.5pt)[$beta$], anchor: "south")

  line((0, 0), (5.72, 0), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  line((5.30, 0), (6.00, 0), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  content((3.00, -0.22), text(size: 9.5pt)[$bold(M)_1$], anchor: "north")

  line((6.00, 0), (1.04, 2.86), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  line((1.41, 2.65), (0.80, 3.00), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  content((3.55, 1.75), text(size: 9.5pt)[$bold(M)_2$], anchor: "south-west")

  line((0, 0), (0.73, 2.73), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  line((0.62, 2.32), (0.80, 3.00), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 1.3pt))
  content((-0.18, 1.65), text(size: 9.5pt)[$bold(M)_Q$], anchor: "east")
})
