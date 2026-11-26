// Figura estratta da collegamenti filettati.typ (riga 1273) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *
line((0, 0), (0, 3.85), mark: (end: ">"), stroke: 0.75pt)
line((0, 0), (8.2, 0), mark: (end: ">"), stroke: 0.75pt)
line((0, 2.15), (5.1, 2.15), stroke: (dash: "dash-dotted", thickness: 0.6pt))
line((0, 0), (0.68, 3.57), stroke: 1.1pt)
line((0.12, 2.325), (6.5, 0), stroke: 1.1pt)
line((0.6, 2.15), (0.6, 3.15), stroke: 1.1pt)
rect((0.50, 3.05), (0.70, 3.25), fill: red, stroke: none)
line((0.6, 2.29), (0.49, 2.06), (0.71, 2.06), close: true, fill: blue, stroke: none)
content((-0.18, 3.45), text(size: 8.5pt)[$|F_p|$], anchor: "east")
content((-0.18, 2.95), text(size: 8.5pt)[$|F_v|$], anchor: "east")
content((-0.18, 2.15), text(size: 8.5pt)[$F_(v,"lim")$], anchor: "east")
content((0.88, 2.68), text(size: 8.5pt)[$Delta C_v approx C$], anchor: "west")
content((6.1, -0.22), text(size: 9pt)[$i$], anchor: "north")
content((4.4, 3.65), text(size: 10pt)[*_Elemento elastico tra i pezzi_*], anchor: "center")
})
