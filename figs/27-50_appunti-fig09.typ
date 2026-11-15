// Figura estratta da 27-50_appunti.typ (riga 725) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: Materiale Fragile ---
  line((0, 0), (2.8, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((2.8, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((-0.2, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((0, 0), (0.35, 2.7), stroke: 1.1pt)
  line((0.27, 2.62), (0.43, 2.78), stroke: 0.8pt)
  line((0.27, 2.78), (0.43, 2.62), stroke: 0.8pt)

  content((1.4, -0.7), text(size: 7pt)[*Fragile*: decoesione frontale\ (tensioni normali)], anchor: "north")

  // --- PANNELLO 2: Materiale Duttile (senza snervamento evidente) ---
  line((4.2, 0), (7.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((4.2, 0), (4.2, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((7.6, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((4.0, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((4.2, 0), (4.5, 2.1), stroke: 1.1pt)
  bezier((4.5, 2.1), (6.0, 2.85), (4.8, 2.65), (5.4, 2.85), stroke: 1.1pt)
  bezier((6.0, 2.85), (7.1, 2.35), (6.5, 2.85), (6.85, 2.6), stroke: 1.1pt)

  content((5.9, -0.7), text(size: 7pt)[*Duttile*: scorrimento continuo\ (tensioni tangenziali)], anchor: "north")

  // --- PANNELLO 3: Materiale Duttile (con snervamento evidente) ---
  line((8.8, 0), (12.4, 0), mark: (end: ">"), stroke: 0.8pt)
  line((8.8, 0), (8.8, 3.2), mark: (end: ">"), stroke: 0.8pt)
  content((12.4, -0.2), text(size: 7pt)[$e$], anchor: "north")
  content((8.6, 3.2), text(size: 7pt)[$R$], anchor: "east")

  line((8.8, 0), (9.1, 1.5), stroke: 1.1pt)
  bezier((9.1, 1.5), (9.3, 1.5), (9.15, 1.7), (9.25, 1.3), stroke: 1.1pt)
  bezier((9.3, 1.5), (9.5, 1.5), (9.35, 1.7), (9.45, 1.3), stroke: 1.1pt)
  bezier((9.5, 1.5), (9.7, 1.5), (9.55, 1.7), (9.65, 1.3), stroke: 1.1pt)
  bezier((9.7, 1.5), (11.0, 2.85), (10.0, 2.55), (10.5, 2.85), stroke: 1.1pt)
  bezier((11.0, 2.85), (12.0, 2.35), (11.4, 2.85), (11.75, 2.6), stroke: 1.1pt)

  content((10.6, -0.7), text(size: 7pt)[*Duttile*: con snervamento\ evidente e strizione], anchor: "north")
})
