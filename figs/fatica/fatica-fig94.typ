// Figura estratta da fatica.typ (riga 2676) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let varepsilon = $epsilon$
#let varepsilon = $epsilon$

#canvas(length: 1.02cm, {
  // BBox: x in [-0.3, 8.5] (dx=8.8), y in [-0.3, 5.0], length=0.92cm -> larghezza = 8.10 cm <= 8.2 cm
  import draw: *

  // --- (a) Materiale fragile (A < 5%) ---
  content((1.10, 4.88), text(size: 7.2pt, weight: "bold")[(a) Fragile], anchor: "north")
  line((0.35, 0.45), (1.95, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  line((0.35, 0.45), (0.35, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  content((2.02, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
  content((0.26, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

  line((0.35, 0.45), (0.98, 2.95), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  bezier((0.98, 2.95), (1.32, 3.55), (1.08, 3.25), (1.20, 3.42), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  circle((1.32, 3.55), radius: 0.055, fill: red.transparentize(10%), stroke: 0.5pt)
  line((0.35, 3.55), (1.32, 3.55), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
  content((0.27, 3.55), text(size: 7pt, fill: red.transparentize(10%))[$R_m$], anchor: "east")

  // --- (b) Duttile con snervamento evidente R_eH ---
  content((4.00, 4.88), text(size: 7.2pt, weight: "bold")[(b) Duttile ($R_"eH"$)], anchor: "north")
  line((2.95, 0.45), (5.10, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  line((2.95, 0.45), (2.95, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  content((5.17, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
  content((2.86, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

  line((2.95, 0.45), (3.25, 2.55), stroke: (paint: blue, thickness: 1.1pt))
  line((3.25, 2.55), (3.35, 2.32), (3.44, 2.40), (3.54, 2.35), (3.65, 2.38), stroke: (paint: blue, thickness: 1.0pt))
  bezier((3.65, 2.38), (4.42, 3.65), (3.88, 3.25), (4.15, 3.65), stroke: (paint: blue, thickness: 1.1pt))
  bezier((4.42, 3.65), (4.88, 3.00), (4.62, 3.65), (4.78, 3.35), stroke: (paint: blue, thickness: 1.1pt))
  circle((4.42, 3.65), radius: 0.055, fill: blue, stroke: 0.5pt)

  line((2.95, 2.55), (3.25, 2.55), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
  content((2.87, 2.55), text(size: 6.8pt, fill: blue)[$R_"eH"$], anchor: "east")
  line((2.95, 3.65), (4.42, 3.65), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
  content((2.87, 3.65), text(size: 7pt, fill: blue)[$R_m$], anchor: "east")

  // --- (c) Duttile con snervamento convenzionale R_p0.2 ---
  content((7.10, 4.88), text(size: 7.2pt, weight: "bold")[(c) Duttile ($R_"p0.2"$)], anchor: "north")
  line((6.05, 0.45), (8.20, 0.45), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  line((6.05, 0.45), (6.05, 4.15), stroke: 0.8pt, mark: (end: ">", scale: 0.45))
  content((8.27, 0.45), text(size: 7pt)[$varepsilon$], anchor: "west")
  content((5.96, 4.15), text(size: 7pt)[$sigma$], anchor: "east")

  line((6.05, 0.45), (6.32, 2.15), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
  bezier((6.32, 2.15), (7.48, 3.65), (6.48, 3.15), (7.05, 3.65), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
  bezier((7.48, 3.65), (7.95, 3.02), (7.68, 3.65), (7.85, 3.35), stroke: (paint: rgb("#1f77b4"), thickness: 1.1pt))
  circle((7.48, 3.65), radius: 0.055, fill: rgb("#1f77b4"), stroke: 0.5pt)

  // Retta di scarico parallela allo 0.2% (pendenza 1.70/0.27 = 6.30 -> da (6.35, 0.45) a (6.68, 2.53))
  line((6.35, 0.45), (6.68, 2.53), stroke: (dash: "dotted", thickness: 0.65pt, paint: black))
  circle((6.68, 2.53), radius: 0.05, fill: white, stroke: 0.65pt)
  content((6.42, 0.32), text(size: 6.4pt)[$0.2\%$], anchor: "north")

  line((6.05, 2.53), (6.68, 2.53), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
  content((5.97, 2.53), text(size: 6.6pt, fill: rgb("#1f77b4"))[$R_"p0.2"$], anchor: "east")
  line((6.05, 3.65), (7.48, 3.65), stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(100)))
  content((5.97, 3.65), text(size: 7pt, fill: rgb("#1f77b4"))[$R_m$], anchor: "east")
})
