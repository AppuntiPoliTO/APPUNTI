// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2358) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.78cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Tensioni tau_xz e tau_xy sulla C (G in (-1.6, 0)) ---
  line((-0.5, -1.1), (-2.3, -1.1), (-2.3, 1.1), (-0.5, 1.1), (-0.5, 0.92), (-2.12, 0.92), (-2.12, -0.92), (-0.5, -0.92), close: true, stroke: 1.2pt)
  line((-0.6, 0), (-3.6, 0), mark: (end: ">"), stroke: 0.6pt)
  line((-1.6, -1.5), (-1.6, 1.75), mark: (end: ">"), stroke: 0.6pt)
  content((-3.55, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((-1.75, 1.7), text(size: 7pt)[$y$], anchor: "east")
  content((-1.42, 0.18), text(size: 7pt)[$G$])

  circle((-3.3, 0), radius: 0.08, fill: black, stroke: none)
  content((-3.3, 0.22), text(size: 7pt)[CTT])

  // Forza Ty in G e quota dG
  line((-1.6, 0), (-1.6, -1.25), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-1.38, -0.25), text(size: 7pt, fill: red)[$T_y$], anchor: "west")
  line((-2.21, -0.6), (-1.6, -0.6), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((-1.9, -0.55), text(size: 7pt)[$d_G$], anchor: "south")

  // Diagrammi triangolari viola tau_xz sulle ali
  line((-0.5, 1.01), (-2.21, 1.65), (-2.21, 1.01), close: true, stroke: (paint: rgb("#6b46c1"), thickness: 0.7pt))
  line((-1.8, 1.01), (-1.8, 1.50), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((-1.35, 1.01), (-1.35, 1.33), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((-0.9, 1.01), (-0.9, 1.16), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  content((-0.9, 1.45), text(size: 7pt, fill: rgb("#6b46c1"))[$tau_(x z)$])

  line((-0.5, -1.01), (-2.21, -1.65), (-2.21, -1.01), close: true, stroke: (paint: rgb("#6b46c1"), thickness: 0.7pt))
  line((-1.8, -1.01), (-1.8, -1.50), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((-1.35, -1.01), (-1.35, -1.33), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  line((-0.9, -1.01), (-0.9, -1.16), stroke: (paint: rgb("#6b46c1"), thickness: 0.4pt))
  content((-0.9, -1.45), text(size: 7pt, fill: rgb("#6b46c1"))[$tau_(x z)$])

  // Diagramma parabolico blu tau_xy sull'anima (a sinistra di x = -2.3)
  line((-2.3, 0.92), (-2.85, 0.92), stroke: (paint: blue, thickness: 0.7pt))
  line((-2.3, -0.92), (-2.85, -0.92), stroke: (paint: blue, thickness: 0.7pt))
  bezier((-2.85, 0.92), (-3.05, 0), (-2.98, 0.6), (-3.05, 0.3), stroke: (paint: blue, thickness: 0.8pt))
  bezier((-3.05, 0), (-2.85, -0.92), (-3.05, -0.3), (-2.98, -0.6), stroke: (paint: blue, thickness: 0.8pt))
  line((-2.3, 0.5), (-2.99, 0.5), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.3, 0.0), (-3.05, 0.0), stroke: (paint: blue, thickness: 0.4pt))
  line((-2.3, -0.5), (-2.99, -0.5), stroke: (paint: blue, thickness: 0.4pt))
  content((-3.15, 0.75), text(size: 7pt, fill: blue)[$tau_(x y)$])

  // --- PANNELLO DESTRO: Risultanti Tz, Ty e calcolo di d (G in (2.4, 0)) ---
  line((3.5, -1.1), (1.7, -1.1), (1.7, 1.1), (3.5, 1.1), (3.5, 0.92), (1.88, 0.92), (1.88, -0.92), (3.5, -0.92), close: true, stroke: 1.2pt)
  line((3.4, 0), (0.3, 0), mark: (end: ">"), stroke: 0.6pt)
  line((2.4, -1.75), (2.4, 1.65), mark: (end: ">"), stroke: 0.6pt)
  content((0.35, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((2.25, 1.6), text(size: 7pt)[$y$], anchor: "east")
  content((2.55, 0.18), text(size: 7pt)[$G$])

  // Punto CTT e forza Ty azzurra applicata nel CTT
  circle((0.65, 0), radius: 0.08, fill: black, stroke: none)
  content((0.65, 0.22), text(size: 7pt)[CTT])
  line((0.65, 0), (0.65, -1.45), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 1.8pt))
  content((0.5, -0.75), text(size: 7pt, fill: rgb("#3182ce"))[$T_y$], anchor: "east")

  // Risultante Ty rossa nell'anima e risultanti Tz viola nelle ali
  line((1.79, 0.55), (1.79, -0.65), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((1.65, -0.25), text(size: 7pt, fill: red)[$T_y$], anchor: "east")

  line((3.15, 1.01), (2.05, 1.01), mark: (end: ">"), stroke: (paint: rgb("#6b46c1"), thickness: 1.6pt))
  content((2.7, 1.35), text(size: 7pt, fill: rgb("#6b46c1"))[$T_z$])

  line((2.05, -1.01), (3.15, -1.01), mark: (end: ">"), stroke: (paint: rgb("#6b46c1"), thickness: 1.6pt))
  content((2.7, -1.4), text(size: 7pt, fill: rgb("#6b46c1"))[$T_z$])

  // Quote dG, h e d?
  line((1.79, -0.6), (2.4, -0.6), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((2.1, -0.55), text(size: 7pt)[$d_G$], anchor: "south")

  line((3.5, 1.01), (3.85, 1.01), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.5, -1.01), (3.85, -1.01), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.75, -1.01), (3.75, 1.01), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.85, 0), text(size: 7pt)[$h$], anchor: "west")

  line((0.65, -1.55), (2.4, -1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.52, -1.50), text(size: 7pt)[$bold(d ?)$], anchor: "south")
})
