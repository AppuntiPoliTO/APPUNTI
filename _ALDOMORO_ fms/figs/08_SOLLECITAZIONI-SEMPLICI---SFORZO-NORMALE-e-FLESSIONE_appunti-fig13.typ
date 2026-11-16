// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 717) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.8cm, {
  import draw: *
  // Sezione rettangolare a sinistra (centro in 1.8, 0.0)
  rect((1.0, -1.1), (2.6, 1.1), stroke: 1.1pt)
  line((3.0, 0.0), (0.5, 0.0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((0.65, -0.25), text(size: 7pt)[$z$], anchor: "north")
  line((1.8, -1.4), (1.8, 1.55), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((1.68, 1.45), text(size: 7pt)[$y$], anchor: "east")

  // Quota altezza h
  line((1.0, 1.1), (0.2, 1.1), stroke: 0.5pt)
  line((1.0, -1.1), (0.2, -1.1), stroke: 0.5pt)
  line((0.35, -1.1), (0.35, 1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.25, 0.0), text(size: 7pt)[$h$], anchor: "east")

  // Quota base b
  line((1.0, -1.1), (1.0, -1.65), stroke: 0.5pt)
  line((2.6, -1.1), (2.6, -1.65), stroke: 0.5pt)
  line((1.0, -1.5), (2.6, -1.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.8, -1.45), text(size: 7pt)[$b$], anchor: "south")

  // Diagramma a farfalla a destra
  line((3.3, 1.1), (5.9, 1.1), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.6, 0.0), (5.9, 0.0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((3.3, -1.1), (5.9, -1.1), stroke: (dash: "dashed", thickness: 0.5pt))

  line((4.7, -1.1), (4.7, 1.1), stroke: 0.9pt)
  line((3.8, 1.1), (5.6, -1.1), stroke: 0.9pt)
  line((4.7, 1.1), (3.8, 1.1), mark: (end: ">"), stroke: 0.8pt)
  line((4.7, 0.82), (4.03, 0.82), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, 0.55), (4.25, 0.55), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, 0.28), (4.47, 0.28), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, -0.28), (4.93, -0.28), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, -0.55), (5.15, -0.55), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, -0.82), (5.37, -0.82), mark: (end: ">"), stroke: 0.7pt)
  line((4.7, -1.1), (5.6, -1.1), mark: (end: ">"), stroke: 0.8pt)
})
