// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2203) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.52cm, {
  import draw: *
  // --- PANNELLO 1: Sforzo normale baricentrico Nx (x da -5.5 a -2.5) ---
  line((-5.2, -0.4), (-5.2, 1.5), mark: (end: ">"), stroke: 0.6pt)
  content((-5.35, 1.45), text(size: 7pt)[$y$], anchor: "east")
  line((-5.2, -0.4), (-5.85, -0.95), mark: (end: ">"), stroke: 0.6pt)
  content((-5.7, -1.05), text(size: 7pt)[$z$])
  line((-5.2, -0.4), (-1.9, -0.4), mark: (end: ">"), stroke: 0.6pt)
  content((-1.95, -0.15), text(size: 7pt)[$x$])

  // Solido cilindrico generico
  line((-4.85, 0.8), (-2.85, 0.8), stroke: 1.1pt)
  line((-4.85, -1.1), (-2.85, -1.1), stroke: 1.1pt)
  bezier((-4.85, 0.8), (-4.85, -1.1), (-5.5, 0.4), (-5.3, -0.7), stroke: 1.1pt)
  bezier((-2.85, 0.8), (-2.85, -1.1), (-3.5, 0.4), (-3.3, -0.7), stroke: 1.1pt)
  bezier((-2.85, 0.8), (-2.85, -1.1), (-2.2, 0.5), (-2.4, -0.6), stroke: 1.1pt)

  // Elemento dA con sigma_xx e forza Nx in G
  line((-3.05, 0.35), (-2.85, 0.45), (-2.85, 0.65), (-3.05, 0.55), close: true, stroke: 0.5pt)
  line((-2.95, 0.5), (-2.45, 0.5), mark: (end: ">"), stroke: (paint: blue, thickness: 0.8pt))
  content((-2.35, 0.65), text(size: 7pt)[$sigma_(x x)$], anchor: "west")
  content((-3.05, 0.15), text(size: 7pt)[$"d"A$])

  line((-3.05, -0.4), (-2.15, -0.4), mark: (end: ">"), stroke: (paint: red, thickness: 1.6pt))
  content((-3.0, -0.65), text(size: 7pt)[$G$])
  content((-2.15, -0.75), text(size: 7pt, fill: red)[$N_x$])

  // --- PANNELLO 2: Taglio centrato in G = C.T. (centro (0.5, 0)) ---
  rect((-0.4, -1.3), (1.4, 1.3), stroke: 1.2pt)
  line((1.7, 0), (-1.1, 0), mark: (end: ">"), stroke: 0.6pt)
  content((-1.05, -0.2), text(size: 7pt)[$z$], anchor: "north")
  line((0.5, -1.5), (0.5, 1.75), mark: (end: ">"), stroke: 0.6pt)
  content((0.65, 1.7), text(size: 7pt)[$y$], anchor: "west")

  content((0.5, 0.2), text(size: 7pt)[$G = "C.T."$])
  line((0.5, 0), (0.5, -1.15), mark: (end: ">"), stroke: (paint: red, thickness: 1.8pt))
  content((0.35, -0.65), text(size: 7pt, fill: red)[$T_y$], anchor: "east")

  // --- PANNELLO 3: Taglio eccentrico di braccio L e trasporto in G = C.T. (centro (4.2, 0)) ---
  rect((3.3, -1.3), (5.1, 1.3), stroke: 1.2pt)
  line((5.4, 0), (2.6, 0), mark: (end: ">"), stroke: 0.6pt)
  content((2.65, -0.2), text(size: 7pt)[$z$], anchor: "north")
  line((4.2, -1.5), (4.2, 1.75), mark: (end: ">"), stroke: 0.6pt)
  content((4.35, 1.7), text(size: 7pt)[$y$], anchor: "west")

  content((4.2, 0.18), text(size: 7pt)[$G = "C.T."$])

  // Forza Ty eccentrica (rossa) a x = 4.85 e linea d'azione tratteggiata
  line((4.85, 0), (4.85, 1.15), stroke: (paint: red, dash: "dashed", thickness: 0.6pt))
  line((4.85, 0), (4.85, -1.15), mark: (end: ">"), stroke: (paint: red, thickness: 1.8pt))
  content((4.75, -0.85), text(size: 7pt, fill: red)[$T_y$], anchor: "east")

  // Forza Ty trasportata sul C.T. (azzurra)
  line((4.2, 0), (4.2, -1.15), mark: (end: ">"), stroke: (paint: rgb("#3182ce"), thickness: 1.8pt))
  content((4.05, -0.85), text(size: 7pt, fill: rgb("#3182ce"))[$T_y$], anchor: "east")

  // Quota eccentricita' L
  line((4.2, -0.45), (4.85, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.52, -0.4), text(size: 7pt)[$L$], anchor: "south")

  // Momento di trasporto Mx = Ty L (arco verde orario)
  arc((4.2, 0.25), start: 35deg, stop: 170deg, radius: 0.48, anchor: "origin", mark: (start: ">"), stroke: (paint: rgb("#1b8a3d"), thickness: 1.8pt))
  content((4.2, 0.98), text(size: 7pt, fill: rgb("#1b8a3d"))[$M_x = T_y L$])
})
