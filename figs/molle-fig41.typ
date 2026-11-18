// Figura estratta da molle.typ (riga 1746) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

line((2.36, 0.72), (2.28, 0.50), (2.36, 0.28), (3.64, 0.28), (3.72, 0.50), (3.64, 0.72), close: true, fill: rgb("#165996"), stroke: none)
circle((3.0, 0.28), radius: (0.64, 0.17), fill: rgb("#165996"), stroke: none)
line((2.36, 0.72), (2.28, 0.50), (3.72, 0.50), (3.64, 0.72), close: true, fill: rgb("#1d6fb8"), stroke: none)
circle((3.0, 0.50), radius: (0.72, 0.20), fill: rgb("#1d6fb8"), stroke: none)
circle((3.0, 0.72), radius: (0.64, 0.17), fill: rgb("#2880ca"), stroke: none)
circle((3.0, 0.72), radius: (0.40, 0.11), fill: white, stroke: none)
circle((3.0, 0.72), radius: (0.64, 0.17), stroke: 0.6pt)
circle((3.0, 0.72), radius: (0.40, 0.11), stroke: 0.6pt)
arc((3.0, 0.50), start: 180deg, stop: 360deg, radius: (0.72, 0.20), anchor: "origin", stroke: 0.6pt)
arc((3.0, 0.28), start: 180deg, stop: 360deg, radius: (0.64, 0.17), anchor: "origin", stroke: 0.6pt)
line((2.36, 0.72), (2.28, 0.50), (2.36, 0.28), stroke: 0.6pt)
line((3.64, 0.72), (3.72, 0.50), (3.64, 0.28), stroke: 0.6pt)

rect((2.24, 1.35), (3.76, 1.80), fill: rgb("#a6a6a6"), stroke: none)
circle((3.0, 1.35), radius: (0.76, 0.22), fill: rgb("#a6a6a6"), stroke: none)
circle((3.0, 1.80), radius: (0.76, 0.22), fill: rgb("#c0c0c0"), stroke: none)
circle((3.0, 1.80), radius: (0.60, 0.17), fill: white, stroke: none)
circle((3.0, 1.80), radius: (0.76, 0.22), stroke: 0.6pt)
circle((3.0, 1.80), radius: (0.60, 0.17), stroke: 0.6pt)
arc((3.0, 1.58), start: 40deg, stop: 140deg, radius: (0.60, 0.17), anchor: "origin", stroke: 0.6pt)
arc((3.0, 1.35), start: 180deg, stop: 360deg, radius: (0.76, 0.22), anchor: "origin", stroke: 0.6pt)
line((2.24, 1.80), (2.24, 1.35), stroke: 0.6pt)
line((3.76, 1.80), (3.76, 1.35), stroke: 0.6pt)

line((2.28, 2.75), (2.36, 2.53), (3.64, 2.53), (3.72, 2.75), close: true, fill: rgb("#1d6fb8"), stroke: none)
circle((3.0, 2.53), radius: (0.64, 0.17), fill: rgb("#1d6fb8"), stroke: none)
circle((3.0, 2.75), radius: (0.72, 0.20), fill: rgb("#2880ca"), stroke: none)
circle((3.0, 2.75), radius: (0.40, 0.11), fill: white, stroke: none)
circle((3.0, 2.75), radius: (0.72, 0.20), stroke: 0.6pt)
circle((3.0, 2.75), radius: (0.40, 0.11), stroke: 0.6pt)
arc((3.0, 2.53), start: 180deg, stop: 360deg, radius: (0.64, 0.17), anchor: "origin", stroke: 0.6pt)
line((2.28, 2.75), (2.36, 2.53), stroke: 0.6pt)
line((3.72, 2.75), (3.64, 2.53), stroke: 0.6pt)

line((1.95, 2.65), (2.30, 2.65), stroke: 0.6pt)
line((1.95, 1.55), (2.24, 1.55), stroke: 0.6pt)
line((1.95, 0.50), (2.28, 0.50), stroke: 0.6pt)
content((1.90, 2.65), [#text(size: 7pt)[HSS inner ring (half)]], anchor: "east")
content((1.90, 1.55), [#text(size: 7pt)[SMA outer ring]], anchor: "east")
content((1.90, 0.50), [#text(size: 7pt)[HSS inner ring]], anchor: "east")

line((4.82, 2.65), (5.18, 2.65), (5.18, 2.30), (4.94, 2.30), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.78, 2.65), (6.14, 2.65), (6.02, 2.30), (5.78, 2.30), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.18, 2.65), (5.78, 2.65), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.18, 2.30), (5.78, 2.30), stroke: (dash: "dashed", thickness: 0.6pt))

line((4.76, 2.45), (4.86, 2.45), (4.98, 2.075), (4.86, 1.70), (4.76, 1.70), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)
line((6.10, 2.45), (6.20, 2.45), (6.20, 1.70), (6.10, 1.70), (5.98, 2.075), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)

line((4.94, 1.80), (5.18, 1.80), (5.18, 1.10), (4.94, 1.10), (4.82, 1.45), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.78, 1.80), (6.02, 1.80), (6.14, 1.45), (6.02, 1.10), (5.78, 1.10), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.18, 1.80), (5.78, 1.80), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.18, 1.10), (5.78, 1.10), stroke: (dash: "dashed", thickness: 0.6pt))

line((4.76, 1.20), (4.86, 1.20), (4.98, 0.825), (4.86, 0.45), (4.76, 0.45), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)
line((6.10, 1.20), (6.20, 1.20), (6.20, 0.45), (6.10, 0.45), (5.98, 0.825), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)

line((4.94, 0.60), (5.18, 0.60), (5.18, 0.25), (4.82, 0.25), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.78, 0.60), (6.02, 0.60), (6.14, 0.25), (5.78, 0.25), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((5.18, 0.60), (5.78, 0.60), stroke: (dash: "dashed", thickness: 0.6pt))
line((5.18, 0.25), (5.78, 0.25), stroke: (dash: "dashed", thickness: 0.6pt))

content((5.48, 0.05), [#text(size: 7.5pt)[#underline[unloaded]]], anchor: "north")

line((7.30, 2.10), (7.62, 2.10), (7.62, 1.75), (7.42, 1.75), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((8.22, 2.10), (8.54, 2.10), (8.42, 1.75), (8.22, 1.75), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((7.42, 1.75), (7.62, 1.75), (7.62, 1.05), (7.42, 1.05), (7.30, 1.40), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((8.22, 1.75), (8.42, 1.75), (8.54, 1.40), (8.42, 1.05), (8.22, 1.05), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((7.42, 1.05), (7.62, 1.05), (7.62, 0.70), (7.30, 0.70), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)
line((8.22, 1.05), (8.42, 1.05), (8.54, 0.70), (8.22, 0.70), close: true, fill: rgb("#1e6cb3"), stroke: 0.6pt)

line((7.20, 2.10), (7.30, 2.10), (7.42, 1.75), (7.30, 1.40), (7.20, 1.40), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)
line((8.54, 2.10), (8.64, 2.10), (8.64, 1.40), (8.54, 1.40), (8.42, 1.75), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)
line((7.20, 1.40), (7.30, 1.40), (7.42, 1.05), (7.30, 0.70), (7.20, 0.70), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)
line((8.54, 1.40), (8.64, 1.40), (8.64, 0.70), (8.54, 0.70), (8.42, 1.05), close: true, fill: rgb("#8c8c8c"), stroke: 0.6pt)

line((7.62, 2.10), (8.22, 2.10), stroke: (dash: "dashed", thickness: 0.6pt))
line((7.62, 1.75), (8.22, 1.75), stroke: (dash: "dashed", thickness: 0.6pt))
line((7.62, 1.05), (8.22, 1.05), stroke: (dash: "dashed", thickness: 0.6pt))
line((7.62, 0.70), (8.22, 0.70), stroke: (dash: "dashed", thickness: 0.6pt))

line((7.92, 2.55), (7.92, 2.18), mark: (end: "straight"), stroke: 0.8pt)
content((7.92, 2.60), [#text(size: 7.5pt)[Load]], anchor: "south")
content((7.92, 0.05), [#text(size: 7.5pt)[#underline[loaded]]], anchor: "north")
})
