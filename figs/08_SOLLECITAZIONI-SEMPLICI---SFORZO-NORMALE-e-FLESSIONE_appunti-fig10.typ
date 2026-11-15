// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 532) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.8cm, {
  import draw: *
  // --- Pannello Sinistro: Vista nel piano xz e diagramma a farfalla ---
  line((0, -1.1), (1.8, -1.1), (1.8, 1.1), (0, 1.1), stroke: 1pt)
  line((0, 1.1), (-0.05, 0.7), (0.04, 0.3), (-0.06, -0.1), (0.03, -0.5), (-0.04, -0.8), (0, -1.1), stroke: 1pt)

  // Terna d'assi (x a destra, z in alto, y entrante con croce)
  line((0.4, -0.35), (1.35, -0.35), mark: (end: ">"), stroke: 0.8pt)
  content((1.2, -0.55), text(size: 7pt)[$x$], anchor: "north")
  line((0.4, -0.35), (0.4, 0.45), mark: (end: ">"), stroke: 0.8pt)
  content((0.28, 0.35), text(size: 7pt)[$z$], anchor: "east")
  circle((0.4, -0.35), radius: 0.14, fill: white, stroke: 0.8pt)
  line((0.3, -0.45), (0.5, -0.25), stroke: 0.9pt)
  line((0.3, -0.25), (0.5, -0.45), stroke: 0.9pt)
  content((0.2, -0.55), text(size: 7pt)[$y$], anchor: "north")

  // Diagramma a farfalla verticale (positivo per z > 0, negativo per z < 0)
  line((2.5, -1.1), (2.5, 1.1), stroke: 0.9pt)
  line((3.05, 1.1), (2.2, -1.1), stroke: 0.9pt)
  line((2.5, 1.1), (3.05, 1.1), stroke: 0.9pt)
  line((2.2, -1.1), (2.5, -1.1), stroke: 0.9pt)
  // Tratteggio interno
  line((2.5, 0.85), (2.95, 0.85), stroke: 0.5pt)
  line((2.5, 0.60), (2.86, 0.60), stroke: 0.5pt)
  line((2.5, 0.35), (2.76, 0.35), stroke: 0.5pt)
  line((2.5, 0.10), (2.66, 0.10), stroke: 0.5pt)
  line((2.40, -0.40), (2.5, -0.40), stroke: 0.5pt)
  line((2.31, -0.65), (2.5, -0.65), stroke: 0.5pt)
  line((2.23, -0.90), (2.5, -0.90), stroke: 0.5pt)

  // Arco M_y (orario, freccia in basso) e formula
  arc((3.0, 0.0), start: -65deg, stop: 75deg, radius: 0.45, anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  content((3.25, 0.0), text(size: 7pt)[$M_y$], anchor: "east")
  content((3.2, 1.0), text(size: 12pt)[$sigma_(x x) = M_y / I_y dot z$], anchor: "west")

  // --- Pannello Destro: Sezione ovoidale e proiezione ---
  line((5.6, 0.0), (8.0, 0.0), stroke: 0.7pt)
  content((5.7, -0.15), text(size: 7pt)[$z$], anchor: "north")
  line((6.8, -1.4), (6.8, 1.45), stroke: 0.7pt)
  content((6.7, 1.4), text(size: 7pt)[$y$], anchor: "east")

  arc((6.8, 0.0), start: 0deg, stop: 180deg, radius: (0.95, 1.25), anchor: "origin", stroke: 1pt)
  arc((6.8, 0.0), start: 180deg, stop: 360deg, radius: (0.95, 1.05), anchor: "origin", stroke: 1pt)

  // Linee di proiezione a 45 gradi
  line((6.13, 0.88), (4.8, -0.45), stroke: 0.6pt)
  line((7.47, -0.74), (6.3, -1.91), stroke: 0.6pt)

  // Diagramma a farfalla inclinato a 45 gradi
  line((5.0, -0.4), (6.5, -1.9), stroke: 0.9pt)
  line((4.6, -0.8), (5.0, -0.4), stroke: 0.9pt)
  line((6.5, -1.9), (6.2, -2.2), stroke: 0.9pt)
  line((4.6, -0.8), (6.2, -2.2), stroke: 0.9pt)
  // Tratteggio interno
  line((4.75, -0.65), (5.2, -0.6), stroke: 0.5pt)
  line((4.9, -0.85), (5.45, -0.85), stroke: 0.5pt)
  line((5.15, -1.05), (5.65, -1.05), stroke: 0.5pt)
  line((5.9, -1.65), (6.25, -1.65), stroke: 0.5pt)
  line((6.05, -1.85), (6.4, -1.8), stroke: 0.5pt)

  content((6.45, -2.1), text(size: 7pt)[$sigma_(x x)$], anchor: "west")
})
