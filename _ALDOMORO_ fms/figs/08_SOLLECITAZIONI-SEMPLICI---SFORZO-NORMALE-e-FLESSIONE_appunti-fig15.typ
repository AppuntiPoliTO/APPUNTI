// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 852) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.6cm, {
  import draw: *
  // Parete di incastro e tratteggio
  line((1.2, -0.8), (1.2, 1.8), stroke: 1pt)
  line((1.2, 1.5), (0.9, 1.2), stroke: 0.6pt)
  line((1.2, 1.2), (0.9, 0.9), stroke: 0.6pt)
  line((1.2, 0.9), (0.9, 0.6), stroke: 0.6pt)
  line((1.2, 0.6), (0.9, 0.3), stroke: 0.6pt)
  line((1.2, 0.3), (0.9, 0.0), stroke: 0.6pt)
  line((1.2, 0.0), (0.9, -0.3), stroke: 0.6pt)
  line((1.2, -0.3), (0.9, -0.6), stroke: 0.6pt)
  line((1.2, 1.3), (1.7, 1.8), stroke: 0.6pt)
  line((1.5, 1.3), (2.0, 1.8), stroke: 0.6pt)
  line((1.8, 1.3), (2.3, 1.8), stroke: 0.6pt)

  // Trave a mensola 3D
  // Faccia anteriore (estremità libera): centro in (4.1, -0.3)
  line((3.7, -0.95), (4.5, -0.6), (4.5, 0.35), (3.7, 0.0), close: true, stroke: 1.1pt)
  // Spigoli longitudinali verso l'incastro
  line((3.7, 0.0), (1.2, 1.1), stroke: 1.1pt)
  line((4.5, 0.35), (2.0, 1.45), stroke: 1.1pt)
  line((3.7, -0.95), (1.2, 0.15), stroke: 1.1pt)
  line((1.2, 1.1), (2.0, 1.45), stroke: 1.1pt)

  // Assi coordinati
  line((1.2, 0.62), (1.2, 2.05), mark: (end: ">"), stroke: 0.8pt)
  content((1.05, 1.9), text(size: 7pt)[$y$], anchor: "east")
  line((1.2, 0.62), (0.3, 0.18), mark: (end: ">"), stroke: 0.8pt)
  content((0.55, 0.05), text(size: 7pt)[$z$], anchor: "north")
  line((1.2, 0.62), (5.6, -1.32), mark: (end: ">"), stroke: 0.8pt)
  content((5.35, -1.4), text(size: 7pt)[$x$], anchor: "north")

  // Retta parallela a z sulla sezione libera e asse di sollecitazione (blu)
  line((2.5, -1.1), (5.1, 0.2), stroke: 0.5pt)
  line((3.4, 1.65), (4.1, -0.3), stroke: (paint: blue, thickness: 1.1pt))
  content((3.3, 1.7), text(size: 7pt, fill: blue)[asse di sollecitazione], anchor: "south")

  // Carico P e scomposizione (P sin theta in azzurro, P cos theta in verde)
  line((4.1, -0.3), (4.1, -1.95), mark: (end: ">"), stroke: (paint: rgb(0, 150, 220), thickness: 1.3pt))
  content((3.95, -1.3), text(size: 7pt, fill: rgb(0, 150, 220))[$P sin theta$], anchor: "east")
  line((4.1, -1.95), (4.65, -1.68), mark: (end: ">"), stroke: (paint: rgb(0, 150, 60), thickness: 1.3pt))
  content((4.4, -1.9), text(size: 7pt, fill: rgb(0, 150, 60))[$P cos theta$], anchor: "north")
  line((4.1, -0.3), (4.65, -1.68), mark: (end: ">"), stroke: 1.4pt)
  content((4.55, -0.95), text(size: 7pt)[$P$], anchor: "west")

  // Archi angolo theta
  arc((4.1, -0.3), start: -68deg, stop: 26deg, radius: 0.5, anchor: "origin", stroke: (paint: blue, thickness: 0.9pt))
  content((4.7, -0.35), text(size: 7pt, fill: blue)[$theta$], anchor: "west")

  // Momenti all'incastro M_z (azzurro) e M_y (verde)
  arc((0.5, 0.35), start: -50deg, stop: 55deg, radius: 0.55, anchor: "origin", mark: (end: ">"), stroke: (paint: rgb(0, 150, 220), thickness: 1.8pt))
  content((0.7, 0.95), text(size: 7pt, fill: rgb(0, 150, 220))[$-P sin theta dot l = M_z$], anchor: "east")

  arc((1.35, 1.35), start: 210deg, stop: 330deg, radius: 0.65, anchor: "origin", mark: (end: ">"), stroke: (paint: rgb(0, 150, 60), thickness: 1.8pt))
  content((2.1, 1.35), text(size: 7pt, fill: rgb(0, 150, 60))[$M_y = P cos theta dot l$], anchor: "west")
})
