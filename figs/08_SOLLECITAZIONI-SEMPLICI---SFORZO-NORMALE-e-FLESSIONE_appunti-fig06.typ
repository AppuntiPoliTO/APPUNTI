// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 322) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.5cm, {
  import draw: *
  // Assi
  line((0, -1.1), (0, 2.0), mark: (end: ">"), stroke: 0.7pt)
  content((-0.2, 1.8), text(size: 7pt)[$y$], anchor: "east")
  line((-0.8, 0), (5.8, 0), mark: (end: ">"), stroke: 0.7pt)
  content((5.4, 0.2), text(size: 7pt)[$x$], anchor: "south")

  // Contorno indeformato a destra (tratteggiato)
  line((3.7, 0.9), (4.4, 0.9), (4.4, -0.9), stroke: (dash: "dashed", thickness: 1.1pt))

  // Contorno deformato (trapezio)
  line((0, -0.9), (4.75, -0.9), (3.65, 0.9), (0, 0.9), close: true, stroke: 1.3pt)

  // Quota u e angolo alpha_z
  line((4.4, -0.9), (4.4, -1.8), stroke: 0.6pt)
  line((4.75, -0.9), (4.75, -1.35), stroke: 0.6pt)
  line((4.4, -1.15), (4.75, -1.15), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.35, -1.15), text(size: 7pt)[$u$], anchor: "east")

  line((4.75, -0.9), (5.25, -1.72), stroke: 0.6pt)
  arc((4.4, 0.0), start: 270deg, stop: 301deg, radius: 1.65, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.85, -1.85), text(size: 7pt)[$alpha_z$], anchor: "north")
})
