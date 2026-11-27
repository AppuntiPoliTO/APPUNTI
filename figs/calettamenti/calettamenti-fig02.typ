// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *
  line((-3.2, 0), (6.7, 0), mark: (end: ">", fill: black, scale: 0.55), stroke: 0.85pt)
  line((0, -2.1), (0, 4.3), mark: (end: ">", fill: black, scale: 0.55), stroke: 0.85pt)
  line((6.0, -2.1), (6.0, 4.3), stroke: (dash: "dashed", thickness: 0.7pt))

  line((0, 0), (-3.3, 3.046), stroke: (dash: "dashed", thickness: 0.75pt))
  line((0, 0), (3.3, 3.6), stroke: 1pt)
  line((6.0, 0), (1.883, 3.8), stroke: 1pt)

  line((0, 3.0), (2.75, 3.0), stroke: (dash: "dashed", thickness: 0.65pt))
  line((2.75, 3.0), (2.75, 0.05), mark: (end: ">", fill: black, scale: 0.55), stroke: (dash: "dashed", thickness: 0.7pt))
  line((-1.4, 1.4), (4.38, 1.4), mark: (end: ">", fill: rgb("#CC0000"), scale: 0.6), stroke: (paint: rgb("#CC0000"), dash: "dashed", thickness: 0.7pt))

  line((0.05, -1.4), (5.95, -1.4), mark: (start: ">", end: ">", fill: rgb("#CC0000"), scale: 0.55), stroke: (paint: rgb("#CC0000"), thickness: 0.75pt))

  line((-3.3, 3.45), (-2.7, 2.55), mark: (end: ">", fill: rgb("#0044CC"), scale: 0.55), stroke: (paint: rgb("#0044CC"), thickness: 0.65pt))
  line((-0.2, 3.85), (2.15, 2.42), mark: (end: ">", fill: rgb("#0044CC"), scale: 0.55), stroke: (paint: rgb("#0044CC"), thickness: 0.65pt))

  circle((0, 0), radius: 0.06, fill: rgb("#CC0000"), stroke: none)
  circle((6.0, 0), radius: 0.06, fill: rgb("#CC0000"), stroke: none)
  circle((2.75, 3.0), radius: 0.06, fill: rgb("#009900"), stroke: none)

  content((1.5, 5.2), text(size: 10.5pt, fill: rgb("#0022CC"), weight: "bold")[DIAGRAMMA DI INTERFERENZA], anchor: "center")
  line((-1.15, 4.95), (4.15, 4.95), stroke: (paint: rgb("#0022CC"), thickness: 1pt))

  content((6.85, 0), text(size: 9pt)[$u$], anchor: "west")
  content((-0.2, 3.0), text(size: 9pt)[$|p|$], anchor: "east")
  content((-0.2, -0.35), text(size: 8.5pt)[$D_("mi") / 2$], anchor: "north-east")
  content((2.75, -0.35), text(size: 8.5pt)[$D_c / 2$], anchor: "north")
  content((6.15, -0.35), text(size: 8.5pt)[$D_("ae") / 2$], anchor: "north-west")

  content((-2.35, 1.3), text(size: 8.5pt)[$D_("ae") / 2 delta_a$], anchor: "east")
  content((0.95, 2.15), text(size: 8.5pt)[$D_("mi") / 2 delta_m$], anchor: "center")
  content((4.95, 2.25), text(size: 8.5pt)[$D_("ae") / 2 delta_a$], anchor: "center")

  content((-3.4, 3.45), text(size: 7.5pt)[Caratteristica di\ deformabilità a\ compressione\ dell'albero], anchor: "east")
  content((-0.25, 3.85), text(size: 7.5pt)[Caratteristica di\ deformabilità a\ trazione del mozzo], anchor: "east")

  content((3.0, -1.0), text(size: 8.5pt)[$i \/ 2$], anchor: "center")
  content((3.1, -2.5), text(size: 9pt)[$D_c = (D_("ae") dot D_("mi") dot (delta_a + delta_m)) / (delta_a dot D_("ae") + delta_m dot D_("mi"))$], anchor: "center")
})
