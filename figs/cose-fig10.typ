// Figura estratta da cose.typ (riga 803) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *

  // Assi
  line((0, 0), (7.8, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, 0), (0, 5.2), mark: (end: ">"), stroke: 0.9pt)
  content((7.8, -0.25), text(size: 7pt)[$epsilon$], anchor: "north")
  content((-0.25, 5.1), text(size: 7pt)[$sigma$], anchor: "east")
  content((0.2, 0.2), text(size: 7pt)[$O$], anchor: "south-west")

  // Tratto comune O - A - B - C
  line((0, 0), (0.55, 2.0), stroke: 1.0pt)
  bezier((0.55, 2.0), (1.35, 2.2), (0.7, 2.4), (1.15, 2.35), stroke: 1.0pt)
  bezier((1.35, 2.2), (4.0, 3.4), (2.1, 3.05), (3.1, 3.4), stroke: 1.0pt)

  // Ramo ingegneristico C - D (decrescente per strizione apparente)
  bezier((4.0, 3.4), (6.6, 2.5), (4.9, 3.4), (5.8, 3.05), stroke: 1.0pt)

  // Ramo reale C - D' (crescente per riduzione effettiva dell'area S)
  bezier((4.0, 3.4), (6.6, 4.65), (4.8, 3.55), (5.7, 4.05), stroke: 1.0pt)

  // Linee di proiezione orizzontali tratteggiate sull'asse sigma
  line((0, 2.0), (0.55, 2.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.2), (1.35, 2.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 2.5), (6.6, 2.5), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 3.4), (4.0, 3.4), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 4.65), (6.6, 4.65), stroke: (dash: "dashed", thickness: 0.6pt))

  // Etichette punti
  content((0.65, 1.9), text(size: 7pt)[$A$], anchor: "north-west")
  content((1.4, 2.1), text(size: 7pt)[$B$], anchor: "north-west")
  content((3.95, 3.28), text(size: 7pt)[$C$], anchor: "north")
  content((6.75, 2.45), text(size: 7pt)[$D$ (ingegneristica)], anchor: "west")
  content((6.75, 4.65), text(size: 7pt)[$D'$ (reale)], anchor: "west")
})
