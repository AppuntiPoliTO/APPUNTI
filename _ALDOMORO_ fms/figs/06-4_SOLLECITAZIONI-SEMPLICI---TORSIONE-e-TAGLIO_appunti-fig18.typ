// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1494) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.78cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Sezione spessa (centro (-2.2, 0)) ---
  line((-3.6, -1.5), (-0.8, -1.5), (-0.8, -0.8), (-1.7, -0.8), (-1.7, 0.8), (-0.8, 0.8), (-0.8, 1.5), (-3.6, 1.5), (-3.6, 0.8), (-2.7, 0.8), (-2.7, -0.8), (-3.6, -0.8), close: true, stroke: 1.2pt)
  line((-1.2, 0), (-3.6, 0), mark: (end: ">"), stroke: 0.5pt)
  line((-2.2, -1.6), (-2.2, 1.9), mark: (end: ">"), stroke: 0.5pt)
  content((-3.55, -0.18), text(size: 7pt)[$z$], anchor: "north")
  content((-2.05, 1.85), text(size: 7pt)[$y$], anchor: "west")
  content((-2.35, 0.18), text(size: 7pt)[$G$])

  // Fasce tau_xy in ala sup, anima e ala inf
  line((-3.6, 1.25), (-0.8, 1.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-3.6, 1.00), (-0.8, 1.00), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-3.2, 1.25), (-3.2, 1.00), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-2.2, 1.25), (-2.2, 1.00), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-1.2, 1.25), (-1.2, 1.00), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  content((-3.9, 1.15), text(size: 7pt)[$tau_(x y)$])

  line((-2.7, -0.15), (-1.7, -0.15), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-2.7, -0.60), (-1.7, -0.60), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-2.45, -0.15), (-2.45, -0.60), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-1.95, -0.15), (-1.95, -0.60), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  content((-3.0, -0.35), text(size: 7pt)[$tau_(x y)$])

  line((-3.6, -1.00), (-0.8, -1.00), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-3.6, -1.25), (-0.8, -1.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-3.2, -1.00), (-3.2, -1.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-2.2, -1.00), (-2.2, -1.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  line((-1.2, -1.00), (-1.2, -1.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.4pt))
  content((-3.9, -1.15), text(size: 7pt)[$tau_(x y)$])

  line((-2.2, -1.55), (-2.2, -2.25), mark: (end: ">"), stroke: 1.6pt)
  content((-2.0, -2.1), text(size: 7pt)[$T_y$], anchor: "west")

  // --- PANNELLO DESTRO: Sezione sottile (centro (2.0, 0)) ---
  line((0.6, -1.5), (3.4, -1.5), (3.4, -1.28), (2.11, -1.28), (2.11, 1.28), (3.4, 1.28), (3.4, 1.5), (0.6, 1.5), (0.6, 1.28), (1.89, 1.28), (1.89, -1.28), (0.6, -1.28), close: true, stroke: 1.2pt)
  line((3.0, 0), (0.6, 0), mark: (end: ">"), stroke: 0.5pt)
  line((2.0, -1.6), (2.0, 1.9), mark: (end: ">"), stroke: 0.5pt)
  content((0.65, -0.18), text(size: 7pt)[$z$], anchor: "north")
  content((2.15, 1.85), text(size: 7pt)[$y$], anchor: "west")
  content((2.25, 0.18), text(size: 7pt)[$G$])

  // Frecce orizzontali tau_xz nelle ali e verticali tau_xy nell'anima
  line((0.8, 1.39), (1.6, 1.39), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((3.2, 1.39), (2.4, 1.39), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((1.1, 1.05), text(size: 7pt)[$tau_(x z)$])
  content((2.9, 1.05), text(size: 7pt)[$tau_(x z)$])

  line((1.95, -0.25), (1.95, -0.85), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((2.05, -0.25), (2.05, -0.85), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  content((1.55, -0.55), text(size: 7pt)[$tau_(x y)$])

  line((1.6, -1.39), (0.8, -1.39), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  line((2.4, -1.39), (3.2, -1.39), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((1.1, -1.05), text(size: 7pt)[$tau_(x z)$])
  content((2.9, -1.05), text(size: 7pt)[$tau_(x z)$])

  line((2.0, -1.55), (2.0, -2.25), mark: (end: ">"), stroke: 1.6pt)
  content((2.2, -2.1), text(size: 7pt)[$T_y$], anchor: "west")
})
