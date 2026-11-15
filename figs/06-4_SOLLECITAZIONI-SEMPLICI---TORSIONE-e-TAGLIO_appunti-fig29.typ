// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2447) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.78cm, {
  import draw: *
  // 1. Riduzione del carico T al CTT a sinistra (x da -5.8 a -4.2)
  line((-5.8, 0), (-3.2, 0), stroke: (dash: "dashed", thickness: 0.5pt))
  circle((-4.6, 0), radius: 0.08, fill: black, stroke: none)
  content((-4.6, 0.22), text(size: 7pt)[CTT])

  // Forza T rossa eccentrica e forza T azzurra sul CTT
  line((-5.5, 0), (-5.5, -1.2), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-5.35, -0.65), text(size: 7pt, fill: red)[$T$], anchor: "west")
  line((-4.6, 0), (-4.6, -1.2), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 1.6pt))
  content((-4.45, -0.65), text(size: 7pt, fill: rgb("#3182ce"))[$T$], anchor: "west")

  line((-5.5, -1.35), (-4.6, -1.35), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-5.05, -1.3), text(size: 7pt)[$L$], anchor: "south")

  // Momento M = T L (arco verde antiorario)
  arc((-4.6, 0.05), start: -30deg, stop: 165deg, radius: 0.42, anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 1.6pt))
  content((-4.6, 0.72), text(size: 7pt, fill: rgb("#1b8a3d"))[$M = T L$])

  // 2. Sezione a C con flussi di taglio (centro G in (-2.0, 0))
  line((-0.8, -1.05), (-2.8, -1.05), (-2.8, 1.05), (-0.8, 1.05), (-0.8, 0.85), (-2.6, 0.85), (-2.6, -0.85), (-0.8, -0.85), close: true, stroke: 1.1pt)
  line((-0.6, 0), (-3.4, 0), mark: (end: ">"), stroke: 0.5pt)
  line((-2.0, -1.5), (-2.0, 1.6), mark: (end: ">"), stroke: 0.5pt)
  content((-3.35, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((-1.85, 1.55), text(size: 7pt)[$y$], anchor: "west")
  content((-2.15, 0.18), text(size: 7pt)[$G$])

  // Frecce blu del flusso di taglio
  line((-1.0, 0.95), (-1.6, 0.95), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  line((-1.8, 0.95), (-2.4, 0.95), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  line((-2.7, 0.6), (-2.7, 0.1), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  line((-2.7, -0.1), (-2.7, -0.6), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  line((-2.4, -0.95), (-1.8, -0.95), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  line((-1.6, -0.95), (-1.0, -0.95), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 0.6pt))
  content((-3.1, 0.25), text(size: 7pt)[$tau_(x y)$])
  content((-1.15, 0.65), text(size: 7pt)[$tau_(x z)$])
  content((-1.15, -0.65), text(size: 7pt)[$tau_(x z)$])

  // Segno +
  content((-0.15, 0), text(size: 7pt)[$bold(+)$])

  // 3. Sezione a C con flussi di torsione (centro G in (1.7, 0))
  line((2.9, -1.05), (0.9, -1.05), (0.9, 1.05), (2.9, 1.05), (2.9, 0.85), (1.1, 0.85), (1.1, -0.85), (2.9, -0.85), close: true, stroke: 1.1pt)
  line((3.1, 0), (0.3, 0), mark: (end: ">"), stroke: 0.5pt)
  line((1.7, -1.5), (1.7, 1.6), mark: (end: ">"), stroke: 0.5pt)
  content((0.35, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((1.85, 1.55), text(size: 7pt)[$y$], anchor: "west")
  content((1.55, 0.18), text(size: 7pt)[$G$])

  // Coppie di frecce verdi opposte nello spessore per la torsione
  line((2.3, 0.99), (1.9, 0.99), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  line((1.9, 0.90), (2.3, 0.90), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  line((0.96, 0.5), (0.96, 0.15), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  line((1.04, 0.15), (1.04, 0.5), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  line((2.3, -0.90), (1.9, -0.90), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  line((1.9, -0.99), (2.3, -0.99), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.6pt))
  content((0.6, 0.25), text(size: 7pt)[$tau_(x y)$])
  content((2.55, 0.65), text(size: 7pt)[$tau_(x z)$])
  content((2.55, -0.65), text(size: 7pt)[$tau_(x z)$])

  // Ingrandimento circolare della distribuzione di torsione nello spessore dell'ala inferiore (centro (4.3, -0.8))
  circle((4.3, -0.8), radius: 0.85, stroke: 0.7pt)
  line((2.2, -0.95), (3.65, -0.35), stroke: 0.5pt)
  line((2.1, -1.05), (3.48, -1.05), stroke: 0.5pt)
  line((3.55, -0.45), (5.05, -0.45), stroke: 0.6pt)
  line((3.55, -1.15), (5.05, -1.15), stroke: 0.6pt)
  line((4.3, -1.15), (4.3, -0.45), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.3, -0.45), (3.85, -0.45), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.7pt))
  line((4.3, -1.15), (4.75, -1.15), mark: (end: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 0.7pt))
  bezier((3.85, -0.45), (4.3, -0.8), (4.15, -0.5), (4.25, -0.65), stroke: (paint: rgb("#1b8a3d"), thickness: 0.7pt))
  bezier((4.3, -0.8), (4.75, -1.15), (4.35, -0.95), (4.45, -1.1), stroke: (paint: rgb("#1b8a3d"), thickness: 0.7pt))
  content((4.3, -0.32), text(size: 7pt)[$tau_(x z)$])
})
