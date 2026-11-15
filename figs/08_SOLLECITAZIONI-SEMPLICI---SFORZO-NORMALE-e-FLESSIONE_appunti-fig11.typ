// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 600) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.4cm, {
  import draw: *
  // Concio di trave
  rect((1.0, -0.55), (4.2, 0.55), stroke: 1pt)
  line((0.4, 0), (5.4, 0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((5.35, -0.2), text(size: 7pt)[$x$], anchor: "north")
  line((1.0, 0), (1.0, 1.5), mark: (end: ">"), stroke: 0.7pt)
  content((0.85, 1.45), text(size: 7pt)[$y$], anchor: "east")

  // Segni facce concio
  content((1.2, 0.35), text(size: 7pt)[$-$])
  content((3.95, 0.35), text(size: 7pt)[$+$])

  // Sforzi normali N
  line((1.0, 0), (0.0, 0), mark: (end: ">"), stroke: 1.2pt)
  content((0.0, -0.2), text(size: 7pt)[$N$], anchor: "north")
  line((4.2, 0), (5.1, 0), mark: (end: ">"), stroke: 1.2pt)
  content((5.0, -0.2), text(size: 7pt)[$N$], anchor: "north")

  // Tagli T
  line((1.0, 0), (1.0, 1.15), mark: (end: ">"), stroke: 1.2pt)
  content((1.15, 1.1), text(size: 7pt)[$T$], anchor: "west")
  line((4.2, 0), (4.2, -1.15), mark: (end: ">"), stroke: 1.2pt)
  content((4.35, -0.95), text(size: 7pt)[$T$], anchor: "west")

  // Momenti flettenti M_f
  arc((0.55, 0.0), start: 60deg, stop: 300deg, radius: 0.32, anchor: "origin", mark: (start: ">"), stroke: 1.2pt)
  content((0.35, 0.45), text(size: 7pt)[$M_f$], anchor: "south")
  arc((4.65, 0.0), start: -120deg, stop: 120deg, radius: 0.32, anchor: "origin", mark: (end: ">"), stroke: 1.2pt)
  content((4.85, 0.45), text(size: 7pt)[$M_f$], anchor: "south")
})
