// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2052) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Sezione HEB 200 per calcolo sottile con coordinata xi (centro (0, 0))
  line((-1.6, -1.6), (1.6, -1.6), (1.6, -1.35), (0.08, -1.35), (0.08, 1.35), (1.6, 1.35), (1.6, 1.6), (-1.6, 1.6), (-1.6, 1.35), (-0.08, 1.35), (-0.08, -1.35), (-1.6, -1.35), close: true, stroke: 1.1pt)

  // Porzione di semiala tratteggiata di lunghezza xi (da x = -1.6 a -0.45) e corda verticale rossa
  line((-1.4, 1.35), (-1.2, 1.6), stroke: 0.4pt)
  line((-1.0, 1.35), (-0.8, 1.6), stroke: 0.4pt)
  line((-0.6, 1.35), (-0.45, 1.55), stroke: 0.4pt)
  line((-0.45, 1.35), (-0.45, 1.6), stroke: (paint: red, thickness: 1.6pt))

  // Frecce flusso tau_xz nell'ala superiore sinistra
  line((-1.45, 1.48), (-1.15, 1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((-0.95, 1.48), (-0.65, 1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((-0.35, 1.48), (-0.05, 1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((-0.45, 1.25), text(size: 7pt)[$tau_(x z)$], anchor: "north")

  // Quota xi
  line((-1.6, 1.6), (-1.6, 2.05), stroke: 0.4pt)
  line((-0.45, 1.6), (-0.45, 2.05), stroke: 0.4pt)
  line((-1.6, 1.9), (-0.45, 1.9), mark: (end: ">"), stroke: 0.6pt)
  content((-1.02, 1.95), text(size: 7pt)[$xi$], anchor: "south")

  // Quota spessore s a sinistra
  line((-1.6, 1.6), (-2.55, 1.6), stroke: 0.4pt)
  line((-1.6, 1.35), (-2.55, 1.35), stroke: 0.4pt)
  line((-2.4, 1.85), (-2.4, 1.6), mark: (end: ">"), stroke: 0.5pt)
  line((-2.4, 1.1), (-2.4, 1.35), mark: (end: ">"), stroke: 0.5pt)
  content((-2.5, 1.48), text(size: 7pt)[$s$], anchor: "east")

  // Quota braccio h/2 - s/2 = 92.5 mm a destra
  line((0, 1.48), (2.25, 1.48), stroke: 0.4pt)
  line((0, 0), (2.25, 0), stroke: 0.4pt)
  line((2.1, 0), (2.1, 1.48), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.0, 0.74), text(size: 7pt)[$h / 2 - s / 2 = 92.5$], anchor: "east")

  // Assi e quote principali
  line((0, 0), (-1.35, 0), mark: (end: ">"), stroke: 0.6pt)
  content((-1.3, -0.18), text(size: 7pt)[$z$], anchor: "north")
  line((0, 0), (0, 2.05), mark: (end: ">"), stroke: 0.6pt)
  content((0.15, 2.0), text(size: 7pt)[$y$], anchor: "west")

  line((-1.6, -1.6), (-2.1, -1.6), stroke: 0.4pt)
  line((-1.95, -1.6), (-1.95, 1.6), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-2.0, 0), text(size: 7pt)[200], anchor: "east")

  line((-1.6, -1.9), (1.6, -1.9), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0, -1.88), text(size: 7pt)[200], anchor: "south")

  line((0, -2.15), (0, -2.85), mark: (end: ">"), stroke: 1.6pt)
  content((0.2, -2.65), text(size: 7pt)[$T_y$], anchor: "west")
})
