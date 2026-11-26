// Figura estratta da hertz.typ (riga 645) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.6cm, {
import draw: *
circle((0, -2.4), radius: 2.4, stroke: 1pt)
arc((0, -2.4), start: 0deg, stop: 180deg, radius: (2.4, 0.7), anchor: "origin", stroke: (dash: "dashed", thickness: 1pt))
arc((0, -2.4), start: 180deg, stop: 360deg, radius: (2.4, 0.7), anchor: "origin", stroke: 1pt)
circle((0, 1.2), radius: 1.2, stroke: 1pt)
arc((0, 1.2), start: 0deg, stop: 180deg, radius: (1.2, 0.35), anchor: "origin", stroke: (dash: "dashed", thickness: 1pt))
arc((0, 1.2), start: 180deg, stop: 360deg, radius: (1.2, 0.35), anchor: "origin", stroke: 1pt)
line((0, 0), (-2.5, -1.5), mark: (end: ">"), stroke: 1pt)
line((0, 0), (4, 0), mark: (end: ">"), stroke: 1pt)
line((0, 2.4), (0, 5.2), mark: (end: ">"), stroke: 1pt)
line((0, 3.8), (0, 2.4), mark: (end: ">"), stroke: red + 1pt)
line((0, -6.2), (0, -4.8), mark: (end: ">"), stroke: red + 1pt)
content((-2.8, -1.5), [x])
content((4.4, 0), [y])
content((0.4, 5.2), [z])
content((0.4, 3.1), text(fill: red)[F])
content((0.4, -5.5), text(fill: red)[F])
})
