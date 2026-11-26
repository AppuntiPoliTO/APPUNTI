// Figura estratta da collegamenti filettati.typ (riga 1200) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *
line((3.0, 4.2), (3.0, 4.5), (4.6, 4.5), (4.6, 4.2), stroke: 0.75pt)
line((3.0, 0.6), (3.0, 0.3), (4.6, 0.3), (4.6, 0.6), stroke: 0.75pt)
line((0.5, 3.0), (3.0, 3.0), stroke: 0.75pt)
line((0.5, 1.8), (3.0, 1.8), stroke: 0.75pt)
line((1.0, 3.0), (1.0, 4.0), mark: (end: ">"), stroke: 1.4pt)
line((1.0, 1.8), (1.0, 0.8), mark: (end: ">"), stroke: 1.4pt)
line((3.0, 4.2), (3.25, 4.1), (2.75, 3.9), (3.25, 3.7), (2.75, 3.5), (3.25, 3.3), (2.75, 3.1), (3.0, 3.0), stroke: (thickness: 1.1pt, join: "round"))
line((3.0, 3.0), (3.25, 2.9), (2.75, 2.7), (3.25, 2.5), (2.75, 2.3), (3.25, 2.1), (2.75, 1.9), (3.0, 1.8), stroke: (thickness: 1.1pt, join: "round"))
line((3.0, 1.8), (3.25, 1.7), (2.75, 1.5), (3.25, 1.3), (2.75, 1.1), (3.25, 0.9), (2.75, 0.7), (3.0, 0.6), stroke: (thickness: 1.1pt, join: "round"))
line((4.6, 4.2), (4.85, 4.05), (4.35, 3.75), (4.85, 3.45), (4.35, 3.15), (4.85, 2.85), (4.35, 2.55), (4.85, 2.25), (4.35, 1.95), (4.85, 1.65), (4.35, 1.35), (4.85, 1.05), (4.35, 0.75), (4.6, 0.6), stroke: (thickness: 1.1pt, join: "round"))
circle((3.0, 4.2), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
circle((3.0, 3.0), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
circle((3.0, 1.8), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
circle((3.0, 0.6), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
circle((4.6, 4.2), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
circle((4.6, 0.6), radius: 0.06, fill: rgb("#00b894"), stroke: 0.6pt)
content((0.8, 3.55), text(size: 9pt)[$C$], anchor: "east")
content((0.8, 1.25), text(size: 9pt)[$C$], anchor: "east")
content((2.55, 3.6), text(size: 9pt)[$delta_p^a$], anchor: "east")
content((2.55, 2.4), text(size: 9pt)[$delta_p^b$], anchor: "east")
content((2.55, 1.2), text(size: 9pt)[$delta_p^c$], anchor: "east")
content((5.05, 2.4), text(size: 9pt)[$delta_v$], anchor: "west")
})
