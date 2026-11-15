// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1342) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.8cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Concio dx soggetto a Tz e My ---
  rect((0, -1.4), (1.4, 1.4), stroke: 0.7pt)
  line((0, 1.55), (0, 1.95), stroke: 0.5pt)
  line((1.4, 1.55), (1.4, 1.95), stroke: 0.5pt)
  line((0.4, 1.75), (0, 1.75), mark: (end: ">"), stroke: 0.6pt)
  line((1.0, 1.75), (1.4, 1.75), mark: (end: ">"), stroke: 0.6pt)
  content((0.7, 1.75), text(size: 7pt)[$d x$])

  // Terna al centro (0.7, -0.1) con y entrante (croce)
  line((0.7, -0.1), (1.3, -0.1), stroke: 0.5pt)
  line((0.7, -0.1), (0.7, 0.55), stroke: 0.5pt)
  circle((0.7, -0.1), radius: 0.18, fill: white, stroke: 0.5pt)
  line((0.57, -0.23), (0.83, 0.03), stroke: 0.5pt)
  line((0.57, 0.03), (0.83, -0.23), stroke: 0.5pt)
  content((0.85, 0.45), text(size: 7pt)[$z$], anchor: "west")
  content((0.42, -0.15), text(size: 7pt)[$y$], anchor: "east")
  content((1.2, -0.25), text(size: 7pt)[$x$], anchor: "north")

  // Tz e My a sinistra e a destra
  line((-0.25, 0.1), (-0.25, -1.25), mark: (end: ">"), stroke: 1pt)
  content((-0.38, -1.2), text(size: 7pt)[$T_z$], anchor: "east")
  arc((-0.6, 0), start: 105deg, stop: 255deg, radius: (0.4, 0.75), anchor: "origin", mark: (start: ">"), stroke: 1pt)
  content((-1.05, 0.1), text(size: 7pt)[$M_y$], anchor: "east")

  line((1.65, -0.1), (1.65, 1.25), mark: (end: ">"), stroke: 1pt)
  content((1.8, 1.2), text(size: 7pt)[$T_z$], anchor: "west")
  arc((2.0, 0), start: -75deg, stop: 75deg, radius: (0.4, 0.75), anchor: "origin", mark: (end: ">"), stroke: 1pt)
  content((2.45, 0.1), text(size: 7pt)[$M_y + d M_y$], anchor: "west")

  // --- PANNELLO DESTRO: Tronco cilindrico con corda verticale b e flusso t_xz (centro (5.0, 0)) ---
  circle((5.0, 0), radius: 1.45, stroke: 0.7pt)
  arc((6.1, 0.3), start: -68deg, stop: 105deg, radius: 1.45, anchor: "origin", stroke: 0.7pt)
  line((4.65, 1.41), (5.75, 1.71), stroke: 0.7pt)
  line((5.5, -1.36), (6.6, -1.06), stroke: 0.7pt)

  // Corda verticale b a x = 5.45 (da y = -1.38 a +1.38) e arco destro A*
  line((5.45, -1.38), (5.45, 1.38), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  arc((5.0, 0), start: -71.9deg, stop: 71.9deg, radius: 1.45, anchor: "origin", stroke: (paint: red, thickness: 1.4pt))
  line((5.45, 1.38), (6.55, 1.68), stroke: (paint: red, dash: "densely-dotted", thickness: 0.8pt))

  content((5.25, 0.85), text(size: 7pt, fill: red)[$bold(b)$])
  content((5.8, 0.55), text(size: 7pt)[$A^*$])

  // Vettore t_xz
  line((5.05, -0.2), (5.85, -0.2), mark: (end: ">"), stroke: 1.1pt)
  content((5.3, -0.5), text(size: 7pt)[$t_(x z)$])

  // Terna
  line((4.8, -0.2), (4.1, -0.2), stroke: 0.5pt)
  line((4.8, -0.2), (4.8, 0.45), stroke: 0.5pt)
  circle((4.8, -0.2), radius: 0.18, fill: white, stroke: 0.5pt)
  circle((4.8, -0.2), radius: 0.05, fill: black, stroke: none)
  content((4.65, 0.35), text(size: 7pt)[$y$], anchor: "east")
  content((4.2, -0.35), text(size: 7pt)[$z$], anchor: "north")
  content((5.05, 0.05), text(size: 7pt)[$x$], anchor: "west")
})
