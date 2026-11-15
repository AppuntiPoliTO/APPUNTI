// Figura estratta da 27-50_appunti.typ (riga 284) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))
#let varepsilon = $epsilon$

#canvas(length: 1cm, {
  import draw: *
  // Assi cartesiani
  line((-0.3, 0), (6.2, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, -0.3), (0, 4.5), mark: (end: ">"), stroke: 0.9pt)
  content((-0.2, -0.25), text(size: 7pt)[$"O"$], anchor: "center")
  content((6.1, -0.3), text(size: 7pt)[$varepsilon$], anchor: "north")
  content((-0.3, 4.4), text(size: 7pt)[$sigma$], anchor: "east")

  // Curva tensione-deformazione
  // Tratto elastico lineare O-A
  line((0, 0), (0.55, 2.0), stroke: 1.2pt)
  // Zona di snervamento A-B (oscillazione/pianerottolo)
  bezier((0.55, 2.0), (0.95, 1.95), (0.68, 2.2), (0.82, 1.85), stroke: 1.2pt)
  // Zona di incrudimento B-C fino al massimo C(3.4, 3.5)
  bezier((0.95, 1.95), (3.4, 3.5), (1.5, 2.95), (2.5, 3.5), stroke: 1.2pt)
  // Zona di snervamento locale C-D fino a rottura D(4.8, 3.0)
  bezier((3.4, 3.5), (4.8, 3.0), (3.9, 3.5), (4.4, 3.25), stroke: 1.2pt)

  // Proiezioni dal punto di massimo C
  line((0, 3.5), (3.4, 3.5), stroke: 0.5pt)
  line((3.4, 0), (3.4, 3.5), stroke: 0.5pt)

  // Punti notevoli
  content((0.42, 2.05), text(size: 7pt)[$"A"$], anchor: "east")
  content((1.05, 1.8), text(size: 7pt)[$"B"$], anchor: "west")
  content((3.4, 3.62), text(size: 7pt)[$"C"$], anchor: "south")
  content((4.95, 3.05), text(size: 7pt)[$"D"$], anchor: "west")

  // Etichette descrittive e linee di richiamo
  line((0.28, 1.0), (-0.8, 1.05), stroke: 0.5pt)
  content((-0.9, 1.05), text(size: 7pt)[zona di elasticità], anchor: "east")

  line((0.75, 2.15), (-0.6, 2.65), stroke: 0.5pt)
  content((-0.7, 2.65), text(size: 7pt)[zona di snervamento], anchor: "east")

  line((1.8, 2.85), (1.3, 3.65), stroke: 0.5pt)
  content((1.3, 3.75), text(size: 7pt)[zona di incrudimento], anchor: "south")

  line((3.4, 3.9), (3.4, 4.3), stroke: 0.5pt)
  content((3.4, 4.35), text(size: 7pt)[strizione provino], anchor: "south")

  line((4.15, 3.4), (4.9, 3.95), stroke: 0.5pt)
  content((5.0, 3.95), text(size: 7pt)[zona di snervamento locale], anchor: "west")

  content((5.1, 2.3), text(size: 7pt)[cedimento finale del provino], anchor: "west")
})
