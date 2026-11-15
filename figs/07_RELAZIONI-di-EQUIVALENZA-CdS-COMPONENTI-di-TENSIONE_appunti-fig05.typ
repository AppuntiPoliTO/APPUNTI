// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 324) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Assi
  line((0, 0), (7.6, 0), mark: (end: ">"), stroke: 0.7pt)
  content((7.45, 0.25), text(size: 7pt)[$x$])
  line((0, 0), (0, 2.3), mark: (end: ">"), stroke: 0.7pt)
  content((-0.25, 2.15), text(size: 7pt)[$y$])
  line((0, 0), (-0.85, -0.7), mark: (end: ">"), stroke: 0.7pt)
  content((-0.6, -0.8), text(size: 7pt)[$z$])

  // Base sinistra (x=0.4)
  bezier((0.45, 1.25), (-0.35, 0.3), (-0.05, 1.2), (-0.4, 0.8), stroke: 1.2pt)
  bezier((-0.35, 0.3), (-0.2, -0.5), (-0.3, -0.1), (-0.05, -0.2), stroke: 1.2pt)
  bezier((-0.2, -0.5), (0.15, -1.25), (-0.35, -0.8), (-0.15, -1.2), stroke: 1.2pt)
  bezier((0.45, 1.25), (0.45, 0.1), (0.95, 0.9), (0.15, 0.5), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((0.45, 0.1), (0.15, -1.25), (0.85, -0.3), (0.75, -1.0), stroke: (dash: "dashed", thickness: 0.7pt))

  // Linee longitudinali cilindro completo
  line((0.45, 1.25), (6.55, 1.25), stroke: 1.2pt)
  line((0.15, -1.25), (6.25, -1.25), stroke: 1.2pt)

  // Sezione intermedia (x=3.3)
  bezier((3.45, 1.25), (2.65, 0.3), (2.95, 1.2), (2.6, 0.8), stroke: 1.2pt)
  bezier((2.65, 0.3), (2.8, -0.5), (2.7, -0.1), (2.95, -0.2), stroke: 1.2pt)
  bezier((2.8, -0.5), (3.15, -1.25), (2.65, -0.8), (2.85, -1.2), stroke: 1.2pt)
  bezier((3.45, 1.25), (3.45, 0.1), (3.95, 0.9), (3.15, 0.5), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((3.45, 0.1), (3.15, -1.25), (3.85, -0.3), (3.75, -1.0), stroke: (dash: "dashed", thickness: 0.7pt))

  // Base destra (x=6.4)
  bezier((6.55, 1.25), (5.75, 0.3), (6.05, 1.2), (5.7, 0.8), stroke: 1.2pt)
  bezier((5.75, 0.3), (5.9, -0.5), (5.8, -0.1), (6.05, -0.2), stroke: 1.2pt)
  bezier((5.9, -0.5), (6.25, -1.25), (5.75, -0.8), (5.95, -1.2), stroke: 1.2pt)
  bezier((6.55, 1.25), (6.55, 0.1), (7.05, 0.9), (6.25, 0.5), stroke: 1.2pt)
  bezier((6.55, 0.1), (6.25, -1.25), (6.95, -0.3), (6.85, -1.0), stroke: 1.2pt)

  // Componenti di tensione in blu sulla sezione intermedia (origine locale (3.3, 0))
  line((3.3, 0), (4.25, 0), mark: (end: ">"), stroke: (paint: blue, thickness: 1.2pt))
  content((4.55, -0.25), text(size: 7pt)[$sigma_(x x)$])
  line((3.3, 0), (3.3, 0.85), mark: (end: ">"), stroke: (paint: blue, thickness: 1.2pt))
  content((2.95, 0.5), text(size: 7pt)[$tau_(x y)$])
  line((3.3, 0), (2.2, -0.7), mark: (end: ">"), stroke: (paint: blue, thickness: 1.2pt))
  content((2.2, -0.25), text(size: 7pt)[$tau_(x z)$])
})
