// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 118) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.5cm, {
  import draw: *
  // --- Pannello Sinistro: Vista laterale ---
  line((0, -1.1), (1.8, -1.1), (1.8, 1.1), (0, 1.1), stroke: 1pt)
  // Linea di frattura a sinistra
  line((0, 1.1), (-0.05, 0.7), (0.04, 0.3), (-0.06, -0.1), (0.03, -0.5), (-0.04, -0.8), (0, -1.1), stroke: 1pt)

  // Terna d'assi
  line((0.4, -0.1), (1.1, -0.1), mark: (end: ">"), stroke: 0.8pt)
  content((1.1, -0.25), text(size: 7pt)[$x$], anchor: "north")
  line((0.4, -0.1), (0.4, 0.65), mark: (end: ">"), stroke: 0.8pt)
  content((0.3, 0.55), text(size: 7pt)[$y$], anchor: "east")
  circle((0.4, -0.1), radius: 0.14, fill: white, stroke: 0.8pt)
  circle((0.4, -0.1), radius: 0.04, fill: black)
  content((0.2, -0.25), text(size: 7pt)[$z$], anchor: "north")

  // Vettore N
  line((1.95, -0.1), (2.5, -0.1), mark: (end: ">"), stroke: 1pt)
  content((2.15, 0.05), text(size: 7pt)[$N$], anchor: "south")

  // Diagramma rettangolare frontale
  rect((2.8, -1.1), (3.35, 1.1), stroke: 1pt)
  line((2.8, 0.9), (3.35, 0.9), stroke: 0.6pt)
  line((2.8, 0.7), (3.35, 0.7), stroke: 0.6pt)
  line((2.8, 0.5), (3.35, 0.5), stroke: 0.6pt)
  line((2.8, 0.3), (3.35, 0.3), stroke: 0.6pt)
  line((2.8, 0.1), (3.35, 0.1), stroke: 0.6pt)
  line((2.8, -0.1), (3.35, -0.1), stroke: 0.6pt)
  line((2.8, -0.3), (3.35, -0.3), stroke: 0.6pt)
  line((2.8, -0.5), (3.35, -0.5), stroke: 0.6pt)
  line((2.8, -0.7), (3.35, -0.7), stroke: 0.6pt)
  line((2.8, -0.9), (3.35, -0.9), stroke: 0.6pt)
  content((3.5, 1.05), text(size: 12pt)[$sigma_(x x) = N / A$], anchor: "west")

  // --- Pannello Destro: Sezione trasversale e proiezione ---
  // Assi sezione (centro in 6.8, 0.0)
  line((5.6, 0.0), (8.0, 0.0), stroke: 0.7pt)
  content((5.75, 0.15), text(size: 10pt)[$z$], anchor: "south")
  line((6.8, -1.4), (6.8, 1.45), stroke: 0.7pt)
  content((6.7, 1.4), text(size: 7pt)[$y$], anchor: "east")

  // Sezione ovoidale (due semicerchi/archi ellittici raccordati)
  arc((6.8, 0.0), start: 0deg, stop: 180deg, radius: (0.95, 1.25), anchor: "origin", stroke: 1pt)
  arc((6.8, 0.0), start: 180deg, stop: 360deg, radius: (0.95, 1.05), anchor: "origin", stroke: 1pt)

  // Linee di proiezione a 45 gradi
  line((6.13, 0.88), (4.95, -0.3), stroke: (dash: "dashed", thickness: 0.7pt))
  line((7.47, -0.74), (6.55, -1.66), stroke: (dash: "dashed", thickness: 0.7pt))

  // Rettangolo diagramma inclinato a 45 gradi
  line((4.95, -0.3), (6.55, -1.9), (6.1, -2.35), (4.5, -0.75), close: true, fill: luma(235), stroke: 1pt)
  line((4.8, -0.45), (6.4, -2.05), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.65, -0.6), (6.25, -2.2), stroke: (dash: "dashed", thickness: 0.6pt))

  // Segno + nel cerchietto
  circle((5.2, -1.1), radius: 0.16, fill: white, stroke: 0.8pt)
  content((5.2, -1.1), text(size: 7pt)[$+$])
  content((6.4, -2.2), text(size: 7pt)[$sigma_(x x)$], anchor: "north")
})
