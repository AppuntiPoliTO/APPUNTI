// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2135) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.78cm, {
  import draw: *
  // Sezione HEB 200 sottile con diagrammi completi sulle ali e sull'anima + frecce rosse di flusso
  line((-2.6, -1.5), (0.2, -1.5), (0.2, -1.25), (-1.12, -1.25), (-1.12, 1.25), (0.2, 1.25), (0.2, 1.5), (-2.6, 1.5), (-2.6, 1.25), (-1.28, 1.25), (-1.28, -1.25), (-2.6, -1.25), close: true, stroke: 1.2pt)

  // Frecce rosse spesse del flusso interno alle ali e all'anima
  line((-2.3, 1.38), (-1.45, 1.38), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((-0.1, 1.38), (-0.95, 1.38), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((-1.2, 0.85), (-1.2, 0.1), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((-1.45, -1.38), (-2.3, -1.38), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))
  line((-0.95, -1.38), (-0.1, -1.38), mark: (end: ">"), stroke: (paint: red, thickness: 1.5pt))

  // Doppio triangolo superiore per tau_xz sull'ala superiore
  line((-2.6, 1.75), (0.2, 1.75), (-1.2, 2.35), close: true, fill: luma(200), stroke: (paint: blue, thickness: 0.9pt))
  line((-2.1, 1.75), (-2.1, 1.96), stroke: 0.4pt)
  line((-1.65, 1.75), (-1.65, 2.15), stroke: 0.4pt)
  line((-1.2, 1.75), (-1.2, 2.35), stroke: 0.4pt)
  line((-0.75, 1.75), (-0.75, 2.15), stroke: 0.4pt)
  line((-0.3, 1.75), (-0.3, 1.96), stroke: 0.4pt)
  line((-1.2, 2.35), (-0.65, 2.35), mark: (end: ">"), stroke: 0.5pt)
  content((-0.6, 2.35), text(size: 7pt)[$tau_(x z) = 16.8 "MPa"$], anchor: "west")

  // Doppio triangolo inferiore per tau_xz sull'ala inferiore
  line((-2.6, -1.75), (0.2, -1.75), (-1.2, -2.35), close: true, fill: luma(200), stroke: (paint: blue, thickness: 0.9pt))
  line((-2.1, -1.75), (-2.1, -1.96), stroke: 0.4pt)
  line((-1.65, -1.75), (-1.65, -2.15), stroke: 0.4pt)
  line((-1.2, -1.75), (-1.2, -2.35), stroke: 0.4pt)
  line((-0.75, -1.75), (-0.75, -2.15), stroke: 0.4pt)
  line((-0.3, -1.75), (-0.3, -1.96), stroke: 0.4pt)

  // Diagramma parabolico laterale sull'anima (base a x = 1.0)
  line((0.2, 1.25), (1.0, 1.25), stroke: (dash: "dashed", thickness: 0.4pt))
  line((-1.2, 0), (3.1, 0), stroke: (dash: "dashed", thickness: 0.4pt))
  line((0.2, -1.25), (1.0, -1.25), stroke: (dash: "dashed", thickness: 0.4pt))

  line((1.0, -1.25), (1.0, 1.25), stroke: 0.7pt)
  line((1.0, 1.25), (2.55, 1.25), stroke: 0.7pt)
  line((1.0, -1.25), (2.55, -1.25), stroke: 0.7pt)
  bezier((2.55, 1.25), (2.78, 0), (2.70, 0.85), (2.78, 0.4), stroke: (paint: blue, thickness: 1.1pt))
  bezier((2.78, 0), (2.55, -1.25), (2.78, -0.4), (2.70, -0.85), stroke: (paint: blue, thickness: 1.1pt))

  line((1.0, 0.9), (2.64, 0.9), stroke: 0.4pt)
  line((1.0, 0.55), (2.72, 0.55), stroke: 0.4pt)
  line((1.0, 0.25), (2.76, 0.25), stroke: 0.4pt)
  line((1.0, 0.0), (2.78, 0.0), stroke: 0.4pt)
  line((1.0, -0.25), (2.76, -0.25), stroke: 0.4pt)
  line((1.0, -0.55), (2.72, -0.55), stroke: 0.4pt)
  line((1.0, -0.9), (2.64, -0.9), stroke: 0.4pt)

  line((2.55, 1.25), (2.9, 1.55), mark: (end: ">"), stroke: 0.5pt)
  content((2.95, 1.6), text(size: 7pt)[$tau_(x y, b) = 55.9 "MPa"$], anchor: "west")

  line((2.78, 0), (3.1, -0.3), mark: (end: ">"), stroke: 0.5pt)
  content((3.15, -0.35), text(size: 7pt)[$tau_(x y, c) = 62.5 "MPa"$], anchor: "west")
})
