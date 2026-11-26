// Figura estratta da fatica.typ (riga 3539) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.75cm, {
  import draw: *
  // BBox: x in [0.2, 9.95] (dx=9.75), y in [0.0, 5.8], length=0.75cm -> larghezza = 7.31 cm <= 8.2 cm

  // Pannello sinistro: meccanismo di contenimento (3 stadi)
  // Stadio 1: carico locale F -> snervamento
  rect((0.45, 4.15), (3.05, 4.95), fill: black.transparentize(88%), stroke: 0.9pt)
  line((1.10, 4.95), (1.30, 4.65), (2.20, 4.65), (2.40, 4.95), close: true, fill: black.transparentize(64%), stroke: 0.8pt)
  line((1.75, 5.65), (1.75, 5.02), stroke: 1.1pt, mark: (end: ">", scale: 0.75))
  content((1.95, 5.38), anchor: "west", [#text(size: 7.5pt)[$F$]])
  content((1.75, 3.92), anchor: "north", [#text(size: 6.8pt)[1. Snervamento compressivo]])

  // Stadio 2: espansione laterale
  rect((1.10, 2.35), (2.40, 2.85), stroke: (dash: "dashed", thickness: 0.6pt))
  rect((0.80, 2.35), (2.70, 2.85), stroke: (paint: blue, thickness: 0.9pt), fill: blue.transparentize(88%))
  line((0.80, 2.60), (0.30, 2.60), stroke: (paint: blue, thickness: 0.8pt), mark: (end: ">", scale: 0.65))
  line((2.70, 2.60), (3.20, 2.60), stroke: (paint: blue, thickness: 0.8pt), mark: (end: ">", scale: 0.65))
  content((1.75, 2.12), anchor: "north", [#text(size: 6.8pt)[2. Espansione laterale]])

  // Stadio 3: contenimento del cuore elastico
  rect((0.40, 0.45), (0.90, 1.05), fill: black.transparentize(84%), stroke: 0.8pt)
  rect((2.60, 0.45), (3.10, 1.05), fill: black.transparentize(84%), stroke: 0.8pt)
  rect((0.90, 0.50), (2.60, 1.00), fill: blue.transparentize(80%), stroke: (paint: blue, thickness: 0.9pt))
  line((0.42, 0.75), (0.86, 0.75), stroke: (paint: blue, thickness: 0.85pt), mark: (end: ">", scale: 0.55))
  line((3.08, 0.75), (2.64, 0.75), stroke: (paint: blue, thickness: 0.85pt), mark: (end: ">", scale: 0.55))
  content((1.75, 0.25), anchor: "north", [#text(size: 6.8pt)[3. Cuore elastico comprime]])

  // Pannello destro: diagramma di Haigh
  line((4.35, 1.85), (9.90, 1.85), stroke: 0.8pt, mark: (end: ">", scale: 0.75))
  content((9.90, 2.04), anchor: "south", [#text(size: 7.5pt)[$sigma_m$]])
  line((6.85, 1.85), (6.85, 4.55), stroke: 0.8pt, mark: (end: ">", scale: 0.75))
  content((6.68, 4.50), anchor: "east", [#text(size: 7.5pt)[$sigma_a$]])

  // Tacche limiti statici
  line((4.90, 1.77), (4.90, 1.93), stroke: 0.7pt)
  content((4.90, 1.62), anchor: "north", [#text(size: 6.8pt)[$-R_"p0.2"$]])
  line((8.80, 1.77), (8.80, 1.93), stroke: 0.7pt)
  content((8.72, 1.62), anchor: "north", [#text(size: 6.8pt)[$R_"p0.2"$]])
  line((9.60, 1.77), (9.60, 1.93), stroke: 0.7pt)
  content((9.62, 1.62), anchor: "north", [#text(size: 6.8pt)[$R_m$]])

  // Contorno di Haigh fedele: snervamento sinistro -> picco compressivo -> Goodman -> snervamento destro
  line((4.90, 1.85), (6.08, 3.03), stroke: 1.1pt)
  line((6.08, 3.03), (6.85, 2.77), stroke: 1.1pt)
  line((6.85, 2.77), (8.40, 2.25), stroke: 1.1pt)
  line((8.40, 2.25), (9.60, 1.85), stroke: (dash: "dashed", thickness: 0.7pt))
  line((8.40, 2.25), (8.80, 1.85), stroke: 1.1pt)

  circle((6.85, 2.77), radius: 0.05, fill: black)
  content((6.96, 2.86), anchor: "south-west", [#text(size: 7.2pt)[$sigma_(D-1)^C$]])
  line((8.35, 3.45), (7.68, 2.52), stroke: 0.55pt, mark: (end: ">", scale: 0.6))
  content((8.35, 3.50), anchor: "south", [#text(size: 6.8pt)[Retta di Goodman]])

  // Linee di proiezione e punti P', P, P''
  for xx in (5.90, 6.85, 7.80) {
    line((xx, 1.85), (xx, 1.00), stroke: (dash: "dotted", thickness: 0.5pt, paint: black.transparentize(45%)))
  }
  circle((6.85, 1.85), radius: 0.07, fill: black)
  content((6.96, 1.98), anchor: "south-west", [#text(size: 7pt)[$P$]])
  circle((5.90, 1.85), radius: 0.07, fill: blue, stroke: blue)
  content((5.90, 2.02), anchor: "south", [#text(fill: blue, size: 7pt)[$P'$]])
  circle((7.80, 1.85), radius: 0.07, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  content((7.80, 2.02), anchor: "south", [#text(fill: red.transparentize(10%), size: 7pt)[$P''$]])

  line((6.80, 1.12), (5.94, 1.12), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.6))
  content((6.60, 0.86), anchor: "north-east", [#text(fill: blue, size: 6.8pt)[$sigma_"res" (-)$]])
  line((6.90, 1.12), (7.76, 1.12), stroke: (paint: red.transparentize(10%), thickness: 0.9pt), mark: (end: ">", scale: 0.6))
  content((7.10, 0.86), anchor: "north-west", [#text(fill: red.transparentize(10%), size: 6.8pt)[$sigma_"res" (+)$]])
})
