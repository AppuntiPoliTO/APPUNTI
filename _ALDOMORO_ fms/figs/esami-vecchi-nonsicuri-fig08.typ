// Figura estratta da esami-vecchi-nonsicuri.typ (riga 746) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: SEZIONE S_4^+ ---
  line((1.0, 4.3), (1.0, 5.7), (2.8, 5.7), stroke: 1.2pt)
  line((1.0, 5.0), (1.6, 5.0), stroke: 1.2pt)
  // Carichi e reazioni
  line((1.0, 3.8), (1.0, 4.28), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.0, 4.3), (1.55, 4.3), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.6, 5.0), (2.1, 5.0), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.0, 6.0), (2.8, 6.0), stroke: (paint: red, thickness: 0.6pt))
  line((1.0, 6.0), (1.0, 5.72), mark: (end: ">"), stroke: (paint: red, thickness: 0.6pt))
  line((1.6, 6.0), (1.6, 5.72), mark: (end: ">"), stroke: (paint: red, thickness: 0.6pt))
  line((2.2, 6.0), (2.2, 5.72), mark: (end: ">"), stroke: (paint: red, thickness: 0.6pt))
  line((2.8, 6.0), (2.8, 5.72), mark: (end: ">"), stroke: (paint: red, thickness: 0.6pt))
  // Sollecitazioni interne in S_4^+
  line((2.8, 5.7), (3.35, 5.7), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((2.8, 5.7), (2.8, 5.15), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((2.8, 5.7), start: -30deg, stop: 110deg, radius: 0.24, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))

  content((0.88, 4.3), text(size: 7pt, fill: red)[A], anchor: "east")
  content((0.88, 5.0), text(size: 7pt, fill: red)[B], anchor: "east")
  content((0.88, 5.7), text(size: 7pt, fill: red)[D], anchor: "east")
  content((1.1, 3.95), text(size: 7pt, fill: red)[$V_A$], anchor: "west")
  content((1.5, 4.22), text(size: 7pt, fill: red)[$H_A$], anchor: "north")
  content((2.05, 5.08), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.9, 6.08), text(size: 7pt, fill: red)[$q$], anchor: "south")
  content((3.3, 5.62), text(size: 7pt, fill: blue)[$N$], anchor: "north")
  content((2.92, 5.25), text(size: 7pt, fill: blue)[$T$], anchor: "west")
  content((3.08, 5.95), text(size: 7pt, fill: blue)[$M_f$], anchor: "south-west")
  content((3.8, 5.4), text(size: 7pt)[*Sezione $S_4^+$*], anchor: "west")

  // --- PANNELLO 2: SEZIONE S_5^- ---
  line((1.2, 3.0), (2.6, 3.0), stroke: 1.2pt)
  arc((2.6, 3.0), start: -50deg, stop: 95deg, radius: 0.24, anchor: "origin", mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.2, 3.0), (0.65, 3.0), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.2, 3.0), (1.2, 3.55), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((1.2, 3.0), start: 20deg, stop: 150deg, radius: 0.24, anchor: "origin", mark: (start: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((2.6, 2.8), (2.15, 2.8), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

  content((2.6, 2.88), text(size: 7pt, fill: red)[G], anchor: "north")
  content((2.92, 3.1), text(size: 7pt, fill: red)[$M$], anchor: "west")
  content((0.7, 2.92), text(size: 7pt, fill: blue)[$N$], anchor: "north")
  content((1.1, 3.5), text(size: 7pt, fill: blue)[$T$], anchor: "east")
  content((1.48, 3.25), text(size: 7pt, fill: blue)[$M_f$], anchor: "south-west")
  content((2.25, 2.72), text(size: 7pt, fill: blue)[$x$], anchor: "north")
  content((3.6, 3.0), text(size: 7pt)[*Sezione $S_5^-$*], anchor: "west")

  // --- PANNELLO 3: SEZIONE S_6^- ---
  line((1.5, 0.6), (1.5, 1.9), stroke: 1.2pt)
  line((1.5, 0.05), (1.5, 0.58), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 0.6), (2.1, 0.6), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))
  line((1.5, 1.9), (1.5, 2.45), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.5, 1.9), (2.05, 1.9), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  arc((1.5, 1.9), start: 90deg, stop: 210deg, radius: 0.24, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  line((1.7, 0.6), (1.7, 1.05), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

  content((1.35, 0.6), text(size: 7pt, fill: red)[H], anchor: "east")
  content((1.6, 0.2), text(size: 7pt, fill: red)[$V_H$], anchor: "west")
  content((2.05, 0.52), text(size: 7pt, fill: red)[$H_H$], anchor: "north")
  content((1.6, 2.35), text(size: 7pt, fill: blue)[$N$], anchor: "west")
  content((2.0, 1.82), text(size: 7pt, fill: blue)[$T$], anchor: "north")
  content((1.2, 1.9), text(size: 7pt, fill: blue)[$M_f$], anchor: "east")
  content((1.8, 0.95), text(size: 7pt, fill: blue)[$x$], anchor: "west")
  content((3.6, 1.3), text(size: 7pt)[*Sezione $S_6^-$*], anchor: "west")
})
