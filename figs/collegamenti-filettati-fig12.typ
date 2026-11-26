// Figura estratta da collegamenti filettati.typ (riga 1296) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Riempimenti delle flange in sezione
  line(
    (0.0, 4.70), (0.0, 5.20), (1.00, 5.20), (1.08, 5.22), (1.13, 5.27),
    (1.15, 5.35), (1.15, 6.15), (1.55, 6.15), (1.55, 4.70),
    close: true, fill: luma(220), stroke: none
  )
  line(
    (0.0, 3.95), (1.00, 3.95), (1.08, 3.93), (1.13, 3.88), (1.15, 3.80),
    (1.15, 3.10), (1.55, 3.10), (1.55, 4.38), (1.22, 4.38), (1.22, 4.50),
    (0.0, 4.50),
    close: true, fill: luma(220), stroke: none
  )
  line(
    (2.45, 4.55), (2.45, 6.00), (2.85, 6.00), (2.85, 5.20), (2.87, 5.12),
    (2.92, 5.07), (3.00, 5.05), (4.00, 5.05), (4.00, 4.55),
    close: true, fill: luma(220), stroke: none
  )
  line(
    (2.45, 4.38), (2.78, 4.38), (2.78, 4.50), (4.00, 4.50), (4.00, 3.95),
    (3.00, 3.95), (2.92, 3.93), (2.87, 3.88), (2.85, 3.80), (2.85, 3.10),
    (2.45, 3.10),
    close: true, fill: luma(220), stroke: none
  )

  // Fori bullone (mascherati in bianco)
  rect((0.51, 4.70), (0.79, 5.20), fill: white, stroke: none)
  rect((0.51, 3.95), (0.79, 4.50), fill: white, stroke: none)
  rect((3.22, 3.95), (3.48, 5.05), fill: white, stroke: none)

  // Guarnizioni (sinistra non compressa, destra compressa)
  rect((1.22, 4.38), (1.55, 4.70), fill: rgb("#00a88f"), stroke: 0.8pt)
  rect((2.45, 4.38), (2.78, 4.55), fill: rgb("#00a88f"), stroke: 0.8pt)

  // Contorni flange
  line(
    (0.0, 4.70), (0.0, 5.20), (1.00, 5.20), (1.08, 5.22), (1.13, 5.27),
    (1.15, 5.35), (1.15, 6.15), (1.55, 6.15), (1.55, 4.70),
    close: true, stroke: 0.9pt
  )
  line(
    (0.0, 3.95), (1.00, 3.95), (1.08, 3.93), (1.13, 3.88), (1.15, 3.80),
    (1.15, 3.10), (1.55, 3.10), (1.55, 4.38), (1.22, 4.38), (1.22, 4.50),
    (0.0, 4.50),
    close: true, stroke: 0.9pt
  )
  line(
    (2.45, 4.55), (2.45, 6.00), (2.85, 6.00), (2.85, 5.20), (2.87, 5.12),
    (2.92, 5.07), (3.00, 5.05), (4.00, 5.05), (4.00, 4.55),
    close: true, stroke: 0.9pt
  )
  line(
    (2.45, 4.38), (2.78, 4.38), (2.78, 4.50), (4.00, 4.50), (4.00, 3.95),
    (3.00, 3.95), (2.92, 3.93), (2.87, 3.88), (2.85, 3.80), (2.85, 3.10),
    (2.45, 3.10),
    close: true, stroke: 0.9pt
  )

  // Linee dei fori a sinistra
  line((0.51, 4.70), (0.51, 5.20), stroke: 0.8pt)
  line((0.79, 4.70), (0.79, 5.20), stroke: 0.8pt)
  line((0.51, 3.95), (0.51, 4.50), stroke: 0.8pt)
  line((0.79, 3.95), (0.79, 4.50), stroke: 0.8pt)

  // Linee di raccordo interno attraverso il foro centrale
  line((1.55, 6.15), (2.00, 6.15), stroke: 0.8pt)
  line((2.00, 6.00), (2.45, 6.00), stroke: 0.8pt)
  line((1.55, 4.70), (2.00, 4.70), stroke: 0.8pt)
  line((2.00, 4.55), (2.45, 4.55), stroke: 0.8pt)
  line((1.55, 4.38), (2.45, 4.38), stroke: 0.8pt)
  line((1.55, 3.10), (2.45, 3.10), stroke: 0.8pt)

  // Asse di simmetria
  line((2.00, 2.85), (2.00, 6.35), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  // Bullone e dado a destra
  line(
    (3.22, 5.05), (3.22, 3.50), (3.26, 3.45), (3.44, 3.45), (3.48, 3.50),
    (3.48, 5.05),
    close: true, fill: white, stroke: 0.9pt
  )
  line((3.22, 4.25), (3.48, 4.25), stroke: 0.55pt)
  line((3.22, 3.50), (3.48, 3.50), stroke: 0.55pt)
  line((3.25, 3.45), (3.25, 4.25), stroke: 0.55pt)
  line((3.45, 3.45), (3.45, 4.25), stroke: 0.55pt)

  // Testa del bullone
  rect((3.09, 5.05), (3.61, 5.32), fill: white, stroke: 0.9pt)
  line((3.22, 5.05), (3.22, 5.32), stroke: 0.7pt)
  line((3.48, 5.05), (3.48, 5.32), stroke: 0.7pt)

  // Dado
  rect((3.09, 3.68), (3.61, 3.95), fill: white, stroke: 0.9pt)
  line((3.22, 3.68), (3.22, 3.95), stroke: 0.7pt)
  line((3.48, 3.68), (3.48, 3.95), stroke: 0.7pt)

  // Grafico forza - allungamento (in basso a destra)
  line((4.50, 0.30), (8.55, 0.30), mark: (end: ">"), stroke: 0.8pt)
  line((4.50, 0.30), (4.50, 2.75), mark: (end: ">"), stroke: 0.8pt)

  // Curve caratteristiche
  line((4.50, 0.30), (5.40, 2.58), stroke: 1.15pt)
  line((5.00, 2.25), (5.70, 0.85), stroke: 1.15pt)
  line((5.70, 0.85), (8.10, 0.30), stroke: 1.15pt)

  // Linee di riferimento sul grafico
  line((4.45, 1.95), (7.35, 1.95), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((5.15, 0.15), (5.15, 2.55), stroke: (dash: "dashed", thickness: 0.6pt))
  line((5.70, 0.85), (5.70, 0.30), stroke: 0.6pt)
  line((5.25, 0.85), (7.35, 0.85), stroke: 0.6pt)

  // Quote F_p e F_e
  line((6.55, 0.85), (6.55, 1.95), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((5.35, 1.15), (5.35, 0.85), mark: (end: ">"), stroke: 0.6pt)
  line((5.35, 0.05), (5.35, 0.30), mark: (end: ">"), stroke: 0.6pt)

  // Frecce tratteggiate di collegamento
  line(
    (1.40, 4.54), (7.75, 4.54), (7.75, 0.50), (7.25, 0.50),
    mark: (end: ">"), stroke: (paint: blue, dash: "dashed", thickness: 0.9pt)
  )
  line(
    (3.70, 4.25), (3.70, 3.15), (5.55, 3.15), (5.55, 1.20),
    mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 0.9pt)
  )

  // Etichette
  content((4.35, 2.65), text(size: 8.5pt)[$|F_p|$], anchor: "east")
  content((4.35, 2.30), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((4.40, 1.95), text(size: 8pt)[$F_(v,"lim")$], anchor: "east")
  content((6.65, 1.40), text(size: 8.5pt)[$F_p$], anchor: "west")
  content((5.42, 0.57), text(size: 8.5pt)[$F_e$], anchor: "west")
  content((8.15, 0.12), text(size: 8.5pt)[$i$], anchor: "north")
})
