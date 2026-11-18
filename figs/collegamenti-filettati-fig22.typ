// Figura estratta da collegamenti filettati.typ (riga 1058) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
 import draw: *

 // --- BOTTOM PANEL: BOLTED JOINT ---
 line((0.5, 4.4), (4.8, 4.4), (4.8, 3.6), (0.5, 3.6), (0.62, 3.8), (0.45, 4.0), (0.60, 4.2), close: true, fill: black.transparentize(84%), stroke: 0.75pt)
 line((0.2, 3.6), (4.8, 3.6), (4.8, 2.4), (0.2, 2.4), (0.35, 2.7), (0.15, 3.0), (0.32, 3.3), close: true, fill: black.transparentize(60%), stroke: 0.75pt)

 rect((2.35, 2.4), (3.25, 4.4), fill: white, stroke: none)
 line((2.35, 2.4), (2.35, 4.4), stroke: 0.7pt)
 line((3.25, 2.4), (3.25, 4.4), stroke: 0.7pt)

 rect((2.25, 4.4), (3.35, 4.52), fill: black.transparentize(40%), stroke: 0.7pt)
 rect((2.25, 2.28), (3.35, 2.4), fill: black.transparentize(40%), stroke: 0.7pt)

 rect((2.45, 1.25), (3.15, 4.4), fill: black.transparentize(88%), stroke: 0.85pt)
 line((2.45, 3.2), (3.15, 3.2), stroke: 0.65pt)
 line((2.45, 3.02), (3.15, 3.12), stroke: 0.65pt)
 line((2.45, 2.84), (3.15, 2.94), stroke: 0.65pt)
 line((2.45, 2.66), (3.15, 2.76), stroke: 0.65pt)
 line((2.45, 2.48), (3.15, 2.58), stroke: 0.65pt)
 line((2.45, 1.48), (3.15, 1.58), stroke: 0.65pt)
 line((2.45, 1.32), (3.15, 1.42), stroke: 0.65pt)

 rect((2.15, 4.52), (3.45, 5.10), fill: black.transparentize(85%), stroke: 0.9pt)
 line((2.45, 4.52), (2.45, 5.10), stroke: 0.65pt)
 line((3.15, 4.52), (3.15, 5.10), stroke: 0.65pt)

 rect((2.15, 1.65), (3.45, 2.28), fill: black.transparentize(85%), stroke: 0.9pt)
 line((2.45, 1.65), (2.45, 2.28), stroke: 0.65pt)
 line((3.15, 1.65), (3.15, 2.28), stroke: 0.65pt)

 line((2.8, 0.75), (2.8, 5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt))

 line((1.1, 4.4), (1.1, 5.35), mark: (end: ">"), stroke: 1.1pt)
 content((0.95, 4.92), text(size: 8pt)[$P$], anchor: "east")
 line((4.3, 4.4), (4.3, 5.35), mark: (end: ">"), stroke: 1.1pt)
 content((4.45, 4.92), text(size: 8pt)[$P$], anchor: "west")

 line((1.1, 2.4), (1.1, 1.45), mark: (end: ">"), stroke: 1.1pt)
 content((0.95, 1.88), text(size: 8pt)[$P$], anchor: "east")
 line((4.3, 2.4), (4.3, 1.45), mark: (end: ">"), stroke: 1.1pt)
 content((4.45, 1.88), text(size: 8pt)[$P$], anchor: "west")

 bezier((1.85, 5.20), (3.30, 5.28), (1.85, 5.58), (3.30, 5.58), stroke: (paint: blue.darken(25%), thickness: 4.5pt))
 bezier((1.85, 5.20), (3.30, 5.08), (1.85, 4.92), (2.70, 5.05), mark: (end: ">"), stroke: (paint: blue.darken(10%), thickness: 3.5pt))

 bezier((3.75, 1.15), (2.30, 1.07), (3.75, 0.77), (2.30, 0.77), stroke: (paint: blue.darken(25%), thickness: 4.5pt))
 bezier((3.75, 1.15), (2.30, 1.00), (3.75, 1.38), (2.90, 1.08), mark: (end: ">"), stroke: (paint: blue.darken(10%), thickness: 3.5pt))

 line((3.02, 2.00), (2.52, 1.90), mark: (end: ">"), stroke: (paint: yellow, thickness: 3.2pt))
 line((3.02, 2.00), (2.52, 1.90), mark: (end: ">"), stroke: (paint: red, thickness: 2.0pt))
 line((3.28, 2.22), (3.28, 1.50), mark: (end: ">"), stroke: (paint: orange, thickness: 2.4pt))

 line((3.35, 4.46), (5.2, 4.46), stroke: 0.6pt)

 // --- INSET BOX ---
 rect((5.2, 2.8), (8.3, 5.8), stroke: (paint: red, thickness: 1.5pt))

 rect((5.25, 4.05), (8.25, 4.62), fill: black.transparentize(60%), stroke: 0.7pt)
 rect((5.25, 2.85), (8.25, 4.05), fill: black.transparentize(84%), stroke: 0.7pt)

 rect((6.35, 3.00), (7.15, 4.62), fill: white, stroke: none)
 line((6.35, 4.05), (6.35, 4.62), stroke: 0.7pt)
 line((7.15, 4.05), (7.15, 4.62), stroke: 0.7pt)

 rect((6.05, 4.62), (7.45, 4.75), fill: black.transparentize(40%), stroke: 0.7pt)
 rect((6.15, 4.75), (7.35, 5.30), fill: black.transparentize(85%), stroke: 0.9pt)
 line((6.45, 4.75), (6.45, 5.30), stroke: 0.65pt)
 line((7.05, 4.75), (7.05, 5.30), stroke: 0.65pt)

 rect((6.42, 3.00), (7.08, 4.62), fill: black.transparentize(88%), stroke: 0.8pt)
 line((6.35, 3.95), (7.15, 3.95), stroke: 0.65pt)
 line((6.42, 3.83), (7.08, 3.83), stroke: 0.65pt)
 line((6.35, 3.71), (7.15, 3.71), stroke: 0.65pt)
 line((6.42, 3.59), (7.08, 3.59), stroke: 0.65pt)
 line((6.35, 3.47), (7.15, 3.47), stroke: 0.65pt)
 line((6.42, 3.35), (7.08, 3.35), stroke: 0.65pt)
 line((6.35, 3.23), (7.15, 3.23), stroke: 0.65pt)
 line((6.42, 3.11), (7.08, 3.11), stroke: 0.65pt)
 line((6.35, 3.00), (7.15, 3.00), stroke: 0.7pt)
 line((6.35, 3.00), (6.35, 4.05), stroke: 0.7pt)
 line((7.15, 3.00), (7.15, 4.05), stroke: 0.7pt)

 line((6.75, 2.90), (6.75, 5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt))

 line((5.65, 4.05), (6.35, 4.05), stroke: 0.5pt)
 line((5.65, 3.00), (6.35, 3.00), stroke: 0.5pt)
 line((5.75, 3.00), (5.75, 4.05), mark: (start: ">", end: ">"), stroke: 0.65pt)
 content((5.62, 3.52), text(size: 7.5pt)[$l_f$], anchor: "east")

 // --- TOP PANEL: INCLINED PLANE ANALOGY ---
 line((1.8, 6.9), (7.5, 6.9), stroke: (paint: blue.darken(15%), thickness: 0.9pt))
 line((1.8, 6.9), (7.316, 8.692), stroke: (paint: blue.darken(15%), thickness: 0.9pt))

 arc((1.8, 6.9), start: 0deg, stop: 18deg, radius: 1.8, anchor: "origin", stroke: (paint: blue.darken(15%), thickness: 0.65pt))
 content((3.82, 7.22), text(size: 8.5pt)[$alpha_m$], anchor: "west")

 line((4.225, 7.688), (5.271, 8.028), (5.132, 8.456), (4.086, 8.116), close: true, fill: red.transparentize(80%), stroke: none)

 line((3.967, 7.835), (2.635, 7.403), mark: (end: ">"), stroke: (paint: orange, thickness: 2.2pt))
 content((2.95, 8.18), text(size: 8.5pt)[Moto relativo], anchor: "south")

 line((4.748, 7.858), (3.821, 10.711), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
 content((4.05, 9.85), text(size: 8.5pt, fill: red)[$F_N$], anchor: "east")

 line((3.821, 10.711), (5.674, 11.313), mark: (end: ">"), stroke: (paint: orange, thickness: 1.2pt))
 content((4.65, 11.15), text(size: 8.5pt, fill: orange)[$F_("attrito")$], anchor: "south")

 line((4.748, 7.858), (5.674, 11.313), mark: (end: ">"), stroke: (paint: purple.darken(30%), thickness: 1.2pt))
 content((5.42, 9.55), text(size: 8.5pt, fill: purple.darken(30%))[$F_("RES")$], anchor: "west")

 line((4.748, 11.313), (4.748, 7.858), mark: (end: ">"), stroke: (paint: red.darken(45%), dash: "dashed", thickness: 1.0pt))
 content((4.86, 10.55), text(size: 8.5pt, fill: red.darken(45%))[$F_V$], anchor: "west")

 line((5.674, 11.313), (4.748, 11.313), mark: (end: ">"), stroke: (paint: green.darken(25%), dash: "dashed", thickness: 1.0pt))

 arc((4.748, 7.858), start: 90deg, stop: 108deg, radius: 1.65, anchor: "origin", stroke: 0.6pt)
 content((4.48, 9.68), text(size: 8pt)[$alpha_m$], anchor: "south")

 arc((4.748, 7.858), start: 75deg, stop: 108deg, radius: 2.25, anchor: "origin", stroke: 0.6pt)
 content((4.38, 10.28), text(size: 8.5pt)[$phi$], anchor: "south")
})
