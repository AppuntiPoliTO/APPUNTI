// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 636) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.6cm, {
  import draw: *
  // --- Sezione generica a sinistra (centro G in 2.0, 0.0) ---
  // Contorno ovoidale con riempimento tratteggiato
  arc((2.0, 0.0), start: 0deg, stop: 180deg, radius: (1.05, 1.35), anchor: "origin", fill: luma(240), stroke: 1.1pt)
  arc((2.0, 0.0), start: 180deg, stop: 360deg, radius: (1.05, 0.95), anchor: "origin", fill: luma(240), stroke: 1.1pt)

  // Tratteggio a 45 gradi sulla sezione
  line((1.15, -0.45), (2.45, 0.85), stroke: 0.4pt)
  line((1.0, -0.1), (2.3, 1.2), stroke: 0.4pt)
  line((1.1, 0.35), (2.05, 1.3), stroke: 0.4pt)
  line((1.35, 0.85), (1.75, 1.25), stroke: 0.4pt)
  line((1.35, -0.75), (2.75, 0.65), stroke: 0.4pt)
  line((1.65, -0.92), (2.95, 0.38), stroke: 0.4pt)
  line((2.05, -0.92), (3.02, 0.05), stroke: 0.4pt)
  line((2.45, -0.8), (2.98, -0.27), stroke: 0.4pt)

  // Assi baricentrici z e y
  line((3.3, 0.0), (0.0, 0.0), mark: (end: ">"), stroke: 0.9pt)
  content((0.05, 0.2), text(size: 7pt)[$z$], anchor: "south")
  line((2.0, -1.35), (2.0, 1.95), mark: (end: ">"), stroke: (dash: "dashed", thickness: 0.8pt))
  content((1.88, 1.85), text(size: 7pt)[$y$], anchor: "east")

  // Punti G, A, B
  content((1.95, 0.22), text(size: 7pt)[$G$], anchor: "east")
  content((1.92, 1.52), text(size: 7pt)[$A$], anchor: "east")
  content((1.92, -1.15), text(size: 7pt)[$B$], anchor: "east")

  // Quote y'_max e y''_max
  line((2.0, 1.35), (0.35, 1.35), stroke: 0.6pt)
  line((2.0, -0.95), (0.35, -0.95), stroke: 0.6pt)
  line((0.5, 0.0), (0.5, 1.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.45, 0.68), text(size: 7pt)[$y'_"max"$], anchor: "east")
  line((0.5, -0.95), (0.5, 0.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.45, -0.48), text(size: 7pt)[$y''_"max"$], anchor: "east")

  // --- Diagramma delle tensioni a destra ---
  line((4.5, -0.95), (4.5, 1.35), stroke: 0.8pt)
  line((3.8, 0.0), (5.2, 0.0), stroke: 0.7pt)
  line((3.55, 1.35), (5.2, -0.95), stroke: 0.8pt)

  // Frecce superiori (compressione)
  line((4.5, 1.35), (3.55, 1.35), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, 1.12), (3.71, 1.12), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, 0.90), (3.87, 0.90), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, 0.67), (4.03, 0.67), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, 0.45), (4.18, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, 0.22), (4.34, 0.22), mark: (end: ">"), stroke: 0.6pt)

  // Frecce inferiori (trazione)
  line((4.5, -0.24), (4.68, -0.24), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, -0.47), (4.85, -0.47), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, -0.71), (5.02, -0.71), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, -0.95), (5.20, -0.95), mark: (end: ">"), stroke: 0.6pt)

  content((3.95, 1.45), text(size: 7pt)[$sigma'_"max"$], anchor: "south")
  content((5.15, -1.05), text(size: 7pt)[$sigma''_"max"$], anchor: "north")
})
