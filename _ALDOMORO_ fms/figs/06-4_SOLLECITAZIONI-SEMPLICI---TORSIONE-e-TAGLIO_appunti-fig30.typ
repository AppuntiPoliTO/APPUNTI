// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2556) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.78cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Geometria sezione a C con ascissa xi (G in (-1.6, 0)) ---
  line((-0.4, -1.15), (-2.3, -1.15), (-2.3, 1.15), (-0.4, 1.15), (-0.4, 0.95), (-2.1, 0.95), (-2.1, -0.95), (-0.4, -0.95), close: true, stroke: 1.2pt)
  // Linea media tratteggiata
  line((-0.4, 1.05), (-2.2, 1.05), (-2.2, -1.05), (-0.4, -1.05), stroke: (dash: "dashed", thickness: 0.5pt))

  // Porzione tratteggiata xi sull'estremita' destra dell'ala superiore
  rect((-0.95, 0.95), (-0.4, 1.15), fill: luma(225), stroke: 0.6pt)
  line((-0.4, 0.72), (-0.95, 0.72), mark: (end: ">"), stroke: 0.6pt)
  content((-0.68, 0.65), text(size: 7pt)[$xi$], anchor: "north")

  // Assi e Ty
  line((-0.9, 0), (-3.5, 0), mark: (end: ">"), stroke: 0.6pt)
  line((-1.6, -1.5), (-1.6, 1.85), mark: (end: ">"), stroke: 0.6pt)
  content((-3.45, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((-1.75, 1.8), text(size: 7pt)[$y$], anchor: "east")
  content((-1.42, 0.18), text(size: 7pt)[$G$])

  line((-1.6, 0), (-1.6, -1.35), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-1.4, -0.25), text(size: 7pt, fill: red)[$T_y$], anchor: "west")

  // Quote B, b, H, h, s, dG
  line((-2.3, 1.55), (-0.4, 1.55), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.35, 1.6), text(size: 7pt)[$B$], anchor: "south")
  line((-2.2, 1.32), (-0.4, 1.32), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.3, 1.35), text(size: 7pt)[$b$], anchor: "south")

  line((-2.65, -1.15), (-2.65, 1.15), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-2.72, 0.25), text(size: 7pt)[$H$], anchor: "east")

  line((0.0, -1.05), (0.0, 1.05), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0.1, 0), text(size: 7pt)[$h$], anchor: "west")

  line((-0.1, 0.95), (-0.1, 1.15), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0.02, 1.05), text(size: 7pt)[$s$], anchor: "west")

  line((-2.2, -0.55), (-1.6, -0.55), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.9, -0.5), text(size: 7pt)[$d_G$], anchor: "south")

  // --- PANNELLO DESTRO: Diagramma lineare tau_xz e risultanti Tz (G in (2.3, 0)) ---
  line((3.5, -1.15), (1.6, -1.15), (1.6, 1.15), (3.5, 1.15), (3.5, 0.95), (1.8, 0.95), (1.8, -0.95), (3.5, -0.95), close: true, stroke: 1.2pt)
  line((2.5, 0), (0.8, 0), mark: (end: ">"), stroke: 0.6pt)
  line((2.3, -1.5), (2.3, 1.85), mark: (end: ">"), stroke: 0.6pt)
  content((0.85, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((2.15, 1.8), text(size: 7pt)[$y$], anchor: "east")
  content((2.48, 0.18), text(size: 7pt)[$G$])

  // Triangoli viola tau_xz e vettori risultanti Tz
  line((3.5, 1.05), (1.7, 1.75), (1.7, 1.05), close: true, stroke: (paint: rgb("#6b46c1"), thickness: 0.7pt))
  line((2.15, 1.05), (2.15, 1.57), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((2.6, 1.05), (2.6, 1.40), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((3.05, 1.05), (3.05, 1.22), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((3.3, 1.05), (2.0, 1.05), mark: (end: ">"), stroke: (paint: rgb("#6b46c1"), thickness: 1.5pt))
  content((3.05, 1.55), text(size: 7pt, fill: rgb("#6b46c1"))[$tau_(x z)$])
  content((2.7, 0.68), text(size: 7pt, fill: rgb("#6b46c1"))[$T_z$])

  line((3.5, -1.05), (1.7, -1.75), (1.7, -1.05), close: true, stroke: (paint: rgb("#6b46c1"), thickness: 0.7pt))
  line((2.15, -1.05), (2.15, -1.57), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((2.6, -1.05), (2.6, -1.40), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((3.05, -1.05), (3.05, -1.22), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((2.0, -1.05), (3.3, -1.05), mark: (end: ">"), stroke: (paint: rgb("#6b46c1"), thickness: 1.5pt))
  content((3.05, -1.55), text(size: 7pt, fill: rgb("#6b46c1"))[$tau_(x z)$])
  content((2.7, -0.68), text(size: 7pt, fill: rgb("#6b46c1"))[$T_z$])
})
