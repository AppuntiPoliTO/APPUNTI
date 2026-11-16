// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 51) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Assi coordinati
  line((0, -1.2), (0, 2.0), mark: (end: ">"), stroke: 0.7pt)
  content((-0.25, 1.85), text(size: 7pt)[$y$], anchor: "east")
  line((0, 0), (6.8, 0), mark: (end: ">"), stroke: 0.7pt)
  content((6.5, 0.25), text(size: 7pt)[$x$], anchor: "south")

  // Configurazione indeformata (tratteggiata)
  rect((0, -0.95), (4.6, 0.95), stroke: (dash: "dashed", thickness: 1.2pt))

  // Configurazione deformata (continua)
  rect((0, -0.78), (5.7, 0.78), stroke: 1.2pt)

  // Quota spostamento u
  line((4.6, -1.25), (5.7, -1.25), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((5.15, -1.4), text(size: 7pt)[$u$], anchor: "north")
})
