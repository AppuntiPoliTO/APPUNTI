// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1928) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.76cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Sezione HEB 200 con corde a, b, c (centro (-1.5, 0)) ---
  line((-3.0, -1.6), (0.0, -1.6), (0.0, -1.35), (-1.42, -1.35), (-1.42, 1.35), (0.0, 1.35), (0.0, 1.6), (-3.0, 1.6), (-3.0, 1.35), (-1.58, 1.35), (-1.58, -1.35), (-3.0, -1.35), close: true, stroke: 1.1pt)

  // Tratteggio ala superiore e semianima superiore
  line((-2.8, 1.35), (-2.6, 1.6), stroke: 0.4pt)
  line((-2.3, 1.35), (-2.1, 1.6), stroke: 0.4pt)
  line((-1.8, 1.35), (-1.6, 1.6), stroke: 0.4pt)
  line((-1.3, 1.35), (-1.1, 1.6), stroke: 0.4pt)
  line((-0.8, 1.35), (-0.6, 1.6), stroke: 0.4pt)
  line((-0.3, 1.35), (-0.1, 1.6), stroke: 0.4pt)
  line((-1.58, 0.25), (-1.42, 0.45), stroke: 0.4pt)
  line((-1.58, 0.65), (-1.42, 0.85), stroke: 0.4pt)
  line((-1.58, 1.05), (-1.42, 1.25), stroke: 0.4pt)

  // Corde: rossa (a), arancione (b), blu (c)
  line((-3.0, 1.35), (0.0, 1.35), stroke: (paint: red, thickness: 1.5pt))
  line((-1.58, 1.30), (-1.42, 1.30), stroke: (paint: orange, thickness: 1.6pt))
  line((-1.58, 0), (-1.42, 0), stroke: (paint: blue, thickness: 1.6pt))

  content((0.1, 1.15), text(size: 7pt)[$tau_(x y, a)$], anchor: "west")
  content((-1.32, 0.95), text(size: 7pt)[$tau_(x y, b)$], anchor: "west")
  content((-1.32, -0.35), text(size: 7pt)[$tau_(x y, c)$], anchor: "west")

  // Assi e quote
  line((-1.5, 0), (-2.8, 0), mark: (end: ">"), stroke: 0.6pt)
  content((-2.75, -0.2), text(size: 7pt)[$z$], anchor: "north")
  line((-1.5, 0), (-1.5, 2.05), mark: (end: ">"), stroke: 0.6pt)
  content((-1.35, 2.0), text(size: 7pt)[$y$], anchor: "west")

  // Quote 200, 170, 9, 15, 200
  line((-3.0, 1.6), (-3.85, 1.6), stroke: 0.4pt)
  line((-3.0, -1.6), (-3.85, -1.6), stroke: 0.4pt)
  line((-3.7, -1.6), (-3.7, 1.6), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-3.75, 0.25), text(size: 7pt)[200], anchor: "east")

  line((-3.25, -1.35), (-3.25, 1.35), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-3.3, -0.35), text(size: 7pt)[170], anchor: "east")

  line((-1.85, 0), (-1.58, 0), mark: (end: ">"), stroke: 0.5pt)
  line((-1.15, 0), (-1.42, 0), mark: (end: ">"), stroke: 0.5pt)
  content((-1.1, 0), text(size: 7pt)[9], anchor: "west")

  line((0.0, -1.6), (0.55, -1.6), stroke: 0.4pt)
  line((0.0, -1.35), (0.55, -1.35), stroke: 0.4pt)
  line((0.4, -1.6), (0.4, -1.35), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0.5, -1.48), text(size: 7pt)[15], anchor: "west")

  line((-3.0, -1.6), (-3.0, -2.05), stroke: 0.4pt)
  line((0.0, -1.6), (0.0, -2.05), stroke: 0.4pt)
  line((-3.0, -1.9), (0.0, -1.9), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.5, -1.88), text(size: 7pt)[200], anchor: "south")

  line((-1.5, -2.15), (-1.5, -2.85), mark: (end: ">"), stroke: 1.6pt)
  content((-1.3, -2.65), text(size: 7pt)[$T_y$], anchor: "west")

  // --- PANNELLO DESTRO: Diagramma parabolico a salto (base a x = 1.4) ---
  line((0.0, 1.6), (1.4, 1.6), stroke: (dash: "dashed", thickness: 0.4pt))
  line((0.0, 1.35), (1.4, 1.35), stroke: (dash: "dashed", thickness: 0.4pt))
  line((-1.5, 0), (3.5, 0), stroke: (dash: "dashed", thickness: 0.4pt))
  line((0.0, -1.35), (1.4, -1.35), stroke: (dash: "dashed", thickness: 0.4pt))
  line((0.0, -1.6), (1.4, -1.6), stroke: (dash: "dashed", thickness: 0.4pt))

  // Piccoli lobi sulle ali (da 0 a 2.5 MPa -> x da 1.4 a 1.48)
  line((1.4, 1.6), (1.48, 1.35), (1.4, 1.35), close: true, fill: luma(195), stroke: 0.6pt)
  line((1.4, -1.35), (1.48, -1.35), (1.4, -1.6), close: true, fill: luma(195), stroke: 0.6pt)

  // Diagramma nell'anima (da 55.9 MPa a x = 3.05 fino a 62.5 MPa a x = 3.25)
  line((1.4, 1.35), (3.05, 1.35), stroke: 0.7pt)
  line((1.4, -1.35), (3.05, -1.35), stroke: 0.7pt)
  line((1.4, -1.35), (1.4, 1.35), stroke: 0.7pt)
  bezier((3.05, 1.35), (3.25, 0), (3.18, 0.9), (3.25, 0.45), stroke: 0.8pt)
  bezier((3.25, 0), (3.05, -1.35), (3.25, -0.45), (3.18, -0.9), stroke: 0.8pt)

  // Tratteggio orizzontale interno al diagramma
  line((1.4, 1.0), (3.13, 1.0), stroke: 0.4pt)
  line((1.4, 0.65), (3.20, 0.65), stroke: 0.4pt)
  line((1.4, 0.32), (3.24, 0.32), stroke: 0.4pt)
  line((1.4, 0.0), (3.25, 0.0), stroke: 0.4pt)
  line((1.4, -0.32), (3.24, -0.32), stroke: 0.4pt)
  line((1.4, -0.65), (3.20, -0.65), stroke: 0.4pt)
  line((1.4, -1.0), (3.13, -1.0), stroke: 0.4pt)

  // Etichette valori numerici
  line((1.48, 1.35), (1.85, 1.65), mark: (end: ">"), stroke: 0.5pt)
  content((1.9, 1.7), text(size: 7pt)[$tau_(x y, a) = 2.5 "MPa"$], anchor: "west")

  line((3.05, 1.35), (3.4, 1.65), mark: (end: ">"), stroke: 0.5pt)
  content((3.45, 1.7), text(size: 7pt)[$tau_(x y, b) = 55.9 "MPa"$], anchor: "west")

  line((3.25, 0), (3.6, -0.3), mark: (end: ">"), stroke: 0.5pt)
  content((3.65, -0.35), text(size: 7pt)[$tau_(x y, c) = 62.5 "MPa"$], anchor: "west")
})
