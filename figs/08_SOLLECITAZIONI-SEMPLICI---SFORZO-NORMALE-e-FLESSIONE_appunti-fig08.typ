// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 424) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.2cm, {
  import draw: *
  // Assi
  line((0, -1.2), (0, 1.8), mark: (end: ">"), stroke: 0.7pt)
  content((-0.2, 1.65), text(size: 7pt)[$y$], anchor: "east")
  line((0, 0), (6.4, 0), mark: (end: ">"), stroke: 0.7pt)
  content((6.1, -0.35), text(size: 7pt)[$x$], anchor: "north")

  // Trave
  rect((0, -0.95), (4.3, 0.95), stroke: 1.5pt)

  // Diagramma a farfalla (in rosso)
  line((3.2, 0.95), (5.4, -0.95), stroke: (paint: red, thickness: 0.9pt))
  // Fibre superiori compresse (frecce verso sinistra)
  line((4.3, 0.95), (3.2, 0.95), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, 0.63), (3.57, 0.63), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, 0.32), (3.93, 0.32), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  // Fibre inferiori tese (frecce verso destra)
  line((4.3, -0.32), (4.67, -0.32), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, -0.63), (5.03, -0.63), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))
  line((4.3, -0.95), (5.4, -0.95), mark: (end: ">"), stroke: (paint: red, thickness: 0.8pt))

  // Formula
  content((5.2, 0.65), text(size: 11pt, fill: red)[$sigma_(x x) = - M_z / I_z dot y$], anchor: "west")
})
