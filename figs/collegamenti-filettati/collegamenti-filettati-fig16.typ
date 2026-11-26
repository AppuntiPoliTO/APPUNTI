// Figura estratta da collegamenti filettati.typ (riga 853) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((0, 0), (6.2, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.8), mark: (end: ">"), stroke: 0.8pt)

  line((0, 2.4), (3.35, 2.4), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0, 3.12), (4.0, 3.12), stroke: (dash: "dashed", thickness: 0.65pt))

  line((2.0, 2.95), (2.0, -0.75), stroke: 0.55pt)
  line((2.6, 1.8), (2.6, -0.75), stroke: 0.55pt)

  line((2.0, -0.55), (2.6, -0.55), mark: (start: ">", end: ">"), stroke: 0.7pt)
  line((3.1, 2.4), (3.1, 3.12), mark: (start: ">", end: ">"), stroke: 0.7pt)

  line((0, 0), (2.9, 3.48), stroke: 1.3pt)
  line((1.1, 3.3), (4.4, 0), stroke: 1.3pt)

  arc((2.6, 3.12), start: 230.19deg, stop: 270deg, radius: 0.45, anchor: "origin", stroke: 0.65pt)

  line((2.6, 1.8), (2.6, 3.12), stroke: 2pt)
  rect((2.51, 3.03), (2.69, 3.21), fill: red, stroke: none)
  line((2.5, 1.72), (2.7, 1.72), (2.6, 1.94), close: true, fill: blue, stroke: none)

  content((-0.25, 5.25), text(size: 10pt)[$|F_p|$], anchor: "east")
  content((-0.25, 4.55), text(size: 10pt)[$|F_v|$], anchor: "east")
  content((5.95, -0.35), text(size: 10pt)[$u$], anchor: "north")
  content((2.3, -0.72), text(size: 9pt)[$Delta u$], anchor: "north")
  content((3.22, 2.76), text(size: 9pt)[$Delta C_v$], anchor: "west")
  content((2.45, 3.45), text(size: 9pt)[$delta_v$], anchor: "south")
})
