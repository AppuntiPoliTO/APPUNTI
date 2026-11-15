// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 2302) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.42cm, {
  import draw: *
  // 1. Sezione a C (centro G in (-4.2, 0))
  line((-3.2, -1.2), (-5.2, -1.2), (-5.2, 1.2), (-3.2, 1.2), (-3.2, 1.0), (-5.0, 1.0), (-5.0, -1.0), (-3.2, -1.0), close: true, stroke: 1.2pt)
  line((-3.0, 0), (-5.8, 0), mark: (end: ">"), stroke: 0.6pt)
  line((-5.8, 0), (-6.5, 0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-4.4, -1.5), (-4.4, 1.7), mark: (end: ">"), stroke: 0.6pt)
  content((-5.75, -0.2), text(size: 7pt)[$z$], anchor: "north")
  content((-4.25, 1.65), text(size: 7pt)[$y$], anchor: "west")
  content((-4.58, 0.2), text(size: 7pt)[$G$])
  circle((-6.15, 0), radius: 0.09, fill: rgb("#2b6cb0"), stroke: none)
  content((-6.15, 0.25), text(size: 7pt)[*CTT*])

  // 2. Sezione a doppio T (centro G in (0, 0))
  line((-1.4, -1.4), (1.4, -1.4), (1.4, -1.18), (0.11, -1.18), (0.11, 1.18), (1.4, 1.18), (1.4, 1.4), (-1.4, 1.4), (-1.4, 1.18), (-0.11, 1.18), (-0.11, -1.18), (-1.4, -1.18), close: true, stroke: 1.2pt)
  line((0.8, 0), (-1.4, 0), mark: (end: ">"), stroke: 0.6pt)
  line((0, -1.6), (0, 1.85), mark: (end: ">"), stroke: 0.6pt)
  content((-1.35, 0.2), text(size: 7pt)[$z$])
  content((0.15, 1.8), text(size: 7pt)[$y$], anchor: "west")
  circle((0, 0), radius: 0.09, fill: rgb("#2b6cb0"), stroke: none)
  content((0.15, 0.2), text(size: 7pt)[*CTT=G*], anchor: "west")

  // 3. Sezione a T rovesciata (centro G in (4.5, -0.75))
  line((3.1, -1.2), (5.9, -1.2), (5.9, -0.98), (4.61, -0.98), (4.61, 1.35), (4.39, 1.35), (4.39, -0.98), (3.1, -0.98), close: true, stroke: 1.2pt)
  line((3.1, -1.09), (5.9, -1.09), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.5, -0.75), (3.25, -0.75), mark: (end: ">"), stroke: 0.6pt)
  line((4.5, -1.5), (4.5, 1.85), mark: (end: ">"), stroke: 0.6pt)
  content((3.2, -0.55), text(size: 7pt)[$z$])
  content((4.65, 1.8), text(size: 7pt)[$y$], anchor: "west")
  content((4.75, -0.55), text(size: 7pt)[$G$])
  circle((4.5, -1.09), radius: 0.09, fill: rgb("#2b6cb0"), stroke: none)
  content((4.5, -1.38), text(size: 7pt)[*CTT*])
})
