// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 247) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.8cm, {
  import draw: *
  // --- Pannello Sinistro: Trave inflessa divisa in conci 1 e 2 ---
  // Centro di curvatura in (0, 5.2)
  // Bordo superiore (r = 3.8), linea d'asse (r = 4.5), bordo inferiore (r = 5.2)
  // Metà sinistra (concio 1, tratto continuo: 242deg .. 270deg)
  arc((0, 5.2), start: 242deg, stop: 270deg, radius: 3.8, anchor: "origin", stroke: 1.2pt)
  arc((0, 5.2), start: 242deg, stop: 270deg, radius: 5.2, anchor: "origin", stroke: 1.2pt)
  line((-1.78, 1.84), (-2.44, 0.61), stroke: 1.2pt)

  // Metà destra (concio 2, tratto tratteggiato: 270deg .. 298deg)
  arc((0, 5.2), start: 270deg, stop: 298deg, radius: 3.8, anchor: "origin", stroke: (dash: "dashed", thickness: 0.9pt))
  arc((0, 5.2), start: 270deg, stop: 298deg, radius: 5.2, anchor: "origin", stroke: (dash: "dashed", thickness: 0.9pt))
  line((1.78, 1.84), (2.44, 0.61), stroke: (dash: "dashed", thickness: 0.9pt))

  // Linea elastica (tratto-punto)
  arc((0, 5.2), start: 238deg, stop: 302deg, radius: 4.5, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))

  // Assi x e y
  line((-2.7, 0.7), (2.8, 0.7), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((2.75, 0.45), text(size: 7pt)[$x$], anchor: "north")
  line((0.1, -0.3), (-0.15, 2.2), mark: (end: ">"), stroke: 0.7pt)
  content((-0.3, 2.1), text(size: 7pt)[$y$], anchor: "east")

  // Forze interne elementari sulla sezione di separazione
  line((-0.07, 1.25), (-0.55, 1.2), mark: (end: ">"), stroke: 0.7pt)
  content((-0.55, 1.05), text(size: 7pt)[$Delta F_3$], anchor: "north")
  line((0.03, 0.4), (0.35, 0.43), mark: (end: ">"), stroke: 0.7pt)
  content((0.4, 0.55), text(size: 7pt)[$Delta F_2$], anchor: "west")
  line((0.06, 0.15), (0.55, 0.2), mark: (end: ">"), stroke: 0.7pt)
  content((0.6, 0.2), text(size: 7pt)[$Delta F_1$], anchor: "west")

  // Momenti M_f agli estremi
  arc((-2.2, 1.3), start: 120deg, stop: 215deg, radius: 0.55, anchor: "origin", mark: (start: ">"), stroke: 1pt)
  content((-2.6, 1.85), text(size: 7pt)[$M_f$], anchor: "east")
  arc((2.2, 1.3), start: -35deg, stop: 60deg, radius: 0.55, anchor: "origin", mark: (end: ">"), stroke: 1pt)
  content((2.6, 1.85), text(size: 7pt)[$M_f$], anchor: "west")

  // Etichette conci 1 e 2
  circle((-1.5, -0.35), radius: 0.22, stroke: 0.7pt)
  content((-1.5, -0.35), text(size: 7pt)[$1$])
  line((-1.32, -0.2), (-0.9, 0.35), stroke: 0.5pt)

  circle((1.5, -0.35), radius: 0.22, stroke: 0.7pt)
  content((1.5, -0.35), text(size: 7pt)[$2$])
  line((1.32, -0.2), (0.9, 0.35), stroke: 0.5pt)

  // --- Pannello Destro: Sezione circolare con aree elementari ---
  circle((4.7, 0.7), radius: 0.85, fill: luma(230), stroke: 1pt)
  line((5.8, 0.7), (3.4, 0.7), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((3.45, 0.45), text(size: 7pt)[$z$], anchor: "north")
  line((4.7, -0.35), (4.7, 1.85), mark: (end: ">"), stroke: 0.7pt)
  content((4.55, 1.75), text(size: 7pt)[$y$], anchor: "east")

  // Aree elementari Delta A_1, Delta A_2, Delta A_3
  rect((4.85, 1.15), (5.0, 1.3), stroke: 0.7pt)
  line((4.92, 1.22), (5.45, 1.55), stroke: 0.5pt)
  content((5.5, 1.6), text(size: 7pt)[$Delta A_3$], anchor: "west")

  rect((4.3, 0.15), (4.45, 0.3), stroke: 0.7pt)
  line((4.37, 0.22), (4.0, -0.15), stroke: 0.5pt)
  content((3.95, -0.2), text(size: 7pt)[$Delta A_2$], anchor: "east")

  rect((5.0, 0.3), (5.15, 0.45), stroke: 0.7pt)
  line((5.07, 0.37), (5.5, -0.05), stroke: 0.5pt)
  content((5.55, -0.1), text(size: 7pt)[$Delta A_1$], anchor: "west")
})
