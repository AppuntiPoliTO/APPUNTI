// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1750) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.82cm, {
  import draw: *
  // Sezione a doppio T sottile (centro (-1.2, 0))
  line((-3.0, -1.6), (0.6, -1.6), (0.6, -1.35), (-1.08, -1.35), (-1.08, 1.35), (0.6, 1.35), (0.6, 1.6), (-3.0, 1.6), (-3.0, 1.35), (-1.32, 1.35), (-1.32, -1.35), (-3.0, -1.35), close: true, stroke: 1.3pt)

  // Assi
  line((0.1, 0), (-2.9, 0), mark: (end: ">"), stroke: 0.6pt)
  content((-2.85, -0.18), text(size: 7pt)[$z$], anchor: "north")
  line((-1.2, -1.7), (-1.2, 2.05), mark: (end: ">"), stroke: 0.6pt)
  content((-1.05, 1.95), text(size: 7pt)[$y$], anchor: "west")
  content((-0.95, 0.18), text(size: 7pt)[$G$])

  // Quote b e s
  line((-3.0, 1.6), (-3.0, 2.35), stroke: 0.4pt)
  line((0.6, 1.6), (0.6, 2.35), stroke: 0.4pt)
  line((-3.0, 2.2), (0.6, 2.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-1.2, 2.25), text(size: 7pt)[$b$], anchor: "south")

  line((0.6, 1.6), (1.0, 1.6), stroke: 0.4pt)
  line((0.6, 1.35), (1.0, 1.35), stroke: 0.4pt)
  line((0.8, 1.35), (0.8, 1.6), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0.95, 1.48), text(size: 7pt)[$s$], anchor: "west")

  line((-1.32, 0.85), (-1.08, 0.85), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-0.98, 0.85), text(size: 7pt)[$s$], anchor: "west")

  // Frecce flussi nelle ali (tau_xz) e nell'anima (tau_xy)
  line((-2.7, 1.48), (-1.6, 1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((0.3, 1.48), (-0.8, 1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((-2.3, 1.05), text(size: 7pt)[$tau_(x z)$])
  content((-0.1, 1.05), text(size: 7pt)[$tau_(x z)$])

  line((-1.25, -0.3), (-1.25, -0.95), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.15, -0.3), (-1.15, -0.95), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  content((-1.65, -0.65), text(size: 7pt)[$tau_(x y)$])

  line((-1.6, -1.48), (-2.7, -1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((-0.8, -1.48), (0.3, -1.48), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((-2.3, -1.1), text(size: 7pt)[$tau_(x z)$])
  content((-0.1, -1.1), text(size: 7pt)[$tau_(x z)$])

  line((-1.2, -1.65), (-1.2, -2.35), mark: (end: ">"), stroke: 1.8pt)
  content((-1.0, -2.2), text(size: 7pt)[$T_y$], anchor: "west")

  // Ellisse rossa tratteggiata sulla semiala inferiore destra e ingrandimento a destra
  circle((-0.1, -1.48), radius: (0.85, 0.35), stroke: (paint: red, dash: "dashed", thickness: 0.7pt))
  line((0.65, -1.3), (1.15, -0.75), mark: (end: ">"), stroke: (paint: red, thickness: 0.6pt))

  // Ingrandimento nodo ala-anima inferiore destra
  line((1.0, 0.65), (1.0, -0.15), (2.7, -0.15), (2.7, -0.55), stroke: 1.2pt)
  circle((2.0, -0.35), radius: (1.25, 0.55), stroke: (paint: red, dash: "dashed", thickness: 0.7pt))

  line((0.85, 0.8), (0.85, -0.1), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.3pt))
  content((1.08, 0.55), text(size: 7pt)[$tau_(x y)$], anchor: "west")

  line((1.1, -0.3), (2.4, -0.3), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  content((1.8, -0.65), text(size: 7pt)[$tau_(x z)$])

  line((2.55, -0.25), (2.55, -0.55), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((2.8, -0.45), text(size: 7pt)[$tau_(x y)$], anchor: "west")
})
