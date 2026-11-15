// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 652) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Profilo aperto a 3 tratti (orizzontale inferiore a3x b3, verticale centrale a2 x b2, inclinato superiore a1 x b1)
  line((0, 0), (3.4, 0), (3.4, 2.2), (5.9, 2.95), (5.65, 3.65), (2.95, 2.84), (2.95, 0.18), (0, 0.18), close: true, fill: luma(240), stroke: 1pt)

  // Quota a3
  line((0, -0.25), (3.3, -0.25), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.65, -0.35), text(size: 7pt)[$a_3$], anchor: "north")

  // Etichetta b3
  content((-0.15, 0.09), text(size: 7pt)[$b_3$], anchor: "east")

  // Quota a2
  line((2.55, 0.22), (2.55, 2.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.45, 1.4), text(size: 7pt)[$a_2$], anchor: "east")

  // Quota b2
  line((2.95, 1.05), (3.4, 1.05), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.17, 0.95), text(size: 7pt)[$b_2$], anchor: "north")

  // Quota a1 (parallela al tratto inclinato)
  line((3.5, 1.95), (6.0, 2.70), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.85, 2.15), text(size: 7pt)[$a_1$], anchor: "north")

  // Quota b1 (perpendicolare al tratto inclinato)
  line((4.45, 3.29), (4.70, 2.59), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.68, 2.98), text(size: 7pt)[$b_1$], anchor: "west")
})
