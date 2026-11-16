// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1103) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Mensola AB ---
  line((0, 0), (0, 2.2), mark: (end: ">"), stroke: 0.6pt)
  content((0.15, 2.15), text(size: 7pt)[$y$], anchor: "west")
  line((0, 0), (3.8, 0), mark: (end: ">"), stroke: 0.6pt)
  content((3.75, -0.15), text(size: 7pt)[$x$], anchor: "north")

  // Asse trave
  line((0, 0), (3.0, 0), stroke: 1.5pt)
  content((-0.15, 0.35), text(size: 7pt)[$A$], anchor: "east")
  content((2.85, 0.35), text(size: 7pt)[$B$], anchor: "east")

  // Forza concentrata P in A
  line((0, 1.5), (0, 0.05), mark: (end: ">"), stroke: 1.5pt)
  content((0.12, 1.25), text(size: 7pt)[$P$], anchor: "west")

  // Incastro in B (blocco tratteggiato)
  rect((3.0, -0.65), (3.35, 0.65), fill: luma(230), stroke: 0.6pt)
  line((3.0, -0.45), (3.35, -0.1), stroke: 0.6pt)
  line((3.0, -0.15), (3.35, 0.2), stroke: 0.6pt)
  line((3.0, 0.15), (3.35, 0.5), stroke: 0.6pt)

  // Reazioni T e M in rosso
  line((3.15, -0.55), (3.15, 1.55), mark: (end: ">"), stroke: (paint: red, thickness: 1.3pt))
  content((3.0, 1.3), text(size: 7pt, fill: red)[$T$], anchor: "east")
  arc((3.3, 0), start: -65deg, stop: 65deg, radius: 0.5, anchor: "origin", mark: (start: ">"), stroke: (paint: red, thickness: 1.3pt))
  content((3.7, 0.65), text(size: 7pt, fill: red)[$M$], anchor: "west")

  // Quota L
  line((0, 0), (0, -1.15), stroke: 0.5pt)
  line((3.0, -0.65), (3.0, -1.15), stroke: 0.5pt)
  line((0, -1.0), (3.0, -1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.5, -0.95), text(size: 7pt)[$L$], anchor: "south")

  // --- PANNELLO DESTRO: Sezione quadrata b x h (centro (5.2, 0)) ---
  rect((4.6, -0.6), (5.8, 0.6), fill: luma(220), stroke: 0.8pt)
  line((6.0, 0), (4.2, 0), mark: (end: ">"), stroke: 0.6pt)
  content((4.25, -0.15), text(size: 7pt)[$z$], anchor: "north")
  line((5.2, -0.85), (5.2, 1.25), mark: (end: ">"), stroke: 0.6pt)
  content((5.35, 1.25), text(size: 7pt)[$y$], anchor: "west")
  content((6.0, 0), text(size: 7pt)[$h$], anchor: "west")
  content((5.2, -1.05), text(size: 7pt)[$b$], anchor: "north")
})
