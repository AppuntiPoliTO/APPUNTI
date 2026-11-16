// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1006) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.45cm, {
  import draw: *
  // 1. Sezione rettangolare (centro (-4.5, 0))
  rect((-5.2, -1.2), (-3.8, 1.2), stroke: 1.2pt)
  line((-3.5, 0), (-5.6, 0), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  line((-4.5, -1.4), (-4.5, 1.6), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  content((-5.6, -0.15), text(size: 7pt)[$z$], anchor: "north")
  content((-4.35, 1.55), text(size: 7pt)[$y$], anchor: "west")
  // Frecce verticali tau_xy su 3 fasce
  line((-5.2, 0.95), (-3.8, 0.95), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-5.2, 0.65), (-3.8, 0.65), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-5.0, 0.95), (-5.0, 0.65), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-4.5, 0.95), (-4.5, 0.65), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-4.0, 0.95), (-4.0, 0.65), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))

  line((-5.2, 0.25), (-3.8, 0.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-5.2, -0.25), (-3.8, -0.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-5.0, 0.25), (-5.0, -0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-4.5, 0.25), (-4.5, -0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-4.0, 0.25), (-4.0, -0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))

  line((-4.5, -0.55), (-4.5, -1.55), mark: (end: ">"), stroke: 1.8pt)
  content((-4.35, -1.55), text(size: 7pt)[$T_y$], anchor: "west")

  // 2. Sezione a T rovesciata (centro (-1.5, 0))
  line((-2.5, -1.2), (-0.5, -1.2), (-0.5, -0.4), (-1.2, -0.4), (-1.2, 1.2), (-1.8, 1.2), (-1.8, -0.4), (-2.5, -0.4), close: true, stroke: 1.2pt)
  line((-0.2, -0.55), (-2.8, -0.55), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  line((-1.5, -1.4), (-1.5, 1.6), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  content((-2.8, -0.7), text(size: 7pt)[$z$], anchor: "north")
  content((-1.35, 1.55), text(size: 7pt)[$y$], anchor: "west")
  // Frecce deviate nelle ali
  line((-1.7, 0.9), (-1.7, 0.6), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.3, 0.9), (-1.3, 0.6), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.6, -0.35), (-2.1, -0.55), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.4, -0.35), (-0.9, -0.55), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-2.2, -0.7), (-2.2, -1.0), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.8, -0.7), (-0.8, -1.0), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.5, -0.55), (-1.5, -1.55), mark: (end: ">"), stroke: 1.8pt)
  content((-1.35, -1.55), text(size: 7pt)[$T_y$], anchor: "west")

  // 3. Sezione scatolare cava (centro (1.6, 0))
  rect((0.6, -1.2), (2.6, 1.2), stroke: 1.2pt)
  rect((1.3, -0.6), (1.9, 0.6), stroke: 1.2pt)
  line((2.9, 0), (0.3, 0), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  line((1.6, -1.4), (1.6, 1.6), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  content((0.3, -0.15), text(size: 7pt)[$z$], anchor: "north")
  content((1.75, 1.55), text(size: 7pt)[$y$], anchor: "west")
  // Frecce deviate attorno al foro
  line((1.4, 0.8), (1.0, 0.65), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((1.8, 0.8), (2.2, 0.65), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.95, 0.4), (0.95, -0.1), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((2.25, 0.4), (2.25, -0.1), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((1.0, -0.65), (1.4, -0.8), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((2.2, -0.65), (1.8, -0.8), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((1.6, -0.6), (1.6, -1.55), mark: (end: ">"), stroke: 1.8pt)
  content((1.75, -1.55), text(size: 7pt)[$T_y$], anchor: "west")

  // 4. Sezione sagomata a campana (centro (4.6, 0))
  bezier((4.6, 1.2), (3.8, -0.4), (4.1, 1.2), (4.1, 0.1), stroke: 1.2pt)
  bezier((3.8, -0.4), (4.6, -1.2), (3.5, -0.9), (3.8, -1.2), stroke: 1.2pt)
  bezier((4.6, -1.2), (5.4, -0.4), (5.4, -1.2), (5.7, -0.9), stroke: 1.2pt)
  bezier((5.4, -0.4), (4.6, 1.2), (5.1, 0.1), (5.1, 1.2), stroke: 1.2pt)
  line((5.9, -0.35), (3.3, -0.35), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  line((4.6, -1.4), (4.6, 1.6), mark: (end: ">"), stroke: (paint: luma(140), thickness: 0.6pt))
  content((3.3, -0.5), text(size: 7pt)[$z$], anchor: "north")
  content((4.75, 1.55), text(size: 7pt)[$y$], anchor: "west")
  // Frecce inclinate tangenti al profilo
  line((4.2, -0.05), (4.0, -0.45), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((4.6, -0.05), (4.6, -0.45), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((5.0, -0.05), (5.2, -0.45), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((4.6, -0.55), (4.6, -1.55), mark: (end: ">"), stroke: 1.8pt)
  content((4.75, -1.55), text(size: 7pt)[$T_y$], anchor: "west")
})
