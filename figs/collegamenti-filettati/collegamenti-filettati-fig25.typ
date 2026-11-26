// Figura estratta da collegamenti filettati.typ (riga 662) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
 import draw: *
 line((0, 0), (0, 5.1), mark: (end: ">"), stroke: 0.8pt)
 line((0, 0), (7.4, 0), mark: (end: ">"), stroke: 0.8pt)

 line((0, 0), (2.95, 3.54), stroke: 1.1pt)
 line((0.55, 2.56), (3.75, 0), stroke: 1.1pt)
 line((1.15, 3.28), (5.25, 0), stroke: 1.1pt)
 line((2.5, 3.4), (6.75, 0), stroke: 1.1pt)

 line((0, 3.24), (2.7, 3.24), stroke: (dash: "dashed", thickness: 0.7pt))
 line((0, 2.52), (2.1, 2.52), stroke: (dash: "dashed", thickness: 0.7pt))
 line((0, 1.8), (3.3, 1.8), stroke: (dash: "dashed", thickness: 0.7pt))

 line((0, 0), (0, -1.65), stroke: 0.6pt)
 line((3.75, 0), (3.75, -0.95), stroke: 0.6pt)
 line((5.25, 0), (5.25, -1.65), stroke: 0.6pt)
 line((3.75, -0.75), (5.25, -0.75), mark: (start: ">", end: ">"), stroke: 0.7pt)
 line((0, -1.45), (5.25, -1.45), mark: (start: ">", end: ">"), stroke: 0.7pt)

 content((-0.15, 4.7), text(size: 8.5pt)[$|F_p|, |F_v|$], anchor: "east")
 content((-0.15, 3.85), text(size: 8pt)[$F_(v,"lim") = |F_p| = |F_v|$], anchor: "east")
 content((-0.15, 2.55), text(size: 8pt)[$F_(v,"min") = F_(v,"lim") / I$], anchor: "east")
 content((-0.15, 1.55), text(size: 8pt)[$F_(v,"lim") / I - Delta F_v$], anchor: "east")
 content((0.1, 2.16), text(size: 8pt)[$Delta F_v$], anchor: "west")

 content((6.95, -0.25), text(size: 8.5pt)[$u$], anchor: "north")
 content((4.5, -0.6), text(size: 8.5pt)[$Delta i$], anchor: "south")
 content((2.625, -1.3), text(size: 8.5pt)[$i$], anchor: "south")

 content((3.6, 4.65), text(size: 8pt)[$(Delta F_v) / (Delta i) = F_v / i = F_v / (F_v (delta_v + delta_p))$], anchor: "west")
 content((3.6, 3.65), text(size: 8pt)[$Delta F_v = (Delta i) / ((delta_v + delta_p))$], anchor: "west")
})
