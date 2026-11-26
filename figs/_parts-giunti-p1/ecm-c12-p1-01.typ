// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Motore (blocco sinistra, filtro aria e scarico)
  line((0.25, -0.62), (0.25, 0.62), (1.60, 0.62), (1.60, -0.62), close: true, fill: gray.lighten(88%), stroke: 0.9pt)
  rect((0.40, -0.45), (1.45, 0.45), fill: gray.lighten(80%), stroke: 0.65pt)
  line((0.55, -0.62), (0.55, -0.82), (1.95, -0.82), (2.10, -0.72), stroke: 0.75pt)
  line((0.75, -0.62), (0.75, -0.92), (1.95, -0.92), stroke: 0.75pt)
  line((0.95, -0.62), (0.95, -0.72), (1.80, -0.72), stroke: 0.65pt)
  circle((0.92, 0.75), radius: 0.36, fill: white, stroke: 0.9pt)
  circle((0.92, 0.75), radius: 0.24, fill: gray.lighten(85%), stroke: 0.65pt)
  line((0.25, 0.00), (1.60, 0.00), stroke: (dash: "dashed", thickness: 0.5pt))

  // Volano-frizione (campana)
  line((1.60, -0.68), (2.15, -0.52), (2.15, 0.52), (1.60, 0.68), close: true, fill: gray.lighten(82%), stroke: 0.9pt)
  line((1.78, -0.63), (1.78, 0.63), stroke: 0.7pt)
  line((1.96, -0.57), (1.96, 0.57), stroke: 0.65pt)

  // Cambio (scatola con nervature)
  line((2.15, -0.50), (3.00, -0.44), (3.00, 0.44), (2.15, 0.50), close: true, fill: gray.lighten(85%), stroke: 0.9pt)
  line((3.00, -0.26), (3.25, -0.18), (3.25, 0.18), (3.00, 0.26), close: true, fill: gray.lighten(80%), stroke: 0.85pt)
  line((2.30, -0.49), (2.30, 0.49), stroke: 0.6pt)
  line((2.44, -0.48), (2.44, 0.48), stroke: 0.6pt)
  line((2.58, -0.47), (2.58, 0.47), stroke: 0.6pt)
  line((2.72, -0.46), (2.72, 0.46), stroke: 0.6pt)
  line((2.86, -0.45), (2.86, 0.45), stroke: 0.6pt)

  // Albero di uscita e primo giunto
  rect((3.25, -0.07), (3.52, 0.07), fill: gray.lighten(70%), stroke: 0.8pt)
  rect((3.52, -0.18), (3.78, 0.18), fill: gray.lighten(60%), stroke: 0.85pt)
  line((3.65, -0.22), (3.65, 0.22), stroke: 0.75pt)
  circle((3.65, 0.00), radius: 0.44, stroke: (paint: red, thickness: 1pt))

  // Albero di trasmissione
  rect((3.78, -0.07), (5.20, 0.07), fill: gray.lighten(75%), stroke: 0.85pt)

  // Secondo giunto (cardanico)
  line((5.20, -0.16), (5.34, -0.16), (5.34, 0.16), (5.20, 0.16), stroke: 0.85pt)
  rect((5.29, -0.12), (5.41, 0.12), fill: gray.lighten(55%), stroke: 0.8pt)
  line((5.50, -0.16), (5.36, -0.16), (5.36, 0.16), (5.50, 0.16), stroke: 0.85pt)
  circle((5.35, 0.00), radius: 0.44, stroke: (paint: red, thickness: 1pt))

  // Albero del pignone e coppia conica
  rect((5.50, -0.07), (6.24, 0.07), fill: gray.lighten(75%), stroke: 0.85pt)
  line((6.24, -0.22), (6.46, -0.13), (6.46, 0.13), (6.24, 0.22), close: true, fill: gray.lighten(60%), stroke: 0.85pt)
  line((6.30, -0.19), (6.42, -0.14), stroke: 0.6pt)
  line((6.30, -0.07), (6.42, -0.05), stroke: 0.6pt)
  line((6.30, 0.07), (6.42, 0.05), stroke: 0.6pt)
  line((6.30, 0.19), (6.42, 0.14), stroke: 0.6pt)

  // Differenziale (scatola esterna in sezione)
  line((6.18, -0.32), (6.45, -0.32), (6.58, -0.58), (7.85, -0.58), (7.98, -0.28), (8.12, -0.28), (8.12, 0.28), (7.98, 0.28), (7.85, 0.58), (6.58, 0.58), (6.45, 0.32), (6.18, 0.32), close: true, fill: gray.lighten(92%), stroke: 0.9pt)
  rect((6.84, -0.34), (7.56, 0.34), fill: white, stroke: 0.85pt)
  rect((6.95, -0.22), (7.45, 0.22), fill: gray.lighten(82%), stroke: 0.65pt)

  // Corona conica (coppia conica)
  rect((6.52, -0.20), (7.88, -0.06), fill: gray.lighten(65%), stroke: 0.85pt)
  line((6.60, -0.20), (6.60, -0.06), stroke: 0.55pt)
  line((6.72, -0.20), (6.72, -0.06), stroke: 0.55pt)
  line((6.84, -0.20), (6.84, -0.06), stroke: 0.55pt)
  line((6.96, -0.20), (6.96, -0.06), stroke: 0.55pt)
  line((7.08, -0.20), (7.08, -0.06), stroke: 0.55pt)
  line((7.20, -0.20), (7.20, -0.06), stroke: 0.55pt)
  line((7.32, -0.20), (7.32, -0.06), stroke: 0.55pt)
  line((7.44, -0.20), (7.44, -0.06), stroke: 0.55pt)
  line((7.56, -0.20), (7.56, -0.06), stroke: 0.55pt)
  line((7.68, -0.20), (7.68, -0.06), stroke: 0.55pt)
  line((7.80, -0.20), (7.80, -0.06), stroke: 0.55pt)

  // Semiassi e tubi assale (superiore e inferiore, simmetrici)
  line((6.86, 0.58), (7.02, 2.68), (7.38, 2.68), (7.54, 0.58), close: true, fill: gray.lighten(92%), stroke: 0.85pt)
  line((6.86, -0.58), (7.02, -2.68), (7.38, -2.68), (7.54, -0.58), close: true, fill: gray.lighten(92%), stroke: 0.85pt)
  rect((6.94, 2.68), (7.46, 2.76), fill: gray.lighten(75%), stroke: 0.8pt)
  rect((6.94, -2.76), (7.46, -2.68), fill: gray.lighten(75%), stroke: 0.8pt)
  rect((7.13, 0.22), (7.27, 2.90), fill: gray.lighten(65%), stroke: 0.85pt)
  rect((7.13, -2.90), (7.27, -0.22), fill: gray.lighten(65%), stroke: 0.85pt)

  // Ruota superiore
  rect((6.66, 2.76), (7.74, 2.92), fill: gray.lighten(78%), stroke: 0.85pt)
  line((6.04, 2.92), (8.36, 2.92), (8.46, 3.04), (8.46, 3.58), (8.36, 3.70), (6.04, 3.70), (5.94, 3.58), (5.94, 3.04), close: true, fill: gray.lighten(75%), stroke: 1pt)
  line((5.98, 3.12), (8.42, 3.12), stroke: 0.6pt)
  line((5.98, 3.31), (8.42, 3.31), stroke: 0.6pt)
  line((5.98, 3.50), (8.42, 3.50), stroke: 0.6pt)

  // Ruota inferiore
  rect((6.66, -2.92), (7.74, -2.76), fill: gray.lighten(78%), stroke: 0.85pt)
  line((6.04, -2.92), (8.36, -2.92), (8.46, -3.04), (8.46, -3.58), (8.36, -3.70), (6.04, -3.70), (5.94, -3.58), (5.94, -3.04), close: true, fill: gray.lighten(75%), stroke: 1pt)
  line((5.98, -3.12), (8.42, -3.12), stroke: 0.6pt)
  line((5.98, -3.31), (8.42, -3.31), stroke: 0.6pt)
  line((5.98, -3.50), (8.42, -3.50), stroke: 0.6pt)

  // Etichette e frecce
  content((1.20, 1.58), text(size: 7.5pt)[Volano-frizione], anchor: "south")
  line((1.35, 1.52), (1.80, 0.72), mark: (end: ">"), stroke: 0.75pt)

  content((2.50, -1.55), text(size: 7.5pt)[Cambio], anchor: "north")
  line((2.50, -1.48), (2.55, -0.54), mark: (end: ">"), stroke: 0.75pt)

  content((3.65, -2.02), text(size: 10pt, fill: red)[Giunto], anchor: "north")
  line((3.65, -1.94), (3.65, -0.52), mark: (end: ">"), stroke: (paint: red, thickness: 0.85pt))

  content((4.50, 0.68), text(size: 7pt)[Albero di], anchor: "south")
  content((4.50, 0.44), text(size: 7pt)[trasmissione], anchor: "south")
  line((4.50, 0.40), (4.50, 0.11), mark: (end: ">"), stroke: 0.75pt)

  content((5.35, 1.72), text(size: 10pt, fill: red)[Giunto], anchor: "south")
  line((5.35, 1.65), (5.35, 0.52), mark: (end: ">"), stroke: (paint: red, thickness: 0.85pt))

  content((6.05, 1.15), text(size: 7.5pt)[Differenziale], anchor: "south")
  line((6.20, 1.10), (6.74, 0.56), mark: (end: ">"), stroke: 0.75pt)

  content((6.10, -0.92), text(size: 7.5pt)[Coppia], anchor: "north")
  content((6.10, -1.18), text(size: 7.5pt)[conica], anchor: "north")
  line((6.20, -0.84), (6.46, -0.26), mark: (end: ">"), stroke: 0.75pt)

  content((8.55, 0.10), text(size: 7.5pt)[Semiassi], anchor: "west")
  line((8.52, 0.25), (7.54, 1.52), mark: (end: ">"), stroke: 0.75pt)
  line((8.52, -0.08), (7.54, -1.42), mark: (end: ">"), stroke: 0.75pt)
})
