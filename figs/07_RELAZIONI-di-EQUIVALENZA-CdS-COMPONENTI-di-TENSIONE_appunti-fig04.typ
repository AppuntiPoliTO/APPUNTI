// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 250) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.4cm, {
  import draw: *
  // Terna di riferimento a sinistra
  line((-2.2, 0.4), (-2.2, 1.5), mark: (end: ">"), stroke: 0.7pt)
  content((-2.0, 1.45), text(size: 7pt)[$z$])
  line((-2.2, 0.4), (-1.1, 0.4), mark: (end: ">"), stroke: 0.7pt)
  content((-1.15, 0.65), text(size: 7pt)[$y$])
  line((-2.2, 0.4), (-2.75, -0.15), mark: (end: ">"), stroke: 0.7pt)
  content((-2.45, -0.2), text(size: 7pt)[$x$])

  // Cubetto elementare: faccia frontale (normale x): [0, 2.4] x [0, 2.2]
  rect((0, 0), (2.4, 2.2), stroke: 1.0pt)
  // Faccia superiore (normale z) e faccia destra (normale y)
  line((0, 2.2), (0.9, 2.95), (3.3, 2.95), (2.4, 2.2), stroke: 1.0pt)
  line((3.3, 2.95), (3.3, 0.75), (2.4, 0), stroke: 1.0pt)

  // Diagonali tratteggiate interne passanti per il centro P(1.65, 1.475)
  line((0, 2.2), (3.3, 0.75), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.4, 2.2), (0.9, 0.75), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 0), (3.3, 2.95), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.2, 2.95), (2.1, 0), stroke: (dash: "dashed", thickness: 0.6pt))
  circle((1.65, 1.475), radius: 0.08, fill: black)
  content((1.38, 1.48), text(size: 7pt)[$P$])

  // Componenti sulla faccia x (centro (0.75, 0.65))
  line((0.75, 0.65), (0.15, 0.05), mark: (end: ">"), stroke: 0.9pt)
  content((-0.15, -0.05), text(size: 7pt)[$sigma_(x x)$])
  line((0.75, 0.65), (1.55, 0.65), mark: (end: ">"), stroke: 0.9pt)
  content((1.4, 0.35), text(size: 7pt)[$tau_(x y)$])
  line((0.75, 0.65), (0.75, 1.45), mark: (end: ">"), stroke: 0.9pt)
  content((0.45, 1.25), text(size: 7pt)[$tau_(x z)$])

  // Componenti sulla faccia y (centro (2.85, 1.35))
  line((2.85, 1.35), (3.65, 1.35), mark: (end: ">"), stroke: 0.9pt)
  content((3.7, 1.05), text(size: 7pt)[$sigma_(y y)$])
  line((2.85, 1.35), (2.25, 0.75), mark: (end: ">"), stroke: 0.9pt)
  content((2.6, 0.65), text(size: 7pt)[$tau_(y x)$])
  line((2.85, 1.35), (2.85, 2.15), mark: (end: ">"), stroke: 0.9pt)
  content((2.65, 2.1), text(size: 7pt)[$tau_(y z)$])

  // Componenti sulla faccia z (centro (1.65, 2.58))
  line((1.65, 2.58), (1.65, 3.38), mark: (end: ">"), stroke: 0.9pt)
  content((1.3, 3.25), text(size: 7pt)[$sigma_(z z)$])
  line((1.65, 2.58), (2.45, 2.58), mark: (end: ">"), stroke: 0.9pt)
  content((2.25, 2.35), text(size: 7pt)[$tau_(z y)$])
  line((1.65, 2.58), (1.05, 1.98), mark: (end: ">"), stroke: 0.9pt)
  content((1.4, 1.95), text(size: 7pt)[$tau_(z x)$])
})
