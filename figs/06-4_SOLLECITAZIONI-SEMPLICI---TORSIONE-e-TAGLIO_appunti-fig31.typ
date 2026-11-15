// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2647) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.82cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Contributo di Taglio con punto P (G in (-2.0, 0)) ---
  line((-0.8, -1.15), (-2.7, -1.15), (-2.7, 1.15), (-0.8, 1.15), (-0.8, 0.95), (-2.5, 0.95), (-2.5, -0.95), (-0.8, -0.95), close: true, stroke: 1.2pt)
  line((-0.8, 1.05), (-2.6, 1.05), stroke: (dash: "dashed", thickness: 0.5pt))
  line((-0.8, -1.05), (-2.6, -1.05), stroke: (dash: "dashed", thickness: 0.5pt))

  line((-1.8, 0), (-4.0, 0), mark: (end: ">"), stroke: 0.6pt)
  line((-2.0, -0.3), (-2.0, 1.55), mark: (end: ">"), stroke: 0.6pt)
  content((-3.95, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((-2.15, 1.5), text(size: 7pt)[$y$], anchor: "east")
  content((-1.82, 0.18), text(size: 7pt)[$G$])

  // Quote b, h, s
  line((-2.6, 1.75), (-0.8, 1.75), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.7, 1.8), text(size: 7pt)[$b$], anchor: "south")
  line((-0.3, -1.05), (-0.3, 1.05), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-0.2, 0), text(size: 7pt)[$h$], anchor: "west")
  line((-0.45, 0.95), (-0.45, 1.15), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-0.32, 1.05), text(size: 7pt)[$s$], anchor: "west")

  // Diagramma parabolico blu tau_xy da taglio sull'anima
  line((-2.7, 0.95), (-3.35, 0.95), stroke: (paint: blue, thickness: 0.7pt))
  line((-2.7, -0.95), (-3.35, -0.95), stroke: (paint: blue, thickness: 0.7pt))
  bezier((-3.35, 0.95), (-3.6, 0), (-3.5, 0.6), (-3.6, 0.3), stroke: (paint: blue, thickness: 0.9pt))
  bezier((-3.6, 0), (-3.35, -0.95), (-3.6, -0.3), (-3.5, -0.6), stroke: (paint: blue, thickness: 0.9pt))
  line((-2.7, 0.6), (-3.48, 0.6), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.7, 0.3), (-3.56, 0.3), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.7, 0.0), (-3.60, 0.0), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.7, -0.3), (-3.56, -0.3), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.7, -0.6), (-3.48, -0.6), stroke: (paint: blue, thickness: 0.4pt))
  content((-3.85, 0.25), text(size: 7pt, fill: blue)[$tau_(x y)$])

  // Punto P sul bordo interno dell'anima (x = -2.5, y = 0)
  circle((-2.5, 0), radius: 0.08, fill: red, stroke: none)
  content((-2.38, 0.2), text(size: 7pt, fill: red)[$P$])

  // Segno + centrale
  content((0.5, 0), text(size: 7pt)[$bold(+)$])

  // --- PANNELLO DESTRO: Contributo di Torsione Mt = Ty d con punto P (G in (3.2, 0)) ---
  line((4.4, -1.15), (2.5, -1.15), (2.5, 1.15), (4.4, 1.15), (4.4, 0.95), (2.7, 0.95), (2.7, -0.95), (4.4, -0.95), close: true, stroke: 1.2pt)
  line((4.4, 1.05), (2.6, 1.05), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.4, -1.05), (2.6, -1.05), stroke: (dash: "dashed", thickness: 0.5pt))

  line((3.4, 0), (1.3, 0), mark: (end: ">"), stroke: 0.6pt)
  line((3.2, -0.3), (3.2, 1.55), mark: (end: ">"), stroke: 0.6pt)
  content((1.35, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((3.05, 1.5), text(size: 7pt)[$y$], anchor: "east")
  content((3.35, 0.18), text(size: 7pt)[$G$])

  // Quote b, h, s
  line((2.6, 1.75), (4.4, 1.75), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((3.5, 1.8), text(size: 7pt)[$b$], anchor: "south")
  line((4.9, -1.05), (4.9, 1.05), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((5.0, 0), text(size: 7pt)[$h$], anchor: "west")
  line((4.75, 0.95), (4.75, 1.15), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((4.88, 1.05), text(size: 7pt)[$s$], anchor: "west")

  // Diagrammi a farfalla verdi nello spessore per la torsione
  line((2.5, -0.55), (2.7, 0.55), stroke: (paint: rgb("#1b8a3d"), thickness: 0.8pt))
  line((3.0, 1.15), (4.0, 0.95), stroke: (paint: rgb("#1b8a3d"), thickness: 0.8pt))
  line((3.0, -0.95), (4.0, -1.15), stroke: (paint: rgb("#1b8a3d"), thickness: 0.8pt))
  content((2.15, 0.25), text(size: 7pt, fill: rgb("#1b8a3d"))[$tau_(x y)$])
  content((3.7, 1.38), text(size: 7pt, fill: rgb("#1b8a3d"))[$tau_(x z)$])
  content((3.7, -1.38), text(size: 7pt, fill: rgb("#1b8a3d"))[$tau_(x z)$])

  // Arco momento torcente Mt = Ty d
  arc((3.3, 0.05), start: -15deg, stop: 195deg, radius: 0.42, anchor: "origin", mark: (start: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 1.5pt))
  content((3.35, -0.55), text(size: 7pt, fill: rgb("#1b8a3d"))[$M_t = T_y d$])

  // Punto P sul bordo interno dell'anima (x = 2.7, y = 0)
  circle((2.7, 0), radius: 0.08, fill: red, stroke: none)
  content((2.82, 0.2), text(size: 7pt, fill: red)[$P$])
})
