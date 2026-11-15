// Figura estratta da esami-vecchi-nonsicuri.typ (riga 526) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Struttura
  line((0.8, 1.0), (0.8, 2.3), stroke: 1pt)
  line((0.8, 1.65), (1.2, 1.65), stroke: 1pt)
  line((0.8, 2.3), (6.0, 2.3), stroke: 1pt)
  line((4.7, 1.0), (4.7, 2.3), stroke: 1pt)
  circle((3.4, 2.3), radius: 0.08, fill: white, stroke: 1pt)

  // Carichi (in blu)
  line((0.8, 2.65), (4.7, 2.65), stroke: (paint: blue, thickness: 0.6pt))
  line((0.8, 2.65), (0.8, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((1.58, 2.65), (1.58, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((2.36, 2.65), (2.36, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((3.14, 2.65), (3.14, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((3.92, 2.65), (3.92, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((4.7, 2.65), (4.7, 2.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
  line((1.2, 1.65), (1.75, 1.65), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))
  arc((6.0, 2.3), start: -50deg, stop: 95deg, radius: 0.25, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))

  // Reazioni vincolari (in rosso)
  line((0.8, 0.3), (0.8, 0.98), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((0.8, 1.0), (1.5, 1.0), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((4.7, 0.3), (4.7, 0.98), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((4.7, 1.0), (5.4, 1.0), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))

  // Tracce delle sezioni di calcolo (in verde scuro)
  line((0.68, 1.32), (0.92, 1.32), stroke: (paint: green.darken(40%), thickness: 0.8pt))
  line((1.0, 1.53), (1.0, 1.77), stroke: (paint: green.darken(40%), thickness: 0.8pt))
  line((0.68, 1.98), (0.92, 1.98), stroke: (paint: green.darken(40%), thickness: 0.8pt))
  line((1.8, 2.18), (1.8, 2.42), stroke: (paint: green.darken(40%), thickness: 0.8pt))
  line((5.3, 2.18), (5.3, 2.42), stroke: (paint: green.darken(40%), thickness: 0.8pt))
  line((4.58, 1.65), (4.82, 1.65), stroke: (paint: green.darken(40%), thickness: 0.8pt))

  // Etichette
  content((0.9, 0.45), text(size: 7pt, fill: red)[$V_A$], anchor: "west")
  content((1.25, 1.08), text(size: 7pt, fill: red)[$H_A$], anchor: "south")
  content((4.8, 0.45), text(size: 7pt, fill: red)[$V_H$], anchor: "west")
  content((5.15, 1.08), text(size: 7pt, fill: red)[$H_H$], anchor: "south")
  content((0.65, 1.32), text(size: 7pt, fill: green.darken(40%))[$S_1^+$], anchor: "east")
  content((1.0, 1.48), text(size: 7pt, fill: green.darken(40%))[$S_2^-$], anchor: "north")
  content((0.65, 1.98), text(size: 7pt, fill: green.darken(40%))[$S_3^+$], anchor: "east")
  content((1.8, 2.12), text(size: 7pt, fill: green.darken(40%))[$S_4^+$], anchor: "north")
  content((5.3, 2.12), text(size: 7pt, fill: green.darken(40%))[$S_5^-$], anchor: "north")
  content((4.88, 1.65), text(size: 7pt, fill: green.darken(40%))[$S_6^-$], anchor: "west")
  content((0.68, 2.55), text(size: 7pt, fill: blue)[$q$], anchor: "east")
  content((1.65, 1.55), text(size: 7pt, fill: blue)[$F$], anchor: "north")
  content((6.3, 2.45), text(size: 7pt, fill: blue)[$M$], anchor: "west")
  content((0.72, 0.95), text(size: 7pt, fill: red)[A], anchor: "east")
  content((3.4, 2.15), text(size: 7pt, fill: red)[E], anchor: "north")
  content((4.62, 0.95), text(size: 7pt, fill: red)[H], anchor: "east")
})
