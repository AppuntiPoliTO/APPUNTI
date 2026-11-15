// Figura estratta da main.typ (riga 166) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Contorno chiuso della superficie A (4 Bezier C1)
  bezier((0.00, 2.90), (2.00, -0.80), (1.25, 2.90), (2.00, 0.85), stroke: 1.5pt)
  bezier((2.00, -0.80), (0.05, -2.97), (2.00, -2.15), (1.25, -2.97), stroke: 1.5pt)
  bezier((0.05, -2.97), (-1.87, -0.57), (-1.25, -2.97), (-1.87, -2.05), stroke: 1.5pt)
  bezier((-1.87, -0.57), (0.00, 2.90), (-1.87, 1.20), (-1.15, 2.90), stroke: 1.5pt)

  // 2. Rette baricentriche tratteggiate
  line((0, -0.25), (0, 2.65), stroke: (dash: "dashed", thickness: 0.9pt))
  line((-3.05, 0), (0.15, 0), stroke: (dash: "dashed", thickness: 0.9pt))

  // 3. Vettori P e P'
  line((0, -0.80), (0, -3.70), mark: (end: ">", size: 0.35), stroke: 1.6pt)
  line((0.55, -0.03), (3.75, -0.03), mark: (end: ">", size: 0.35), stroke: 1.6pt)

  // 4. Terna di riferimento (x, y, z)
  line((3.13, -3.00), (3.13, -1.97), mark: (end: ">", size: 0.14), stroke: 0.6pt)
  line((3.13, -3.00), (2.10, -3.00), mark: (end: ">", size: 0.14), stroke: 0.6pt)
  line((3.13, -3.00), (3.93, -3.63), mark: (end: ">", size: 0.14), stroke: 0.6pt)

  // 5. Etichette (tutte con text(size: 7pt))
  content((-1.75, 1.95), text(size: 13pt, fill: rgb(75, 90, 110))[$A$], anchor: "east")
  content((-0.30, 0.25), text(size: 13pt)[G], anchor: "south-east")
  content((3.40, 0.40), text(size: 13pt, fill: rgb(75, 90, 110))[$P'$], anchor: "south")
  content((-0.45, -3.35), text(size: 13pt, fill: rgb(75, 90, 110))[$P$], anchor: "east")

  content((3.28, -2.10), text(size: 9pt, fill: rgb(60, 70, 85))[$y$], anchor: "west")
  content((2.20, -3.18), text(size: 9pt, fill: rgb(60, 70, 85))[$z$], anchor: "north")
  content((3.65, -3.55), text(size: 9pt, fill: rgb(60, 70, 85))[$x$], anchor: "north-east")
})
