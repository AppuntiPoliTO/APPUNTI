// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 338) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.78cm, {
  import draw: *
  // --- PANNELLO 1: Sezione piena (centro (0,0), R = 1.15) ---
  circle((0, 0), radius: 1.15, fill: luma(230), stroke: 1pt)
  line((-1.4, 0), (1.4, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0, -1.4), (0, 1.4), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Quota D
  line((-1.15, 0), (-1.15, -1.85), stroke: 0.5pt)
  line((1.15, 0), (1.15, -1.85), stroke: 0.5pt)
  line((-1.15, -1.7), (1.15, -1.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0, -1.65), text(size: 7pt)[$D$], anchor: "south")

  // Diagramma a farfalla sezione piena (x = 2.0)
  line((2.0, -1.15), (2.0, 1.15), stroke: 0.7pt)
  line((2.0, 0), (1.25, 1.15), (2.0, 1.15), close: true, fill: luma(235), stroke: 0.7pt)
  line((2.0, 0), (2.75, -1.15), (2.0, -1.15), close: true, fill: luma(235), stroke: 0.7pt)
  line((1.45, 0.85), (2.0, 0.85), stroke: 0.4pt)
  line((1.65, 0.55), (2.0, 0.55), stroke: 0.4pt)
  line((1.84, 0.25), (2.0, 0.25), stroke: 0.4pt)
  line((2.0, -0.25), (2.16, -0.25), stroke: 0.4pt)
  line((2.0, -0.55), (2.35, -0.55), stroke: 0.4pt)
  line((2.0, -0.85), (2.55, -0.85), stroke: 0.4pt)
  content((2.45, -1.25), text(size: 7pt)[$tau_"max"$], anchor: "north")

  // --- PANNELLO 2: Sezione cava (centro (4.6,0), R = 1.15, r = 0.62) ---
  circle((4.6, 0), radius: 1.15, fill: luma(230), stroke: 1pt)
  circle((4.6, 0), radius: 0.62, fill: white, stroke: 1pt)
  line((3.2, 0), (6.0, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.6, -1.4), (4.6, 1.4), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Quote d e D
  line((3.98, 0), (3.98, -1.55), stroke: 0.5pt)
  line((5.22, 0), (5.22, -1.55), stroke: 0.5pt)
  line((3.98, -1.42), (5.22, -1.42), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.6, -1.38), text(size: 7pt)[$d$], anchor: "south")

  line((3.45, 0), (3.45, -2.05), stroke: 0.5pt)
  line((5.75, 0), (5.75, -2.05), stroke: 0.5pt)
  line((3.45, -1.9), (5.75, -1.9), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.6, -1.85), text(size: 7pt)[$D$], anchor: "south")

  // Proiezioni verso diagramma cavo (x = 6.6)
  line((4.6, 1.15), (6.6, 1.15), stroke: 0.4pt)
  line((4.6, 0.62), (6.6, 0.62), stroke: 0.4pt)

  // Diagramma trapezio sezione cava
  line((6.6, -1.15), (6.6, 1.15), stroke: (dash: "dashed", thickness: 0.6pt))
  line((5.85, 1.15), (7.35, -1.15), stroke: (dash: "dashed", thickness: 0.6pt))
  line((6.20, 0.62), (5.85, 1.15), (6.6, 1.15), (6.6, 0.62), close: true, fill: luma(235), stroke: 0.7pt)
  line((6.6, -0.62), (7.00, -0.62), (7.35, -1.15), (6.6, -1.15), close: true, fill: luma(235), stroke: 0.7pt)
  line((6.02, 0.88), (6.6, 0.88), stroke: 0.4pt)
  line((6.6, -0.88), (7.18, -0.88), stroke: 0.4pt)
})
