// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 765) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.8cm, {
  import draw: *
  // --- Pannello Sinistro: Sezione circolare piena ---
  circle((1.3, 0.0), radius: 0.95, stroke: 1.1pt)
  line((2.5, 0.0), (0.0, 0.0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((0.15, -0.2), text(size: 7pt)[$z$], anchor: "north")
  line((1.3, -1.15), (1.3, 1.4), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((1.18, 1.3), text(size: 7pt)[$y$], anchor: "east")

  // Quota D
  line((0.35, 0.0), (0.35, -1.5), stroke: 0.5pt)
  line((2.25, 0.0), (2.25, -1.5), stroke: 0.5pt)
  line((0.35, -1.35), (2.25, -1.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.3, -1.3), text(size: 7pt)[$D$], anchor: "south")

  // Diagramma a farfalla (sezione piena)
  line((2.5, 0.95), (4.0, 0.95), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.6, 0.0), (4.0, 0.0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((2.5, -0.95), (4.0, -0.95), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.3, -0.95), (3.3, 0.95), stroke: 0.9pt)
  line((2.65, 0.95), (3.95, -0.95), stroke: 0.8pt)
  line((3.3, 0.95), (2.65, 0.95), mark: (end: ">"), stroke: 0.7pt)
  line((3.3, 0.63), (2.87, 0.63), mark: (end: ">"), stroke: 0.6pt)
  line((3.3, 0.32), (3.08, 0.32), mark: (end: ">"), stroke: 0.6pt)
  line((3.3, -0.32), (3.52, -0.32), mark: (end: ">"), stroke: 0.6pt)
  line((3.3, -0.63), (3.73, -0.63), mark: (end: ">"), stroke: 0.6pt)
  line((3.3, -0.95), (3.95, -0.95), mark: (end: ">"), stroke: 0.7pt)

  // --- Pannello Destro: Sezione circolare cava (traslato di +4.6 cm) ---
  circle((5.9, 0.0), radius: 0.95, stroke: 1.1pt)
  circle((5.9, 0.0), radius: 0.45, stroke: 1.1pt)
  line((7.1, 0.0), (4.6, 0.0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((4.75, -0.2), text(size: 7pt)[$z$], anchor: "north")
  line((5.9, -1.15), (5.9, 1.4), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  content((5.78, 1.3), text(size: 7pt)[$y$], anchor: "east")

  // Quota diametro interno d e diametro esterno D
  line((5.58, 0.32), (6.22, -0.32), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((5.98, 0.15), text(size: 7pt)[$d$], anchor: "west")
  line((4.95, 0.0), (4.95, -1.5), stroke: 0.5pt)
  line((6.85, 0.0), (6.85, -1.5), stroke: 0.5pt)
  line((4.95, -1.35), (6.85, -1.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((5.9, -1.3), text(size: 7pt)[$D$], anchor: "south")

  // Diagramma di tensione sulla corona circolare
  line((7.1, 0.95), (8.6, 0.95), stroke: (dash: "dashed", thickness: 0.5pt))
  line((7.2, 0.0), (8.6, 0.0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((7.1, -0.95), (8.6, -0.95), stroke: (dash: "dashed", thickness: 0.5pt))
  line((7.9, -0.95), (7.9, 0.95), stroke: 0.9pt)
  line((7.25, 0.95), (7.59, 0.45), stroke: 0.8pt)
  line((8.21, -0.45), (8.55, -0.95), stroke: 0.8pt)
  line((7.9, 0.95), (7.25, 0.95), mark: (end: ">"), stroke: 0.7pt)
  line((7.9, 0.70), (7.42, 0.70), mark: (end: ">"), stroke: 0.6pt)
  line((7.9, 0.45), (7.59, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((7.9, -0.45), (8.21, -0.45), mark: (end: ">"), stroke: 0.6pt)
  line((7.9, -0.70), (8.38, -0.70), mark: (end: ">"), stroke: 0.6pt)
  line((7.9, -0.95), (8.55, -0.95), mark: (end: ">"), stroke: 0.7pt)
})
