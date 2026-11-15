// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 180) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.4cm, {
  import draw: *
  // Pannello 1: Solido sezionato con area A e dA
  circle((1.5, 1.5), radius: (1.1, 1.65), stroke: 0.9pt)
  arc((1.5, 1.5), start: 185deg, stop: 355deg, radius: (1.1, 0.45), anchor: "origin", stroke: 0.8pt)
  arc((1.5, 1.5), start: 5deg, stop: 175deg, radius: (1.1, 0.45), anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))
  content((0.75, 1.7), text(size: 7pt)[$A$])

  // Elementino dA sul solido
  circle((1.55, 1.4), radius: 0.4, stroke: (dash: "dashed", thickness: 0.5pt))
  line((1.35, 1.4), (1.55, 1.55), (1.75, 1.4), (1.55, 1.25), close: true, stroke: 0.8pt)
  line((2.05, 1.85), (1.62, 1.45), mark: (end: ">"), stroke: 0.6pt)
  content((2.2, 1.95), text(size: 7pt)[$d A$])

  // Forze e momenti esterni sul solido
  line((0.5, 0.2), (0.05, -0.2), mark: (end: ">"), stroke: 0.8pt)
  content((0.0, -0.4), text(size: 7pt)[$arrow(F)_a$])
  arc((0.25, 0.45), start: 60deg, stop: 200deg, radius: 0.35, anchor: "origin", mark: (end: ">"), stroke: 0.8pt)
  content((0.0, 0.95), text(size: 7pt)[$arrow(M)_a$])

  line((2.4, 2.4), (2.95, 2.7), mark: (end: ">"), stroke: 0.8pt)
  content((2.65, 2.85), text(size: 7pt)[$arrow(F)_b$])
  arc((2.1, 3.0), start: 30deg, stop: 150deg, radius: 0.35, anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  content((1.95, 3.55), text(size: 7pt)[$arrow(M)_b$])

  // Freccia tratteggiata di collegamento all'ingrandimento
  bezier((1.75, 1.15), (4.45, 1.65), (2.7, 0.6), (3.5, 2.4), mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.6pt))

  // Pannello 2: Ingrandimento di dA con R, M e scomposizione di t in sigma e tau
  line((3.6, 1.3), (4.5, 2.05), (5.4, 1.3), (4.5, 0.55), close: true, stroke: 0.9pt)
  circle((4.5, 1.3), radius: 0.38, stroke: (dash: "dashed", thickness: 0.6pt))
  circle((4.5, 1.3), radius: 0.05, fill: black)
  content((4.5, 1.05), text(size: 7pt)[$P$])
  content((3.95, 1.35), text(size: 7pt)[$d A$])

  // Normale n e tensione normale sigma
  line((4.5, 1.3), (5.2, 2.2), mark: (end: ">"), stroke: 1.0pt)
  content((4.85, 2.05), text(size: 7pt)[$arrow(n)$])
  line((4.5, 1.3), (5.65, 2.78), mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.1pt))
  content((5.35, 2.8), text(size: 7pt, fill: rgb("#e60000"))[$sigma$])

  // Vettore tensione t e risultanti R, M
  line((4.5, 1.3), (6.5, 2.1), mark: (end: ">"), stroke: 1.0pt)
  content((6.15, 2.25), text(size: 7pt)[$arrow(t)$])
  arc((5.35, 1.55), start: 100deg, stop: 260deg, radius: 0.25, anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  content((5.35, 2.0), text(size: 7pt)[$arrow(M)$])
  content((6.85, 2.1), text(size: 7pt)[$(arrow(R))$])

  // Componenti tangenziali tau nel piano di dA
  line((4.5, 1.3), (3.85, 0.95), mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.0pt))
  content((3.95, 0.7), text(size: 7pt, fill: rgb("#e60000"))[$tau$])
  line((4.5, 1.3), (5.05, 0.75), mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.0pt))
  content((5.25, 0.75), text(size: 7pt, fill: rgb("#e60000"))[$tau$])
})
