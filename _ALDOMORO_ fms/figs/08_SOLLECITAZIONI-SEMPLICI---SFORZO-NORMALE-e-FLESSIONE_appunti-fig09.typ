// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 452) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.8cm, {
  import draw: *
  // --- Pannello Sinistro: Vista laterale e diagramma a farfalla ---
  line((0, -1.1), (1.8, -1.1), (1.8, 1.1), (0, 1.1), stroke: 1pt)
  line((0, 1.1), (-0.05, 0.7), (0.04, 0.3), (-0.06, -0.1), (0.03, -0.5), (-0.04, -0.8), (0, -1.1), stroke: 1pt)

  // Terna d'assi
  line((0.4, -0.1), (1.1, -0.1), mark: (end: ">"), stroke: 0.8pt)
  content((1.1, -0.25), text(size: 7pt)[$x$], anchor: "north")
  line((0.4, -0.1), (0.4, 0.65), mark: (end: ">"), stroke: 0.8pt)
  content((0.3, 0.55), text(size: 7pt)[$y$], anchor: "east")
  circle((0.4, -0.1), radius: 0.14, fill: white, stroke: 0.8pt)
  circle((0.4, -0.1), radius: 0.04, fill: black)
  content((0.2, -0.25), text(size: 7pt)[$z$], anchor: "north")

  // Diagramma a farfalla verticale
  line((2.55, -1.1), (2.55, 1.1), stroke: 0.9pt)
  line((2.05, 1.1), (2.85, -1.1), stroke: 0.9pt)
  line((2.05, 1.1), (2.55, 1.1), stroke: 0.9pt)
  line((2.55, -1.1), (2.85, -1.1), stroke: 0.9pt)
  // Tratteggio orizzontale interno
  line((2.14, 0.85), (2.55, 0.85), stroke: 0.5pt)
  line((2.23, 0.60), (2.55, 0.60), stroke: 0.5pt)
  line((2.32, 0.35), (2.55, 0.35), stroke: 0.5pt)
  line((2.41, 0.10), (2.55, 0.10), stroke: 0.5pt)
  line((2.55, -0.35), (2.63, -0.35), stroke: 0.5pt)
  line((2.55, -0.60), (2.71, -0.60), stroke: 0.5pt)
  line((2.55, -0.85), (2.78, -0.85), stroke: 0.5pt)

  // Arco M_z e formula
  arc((3.2, 0.05), start: -65deg, stop: 75deg, radius: 0.42, anchor: "origin", mark: (end: ">"), stroke: 0.8pt)
  content((3.25, 0.05), text(size: 7pt)[$M_z$], anchor: "east")
  content((3.1, 1.05), text(size: 7pt)[$sigma_(x x) = - M_z / I_z dot y$], anchor: "west")

  // --- Pannello Destro: Sezione ovoidale e proiezione a farfalla ---
  line((5.6, 0.0), (8.0, 0.0), stroke: 0.7pt)
  content((5.75, 0.15), text(size: 7pt)[$z$], anchor: "south")
  line((6.8, -1.4), (6.8, 1.45), stroke: 0.7pt)
  content((6.7, 1.4), text(size: 7pt)[$y$], anchor: "east")

  arc((6.8, 0.0), start: 0deg, stop: 180deg, radius: (0.95, 1.25), anchor: "origin", stroke: 1pt)
  arc((6.8, 0.0), start: 180deg, stop: 360deg, radius: (0.95, 1.05), anchor: "origin", stroke: 1pt)

  // Linee di proiezione a 45 gradi (estremi e asse neutro)
  line((6.13, 0.88), (4.8, -0.45), stroke: 0.6pt)
  line((7.47, -0.74), (6.3, -1.91), stroke: 0.6pt)

  // Diagramma a farfalla inclinato a 45 gradi
  line((4.8, -0.45), (6.3, -1.95), stroke: 0.9pt)
  line((4.5, -0.75), (4.8, -0.45), stroke: 0.9pt)
  line((6.3, -1.95), (6.0, -2.25), stroke: 0.9pt)
  line((4.5, -0.75), (6.0, -2.25), stroke: 0.9pt)
  // Tratteggio interno nei due triangoli
  line((4.65, -0.6), (5.05, -0.7), stroke: 0.5pt)
  line((4.8, -0.75), (5.2, -0.85), stroke: 0.5pt)
  line((5.0, -0.95), (5.35, -1.0), stroke: 0.5pt)
  line((5.75, -1.7), (6.1, -1.75), stroke: 0.5pt)
  line((5.88, -1.88), (6.2, -1.85), stroke: 0.5pt)

  content((6.25, -2.2), text(size: 7pt)[$sigma_(x x)$], anchor: "west")
})
