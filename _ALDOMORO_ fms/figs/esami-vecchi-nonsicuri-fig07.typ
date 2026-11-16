// Figura estratta da esami-vecchi-nonsicuri.typ (riga 634) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: SEZIONE S_1^+ ---
  line((1.5, 4.8), (1.5, 6.0), stroke: 1.2pt)
  line((1.5, 4.2), (1.5, 4.78), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 4.8), (2.1, 4.8), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 6.0), (1.5, 6.55), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.5, 6.0), (2.05, 6.0), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((1.5, 6.0), start: 90deg, stop: 210deg, radius: 0.24, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.7, 4.8), (1.7, 5.25), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

  content((1.35, 4.8), text(size: 7pt, fill: red)[A], anchor: "east")
  content((1.6, 4.35), text(size: 7pt, fill: red)[$V_A$], anchor: "west")
  content((2.05, 4.72), text(size: 7pt, fill: red)[$H_A$], anchor: "north")
  content((1.6, 6.45), text(size: 7pt, fill: blue)[$N$], anchor: "west")
  content((2.0, 5.92), text(size: 7pt, fill: blue)[$T$], anchor: "north")
  content((1.2, 6.0), text(size: 7pt, fill: blue)[$M_f$], anchor: "east")
  content((1.8, 5.15), text(size: 7pt, fill: blue)[$x$], anchor: "west")
  content((3.2, 5.5), text(size: 7pt)[*Sezione $S_1^+$*], anchor: "west")

  // --- PANNELLO 2: SEZIONE S_2^- ---
  line((1.5, 3.3), (2.7, 3.3), stroke: 1.2pt)
  line((2.7, 3.3), (3.3, 3.3), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 3.3), (0.95, 3.3), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.5, 3.3), (1.5, 3.85), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((1.5, 3.3), start: 20deg, stop: 150deg, radius: 0.24, anchor: "origin", mark: (start: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((2.7, 3.1), (2.25, 3.1), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

  content((2.7, 3.42), text(size: 7pt, fill: red)[C], anchor: "south")
  content((3.2, 3.42), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.0, 3.22), text(size: 7pt, fill: blue)[$N$], anchor: "north")
  content((1.4, 3.8), text(size: 7pt, fill: blue)[$T$], anchor: "east")
  content((1.78, 3.55), text(size: 7pt, fill: blue)[$M_f$], anchor: "south-west")
  content((2.35, 3.02), text(size: 7pt, fill: blue)[$x$], anchor: "north")
  content((3.6, 3.3), text(size: 7pt)[*Sezione $S_2^-$*], anchor: "west")

  // --- PANNELLO 3: SEZIONE S_3^+ ---
  line((1.5, 0.6), (1.5, 2.3), stroke: 1.2pt)
  line((1.5, 1.45), (2.2, 1.45), stroke: 1.2pt)
  line((1.5, 0.05), (1.5, 0.58), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 0.6), (2.1, 0.6), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((2.2, 1.45), (2.75, 1.45), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 2.3), (1.5, 2.85), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.5, 2.3), (2.05, 2.3), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((1.5, 2.3), start: 90deg, stop: 210deg, radius: 0.24, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.7, 1.45), (1.7, 1.9), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

  content((1.35, 0.6), text(size: 7pt, fill: red)[A], anchor: "east")
  content((1.35, 1.45), text(size: 7pt, fill: red)[B], anchor: "east")
  content((2.2, 1.35), text(size: 7pt, fill: red)[C], anchor: "north")
  content((1.6, 0.2), text(size: 7pt, fill: red)[$V_A$], anchor: "west")
  content((2.05, 0.52), text(size: 7pt, fill: red)[$H_A$], anchor: "north")
  content((2.65, 1.55), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.6, 2.75), text(size: 7pt, fill: blue)[$N$], anchor: "west")
  content((2.0, 2.22), text(size: 7pt, fill: blue)[$T$], anchor: "north")
  content((1.2, 2.3), text(size: 7pt, fill: blue)[$M_f$], anchor: "east")
  content((1.8, 1.8), text(size: 7pt, fill: blue)[$x$], anchor: "west")
  content((3.2, 1.8), text(size: 7pt)[*Sezione $S_3^+$*], anchor: "west")
})
