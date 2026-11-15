// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 91) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Assi
  line((0, -1.1), (0, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((-0.2, 1.65), text(size: 7pt)[$y$], anchor: "east")
  line((0, 0), (6.5, 0), mark: (end: ">"), stroke: 0.7pt)
  content((6.1, -0.35), text(size: 7pt)[$x$], anchor: "north")

  // Trave
  rect((0, -0.9), (4.3, 0.9), stroke: 1.5pt)

  // Distribuzione uniforme di tensione (in rosso)
  line((5.4, -0.9), (5.4, 0.9), stroke: (paint: red, thickness: 0.9pt))
  line((4.3, 0.9), (5.4, 0.9), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, 0.6), (5.4, 0.6), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, 0.3), (5.4, 0.3), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, 0.0), (5.4, 0.0), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, -0.3), (5.4, -0.3), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, -0.6), (5.4, -0.6), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, -0.9), (5.4, -0.9), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))

  // Formula
  content((5.8, 0.55), text(size: 7pt, fill: red)[$sigma_(x x) = N_x / A$], anchor: "west")
})
