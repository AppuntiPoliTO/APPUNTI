// Figura estratta da 27-50_appunti.typ (riga 530) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *

  // Assi principali
  line((0, 0), (8.2, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, 0), (0, 4.8), mark: (end: ">"), stroke: 0.9pt)
  content((8.2, -0.25), text(size: 7pt)[$epsilon$], anchor: "north")
  content((-0.25, 4.7), text(size: 7pt)[$sigma$], anchor: "east")
  content((-0.2, -0.2), text(size: 7pt)[$O$], anchor: "north-east")

  // Retta tangente elastica tratteggiata
  line((0, 0), (1.35, 4.5), stroke: (dash: "dashed", thickness: 0.7pt, paint: red))

  // Curva tensione-deformazione O - A - B - C(Rm) - D
  line((0, 0), (0.6, 2.0), stroke: 1.1pt)
  bezier((0.6, 2.0), (1.1, 2.0), (0.75, 2.25), (0.95, 1.85), stroke: 1.1pt)
  bezier((1.1, 2.0), (4.5, 3.7), (2.0, 3.3), (3.3, 3.7), stroke: 1.1pt)
  bezier((4.5, 3.7), (6.6, 3.1), (5.3, 3.7), (6.0, 3.45), stroke: 1.1pt)

  content((0.48, 2.05), text(size: 7pt)[$A$], anchor: "east")
  content((1.18, 1.85), text(size: 7pt)[$B$], anchor: "north-west")
  content((6.75, 3.15), text(size: 7pt)[$D$], anchor: "south-west")

  // Quota Rm
  line((-0.85, 3.7), (4.5, 3.7), stroke: 0.5pt)
  line((-0.7, 0), (-0.7, 3.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.8, 1.85), text(size: 7pt)[$R_"m"$], anchor: "east")

  // Indicazione intervallo Delta e attorno al massimo
  line((4.0, 3.68), (4.0, 4.6), stroke: 0.5pt)
  line((4.5, 3.7), (4.5, 4.3), stroke: 0.5pt)
  line((5.0, 3.68), (5.0, 4.6), stroke: 0.5pt)
  line((4.0, 4.5), (5.0, 4.5), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((4.5, 4.58), text(size: 7pt)[$Delta e$], anchor: "south")
  line((3.5, 4.2), (4.5, 4.2), mark: (end: ">"), stroke: 0.5pt)
  content((3.9, 4.25), text(size: 7pt)[$Delta e slash 2$], anchor: "south")
  line((5.5, 4.0), (4.5, 4.0), mark: (end: ">"), stroke: 0.5pt)
  content((5.1, 4.05), text(size: 7pt)[$Delta e slash 2$], anchor: "south")

  // Rette di scarico e proiezioni verticali per Ag, Agt, A, At
  line((4.5, 3.7), (3.39, 0), stroke: 0.6pt)
  line((4.5, 3.7), (4.5, 0), stroke: 0.6pt)
  line((6.6, 3.1), (5.67, 0), stroke: 0.6pt)
  line((6.6, 3.1), (6.6, 0), stroke: 0.6pt)

  // Estensioni verticali sotto l'asse x per le quote di deformazione
  line((0, 0), (0, -2.6), stroke: 0.6pt)
  line((3.39, 0), (3.39, -0.65), stroke: 0.6pt)
  line((4.5, 0), (4.5, -1.25), stroke: 0.6pt)
  line((5.67, 0), (5.67, -1.85), stroke: 0.6pt)
  line((6.6, 0), (6.6, -2.45), stroke: 0.6pt)

  line((0, -0.5), (3.39, -0.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.7, -0.45), text(size: 7pt)[$A_"g"$], anchor: "south")

  line((0, -1.1), (4.5, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.25, -1.05), text(size: 7pt)[$A_"gt"$], anchor: "south")

  line((0, -1.7), (5.67, -1.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.83, -1.65), text(size: 7pt)[$A$], anchor: "south")

  line((0, -2.3), (6.6, -2.3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.3, -2.25), text(size: 7pt)[$A_"t"$], anchor: "south")
})
