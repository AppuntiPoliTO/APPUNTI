// Figura estratta da collegamenti saldati.typ (riga 647) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

rect((0.2, 0.4), (1.4, 0.65), stroke: 1pt)
content((0.8, 0.525), text(size: 6pt)[PEZZO])
arc((0.85, 0.65), start: 0deg, stop: 180deg, radius: (0.12, 0.08), anchor: "origin", stroke: 0.7pt)

rect((1.25, 1.35), (2.05, 1.65), stroke: 1pt)
rect((1.45, 1.25), (1.65, 1.35), stroke: 0.8pt)
content((1.65, 1.82), text(size: 6.5pt)[TORCIA])
bezier((1.25, 1.62), (0.90, 1.22), (1.02, 1.62), (0.95, 1.42), stroke: 1pt)
bezier((1.25, 1.38), (1.04, 1.16), (1.10, 1.38), (1.07, 1.28), stroke: 1pt)
line((0.86, 1.23), (1.08, 1.15), (0.98, 0.86), (0.76, 0.94), close: true, stroke: 1pt)
line((0.87, 0.90), (0.83, 0.78), stroke: 0.8pt)

rect((2.8, 0.3), (4.0, 1.0), stroke: 1pt)
content((3.4, 0.65), text(size: 5.5pt)[GENERATORE])
line((2.8, 0.45), (1.4, 0.45), stroke: 0.8pt)
content((2.64, 0.57), text(size: 7pt)[$-$])
line((2.8, 0.85), (2.55, 0.85), (2.55, 1.42), (2.05, 1.42), stroke: 0.8pt)
content((2.64, 0.97), text(size: 7pt)[$+$])

rect((1.85, 2.35), (2.65, 2.80), stroke: 1pt)
content((2.25, 2.98), text(size: 6pt)[ALIMENTATORE FILO])
circle((3.15, 2.575), radius: 0.24, stroke: 1pt)
circle((3.15, 2.575), radius: 0.025, fill: black, stroke: none)
arc((3.15, 2.575), start: 200deg, stop: 30deg, radius: 0.13, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
circle((3.65, 2.575), radius: 0.24, stroke: 1pt)
circle((3.65, 2.575), radius: 0.025, fill: black, stroke: none)
arc((3.65, 2.575), start: 160deg, stop: 330deg, radius: 0.13, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
line((2.65, 2.575), (3.65, 2.575), stroke: (dash: "dashed", thickness: 0.6pt))

circle((3.95, 3.85), radius: 0.42, stroke: 1pt)
circle((3.95, 3.85), radius: 0.025, fill: black, stroke: none)
content((4.46, 3.92), text(size: 6.5pt)[BOBINA FILO], anchor: "west")
bezier((3.75, 4.22), (3.40, 3.60), (3.45, 4.10), (3.40, 3.85), stroke: 0.75pt)
line((3.40, 3.60), (3.40, 1.76), stroke: 0.75pt)
bezier((3.40, 1.76), (3.20, 1.56), (3.40, 1.62), (3.32, 1.56), stroke: 0.75pt)
line((3.20, 1.56), (2.05, 1.56), stroke: 0.75pt)

line((4.77, 0.30), (5.13, 0.30), (5.10, 0.38), (4.80, 0.38), close: true, stroke: 1pt)
line((4.80, 0.38), (4.80, 1.85), stroke: 1pt)
line((5.10, 0.38), (5.10, 1.85), stroke: 1pt)
arc((4.95, 1.85), start: 0deg, stop: 180deg, radius: (0.15, 0.25), anchor: "origin", stroke: 1pt)
line((4.92, 2.10), (4.92, 2.28), stroke: 0.8pt)
line((4.98, 2.10), (4.98, 2.28), stroke: 0.8pt)
line((4.87, 2.28), (5.03, 2.28), stroke: 1pt)
content((4.95, 1.32), text(size: 6pt)[G])
content((4.95, 1.12), text(size: 6pt)[A])
content((4.95, 0.92), text(size: 6pt)[S])
line((4.92, 2.20), (4.40, 2.20), (4.40, 1.49), (2.05, 1.49), stroke: 0.8pt)

line((6.05, 0.95), (7.85, 0.45), (8.305, 0.84), (8.375, 0.78), (8.445, 0.96), (8.90, 1.35), (7.10, 1.85), close: true, stroke: 0.9pt)
line((6.05, 0.95), (6.05, 0.73), (7.85, 0.23), (8.90, 1.08), (8.90, 1.35), stroke: 0.9pt)
line((7.85, 0.45), (7.85, 0.23), stroke: 0.9pt)
line((8.305, 0.84), (7.475, 1.15), stroke: 0.7pt)
line((8.445, 0.96), (7.475, 1.15), stroke: 0.7pt)
line((8.375, 0.78), (7.475, 1.15), stroke: 0.6pt)
line((6.575, 1.40), (7.475, 1.15), stroke: 0.7pt)
arc((6.72, 1.36), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
arc((6.87, 1.32), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
arc((7.02, 1.28), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
arc((7.17, 1.23), start: 110deg, stop: 250deg, radius: (0.06, 0.11), anchor: "origin", stroke: 0.6pt)
circle((7.475, 1.15), radius: (0.18, 0.08), fill: black.transparentize(85%), stroke: 0.7pt)
line((8.05, 1.70), (8.50, 1.575), mark: (end: ">", scale: 0.6, fill: black), stroke: 0.7pt)

line((7.135, 3.25), (7.135, 2.05), (7.245, 1.75), (7.305, 1.75), (7.195, 2.05), (7.195, 3.25), close: true, fill: black.transparentize(75%), stroke: 0.8pt)
line((7.815, 3.25), (7.815, 2.05), (7.705, 1.75), (7.645, 1.75), (7.755, 2.05), (7.755, 3.25), close: true, fill: black.transparentize(75%), stroke: 0.8pt)
circle((7.475, 3.25), radius: (0.34, 0.09), stroke: 0.9pt)
arc((7.475, 1.75), start: 180deg, stop: 360deg, radius: (0.23, 0.06), anchor: "origin", stroke: 0.9pt)
arc((7.475, 1.75), start: 180deg, stop: 360deg, radius: (0.17, 0.045), anchor: "origin", stroke: 0.7pt)

rect((7.325, 1.95), (7.44, 3.05), fill: black.transparentize(85%), stroke: 0.75pt)
rect((7.51, 1.95), (7.625, 3.05), fill: black.transparentize(85%), stroke: 0.75pt)

line((7.44, 3.95), (7.44, 1.65), (7.475, 1.50), (7.51, 1.65), (7.51, 3.95), close: true, fill: white, stroke: 0.85pt)

circle((7.26, 3.68), radius: 0.17, stroke: 0.8pt)
line((7.22, 3.68), (7.30, 3.68), stroke: 0.5pt)
line((7.26, 3.64), (7.26, 3.72), stroke: 0.5pt)
arc((7.26, 3.68), start: 200deg, stop: 100deg, radius: 0.23, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)
circle((7.69, 3.68), radius: 0.17, stroke: 0.8pt)
line((7.65, 3.68), (7.73, 3.68), stroke: 0.5pt)
line((7.69, 3.64), (7.69, 3.72), stroke: 0.5pt)
arc((7.69, 3.68), start: -20deg, stop: 80deg, radius: 0.23, anchor: "origin", mark: (end: ">", scale: 0.35, fill: black), stroke: 0.6pt)

bezier((7.35, 1.73), (7.26, 1.25), (7.30, 1.52), (7.26, 1.40), stroke: 0.55pt)
bezier((7.41, 1.72), (7.36, 1.22), (7.39, 1.50), (7.36, 1.35), stroke: 0.55pt)
bezier((7.54, 1.72), (7.59, 1.22), (7.56, 1.50), (7.59, 1.35), stroke: 0.55pt)
bezier((7.60, 1.73), (7.69, 1.25), (7.65, 1.52), (7.69, 1.40), stroke: 0.55pt)
line((7.475, 1.48), (7.475, 1.18), stroke: 0.6pt)
line((7.45, 1.44), (7.41, 1.22), stroke: 0.5pt)
line((7.50, 1.44), (7.54, 1.22), stroke: 0.5pt)

line((7.625, 2.75), (9.60, 2.75), (9.60, 2.07), stroke: 0.75pt)
line((8.65, 1.15), (9.60, 1.15), (9.60, 1.83), stroke: 0.75pt)
circle((9.60, 1.95), radius: 0.12, stroke: 0.75pt)

line((9.15, 0.45), (8.55, 0.70), stroke: 0.55pt)
line((9.15, 0.45), (8.70, 1.05), stroke: 0.55pt)
content((9.21, 0.45), text(size: 7pt)[1], anchor: "west")

line((6.85, 0.25), (7.45, 1.13), stroke: 0.55pt)
content((6.79, 0.25), text(size: 7pt)[2], anchor: "east")

line((6.00, 1.75), (6.85, 1.32), stroke: 0.55pt)
content((5.94, 1.75), text(size: 7pt)[3], anchor: "east")

line((6.20, 2.30), (7.31, 1.55), stroke: 0.55pt)
content((6.14, 2.30), text(size: 7pt)[4], anchor: "east")

line((6.30, 2.70), (7.14, 2.45), stroke: 0.55pt)
content((6.24, 2.70), text(size: 7pt)[5], anchor: "east")

line((6.45, 3.25), (7.33, 2.80), stroke: 0.55pt)
content((6.39, 3.25), text(size: 7pt)[6], anchor: "east")

line((7.05, 4.02), (7.44, 3.92), stroke: 0.55pt)
content((6.99, 4.02), text(size: 7pt)[7], anchor: "east")

line((8.35, 3.78), (7.86, 3.70), stroke: 0.55pt)
line((8.35, 3.78), (7.36, 3.81), stroke: 0.55pt)
content((8.41, 3.78), text(size: 7pt)[8], anchor: "west")
})
