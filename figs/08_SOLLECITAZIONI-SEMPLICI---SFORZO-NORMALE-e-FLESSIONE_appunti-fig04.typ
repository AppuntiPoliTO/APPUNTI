// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 198) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 2cm, {
  import draw: *
  // --- Pannello Sinistro: Cilindro 3D e piano pi ---
  // Piano di sollecitazione pi (parallelogramma tratteggiato/sottile)
  line((-0.8, -1.4), (3.8, -1.4), (5.2, 1.3), (0.6, 1.3), close: true, stroke: (dash: "dashed", thickness: 0.6pt))
  content((5.1, -1.1), text(size: 7pt)[$pi$], anchor: "west")

  // Cilindro: base sinistra
  circle((0.3, 0.0), radius: (0.35, 0.95), stroke: 1.1pt)
  // Sezione centrale S ombreggiata
  circle((2.2, 0.0), radius: (0.35, 0.95), fill: rgb(220, 235, 250), stroke: 0.8pt)
  // Cilindro: base destra
  circle((4.1, 0.0), radius: (0.35, 0.95), stroke: 1.1pt)
  // Generatrici superiore e inferiore
  line((0.3, 0.95), (4.1, 0.95), stroke: 1.2pt)
  line((0.3, -0.95), (4.1, -0.95), stroke: 1.2pt)

  // Assi sul cilindro
  line((-0.4, 0.0), (5.1, 0.0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((5.0, -0.2), text(size: 7pt)[$x$], anchor: "north")
  line((2.2, -1.2), (2.2, 1.45), mark: (end: ">"), stroke: 0.7pt)
  content((2.05, 1.35), text(size: 7pt)[$y$], anchor: "east")
  line((2.9, 0.95), (1.3, -1.2), mark: (end: ">"), stroke: 0.7pt)
  content((1.4, -1.15), text(size: 7pt)[$z$], anchor: "west")

  // Indicatore sezione S
  line((2.6, 1.35), (2.35, 0.75), mark: (end: ">"), stroke: 0.6pt)
  content((2.65, 1.35), text(size: 7pt)[$S$], anchor: "west")

  // Momenti flettenti M_f agli estremi
  arc((-0.15, 0.0), start: 120deg, stop: 240deg, radius: 0.55, anchor: "origin", mark: (start: ">"), stroke: 1pt)
  content((-0.55, 0.45), text(size: 7pt)[$M_f$], anchor: "east")
  arc((4.55, 0.0), start: -60deg, stop: 60deg, radius: 0.55, anchor: "origin", mark: (end: ">"), stroke: 1pt)
  content((4.95, 0.45), text(size: 7pt)[$M_f$], anchor: "west")

  // --- Pannello Destro: Sezione frontale ---
  circle((6.9, 0.0), radius: 0.95, fill: rgb(220, 235, 250), stroke: 0.9pt)
  line((6.9, -1.25), (6.9, 1.45), mark: (end: ">"), stroke: 0.7pt)
  content((6.75, 1.35), text(size: 7pt)[$y$], anchor: "east")
  line((8.1, 0.0), (5.5, 0.0), mark: (end: ">"), stroke: 0.7pt)
  content((5.55, -0.25), text(size: 7pt)[$n = z$], anchor: "north")
})
