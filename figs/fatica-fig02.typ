// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0, 0), (8, 0), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 0.7), (8, 0.7), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 1.4), (8, 1.4), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 2.1), (8, 2.1), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 2.8), (8, 2.8), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 3.5), (8, 3.5), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 4.2), (8, 4.2), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 4.9), (8, 4.9), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0, 5.6), (8, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))

  line((0, 0), (0, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((0.8, 0), (0.8, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((1.6, 0), (1.6, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((2.4, 0), (2.4, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((3.2, 0), (3.2, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((4.0, 0), (4.0, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((4.8, 0), (4.8, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((5.6, 0), (5.6, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((6.4, 0), (6.4, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((7.2, 0), (7.2, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))
  line((8.0, 0), (8.0, 5.6), stroke: (dash: "dashed", thickness: 0.9pt))

  line((0, -0.18), (0, 0.12), stroke: 1.0pt)
  line((4.0, -0.25), (4.0, 0.12), stroke: 1.0pt)
  line((8.0, -0.25), (8.0, 0.12), stroke: 1.0pt)

  bezier((0.44, 5.10), (0.80, 3.92), (0.52, 4.65), (0.64, 4.28), stroke: 1.4pt)
  bezier((0.80, 3.92), (1.60, 2.80), (0.98, 3.52), (1.26, 3.16), stroke: 1.4pt)
  bezier((1.60, 2.80), (3.20, 1.54), (2.02, 2.34), (2.60, 1.88), stroke: 1.4pt)
  bezier((3.20, 1.54), (6.72, 0.18), (4.10, 1.00), (5.30, 0.62), stroke: 1.4pt)

  content((-0.45, 0), text(size: 11pt, font: "Arial")[0], anchor: "east")
  content((-0.12, 1.4), text(size: 11pt, font: "Arial")[0.2], anchor: "east")
  content((-0.12, 2.8), text(size: 11pt, font: "Arial")[0.4], anchor: "east")
  content((-0.12, 4.2), text(size: 11pt, font: "Arial")[0.6], anchor: "east")
  content((-0.12, 5.55), text(size: 11pt, font: "Arial")[0.8], anchor: "east")

  content((0.12, -0.35), text(size: 11pt, font: "Arial")[0], anchor: "north")
  content((4.15, -0.40), text(size: 11pt, font: "Arial")[1000], anchor: "north")
  content((7.95, -0.40), text(size: 11pt, font: "Arial")[2000], anchor: "north")

  content((-0.80, 4.95), text(size: 13pt)[$A thin ("mm"^(1\/2))$], anchor: "east")
  content((9.10, -0.45), text(size: 13pt)[$R_"eh", thin R_"p0.2" thin ("MPa")$], anchor: "west")
})
