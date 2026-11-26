// Figura estratta da collegamenti filettati.typ (riga 577) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  line((0.5, 0), (0.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((1.0, 0), (1.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((1.5, 0), (1.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((2.0, 0), (2.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((2.5, 0), (2.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((3.0, 0), (3.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((3.5, 0), (3.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((4.0, 0), (4.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((4.5, 0), (4.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((5.0, 0), (5.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((5.5, 0), (5.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((6.0, 0), (6.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((6.5, 0), (6.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((7.0, 0), (7.0, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((7.5, 0), (7.5, 4), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))

  line((0, 0.5), (8, 0.5), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 1.0), (8, 1.0), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 1.5), (8, 1.5), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 2.0), (8, 2.0), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 2.5), (8, 2.5), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 3.0), (8, 3.0), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))
  line((0, 3.5), (8, 3.5), stroke: (dash: "dashed", thickness: 0.45pt, paint: gray))

  rect((0, 0), (8, 4), stroke: 0.9pt)

  line((0, 4), (8, 2), stroke: 1.1pt)
  line((0, 3), (8, 1), stroke: 1.1pt)
  line((0, 2), (8, 0), stroke: 1.1pt)

  line((5.716, 3.009), (4.066, 3.421), (3.984, 3.091), (5.634, 2.679), close: true, fill: white, stroke: none)
  content((4.85, 3.05), text(size: 7.5pt)[M 4 ÷ M 8], angle: -14.04deg)

  line((4.916, 2.209), (3.266, 2.621), (3.184, 2.291), (4.834, 1.879), close: true, fill: white, stroke: none)
  content((4.05, 2.25), text(size: 7.5pt)[M 10 ÷ M 16], angle: -14.04deg)

  line((3.416, 1.584), (1.766, 1.996), (1.684, 1.666), (3.334, 1.254), close: true, fill: white, stroke: none)
  content((2.55, 1.625), text(size: 7.5pt)[M 18 ÷ M 30], angle: -14.04deg)

  content((0, -0.12), text(size: 7.5pt)[0.1], anchor: "north")
  content((1, -0.12), text(size: 7.5pt)[0.2], anchor: "north")
  content((2, -0.12), text(size: 7.5pt)[0.3], anchor: "north")
  content((3, -0.12), text(size: 7.5pt)[0.4], anchor: "north")
  content((4, -0.12), text(size: 7.5pt)[0.5], anchor: "north")
  content((5, -0.12), text(size: 7.5pt)[0.6], anchor: "north")
  content((6, -0.12), text(size: 7.5pt)[0.7], anchor: "north")
  content((7, -0.12), text(size: 7.5pt)[0.8], anchor: "north")
  content((8, -0.12), text(size: 7.5pt)[0.9], anchor: "north")
  content((7.5, -0.55), text(size: 8.5pt)[$sigma_m / R_("p0.2")$], anchor: "north")

  content((-0.12, 0), text(size: 7.5pt)[40], anchor: "east")
  content((-0.12, 1), text(size: 7.5pt)[50], anchor: "east")
  content((-0.12, 2), text(size: 7.5pt)[60], anchor: "east")
  content((-0.12, 3), text(size: 7.5pt)[70], anchor: "east")
  content((-0.12, 4), text(size: 7.5pt)[80], anchor: "east")

  content((-0.95, 3.65), text(size: 8pt)[$sigma_D$])
  content((-0.95, 3.30), text(size: 7.5pt)[(MPa)])
  content((-0.95, 2.55), text(size: 7.5pt)[Viti non])
  content((-0.95, 2.20), text(size: 7.5pt)[rullate])

  content((8.12, 0), text(size: 7.5pt)[80], anchor: "west")
  content((8.12, 1), text(size: 7.5pt)[100], anchor: "west")
  content((8.12, 2), text(size: 7.5pt)[120], anchor: "west")
  content((8.12, 3), text(size: 7.5pt)[140], anchor: "west")
  content((8.12, 4), text(size: 7.5pt)[160], anchor: "west")

  content((8.95, 3.65), text(size: 8pt)[$sigma_D$])
  content((8.95, 3.30), text(size: 7.5pt)[(MPa)])
  content((8.95, 2.55), text(size: 7.5pt)[Viti])
  content((8.95, 2.20), text(size: 7.5pt)[rullate])

  content((4.0, 4.35), text(size: 9pt)[Diagramma di Haigh per filettature classi 8.8 ÷ 12.9  (da VDI 2230)], anchor: "south")
})
