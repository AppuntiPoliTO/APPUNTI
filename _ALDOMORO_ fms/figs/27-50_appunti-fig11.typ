// Figura estratta da 27-50_appunti.typ (riga 893) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Rettangolo deformato (tratteggiato)
  rect((0.8, 2.05), (7.2, 3.55), stroke: (dash: "dashed", thickness: 0.8pt))
  // Rettangolo indeformato (continuo)
  rect((1.4, 1.8), (6.6, 3.8), stroke: 1.2pt)

  // Frecce tensione sigma_xx a sinistra
  line((1.4, 3.8), (0.5, 3.8), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 3.47), (0.5, 3.47), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 3.13), (0.5, 3.13), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.8), (0.5, 2.8), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.47), (0.5, 2.47), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 2.13), (0.5, 2.13), mark: (end: ">"), stroke: 0.7pt)
  line((1.4, 1.8), (0.5, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((0.6, 4.15), text(size: 7pt)[$sigma_(x x)$])

  // Frecce tensione sigma_xx a destra
  line((6.6, 3.8), (7.5, 3.8), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 3.47), (7.5, 3.47), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 3.13), (7.5, 3.13), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.8), (7.5, 2.8), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.47), (7.5, 2.47), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 2.13), (7.5, 2.13), mark: (end: ">"), stroke: 0.7pt)
  line((6.6, 1.8), (7.5, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((7.4, 4.15), text(size: 7pt)[$sigma_(x x)$])

  // Quote verticali interne (a e a - Delta a)
  line((3.5, 1.8), (3.5, 3.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.35, 2.8), text(size: 7pt)[$a$], anchor: "east")

  line((4.7, 2.05), (4.7, 3.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.55, 2.8), text(size: 7pt)[$a - Delta a$], anchor: "east")

  // Linee di estensione e quote orizzontali (l e l + Delta l)
  line((1.4, 1.8), (1.4, 0.8), stroke: 0.5pt)
  line((6.6, 1.8), (6.6, 0.8), stroke: 0.5pt)
  line((1.4, 1.0), (6.6, 1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.2), text(size: 7pt)[$l$], anchor: "south")

  line((0.8, 2.05), (0.8, 0.1), stroke: 0.5pt)
  line((7.2, 2.05), (7.2, 0.1), stroke: 0.5pt)
  line((0.8, 0.3), (7.2, 0.3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 0.5), text(size: 7pt)[$l + Delta l$], anchor: "south")
})
