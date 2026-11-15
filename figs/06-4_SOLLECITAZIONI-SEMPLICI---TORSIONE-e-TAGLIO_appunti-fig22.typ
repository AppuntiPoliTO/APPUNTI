// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1836) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Nodo tridimensionale a T con spessori b1, b2, b3
  // Ala superiore inclinata in assonometria
  line((-2.0, -0.3), (1.8, 1.6), stroke: 0.9pt)
  line((-1.8, -1.0), (-0.3, -0.25), stroke: 0.9pt)
  line((0.3, 0.05), (1.9, 0.85), stroke: 0.9pt)

  // Spigoli di profondita' assonometrica
  line((-2.0, -0.3), (-2.7, 0.15), stroke: 0.6pt)
  line((-1.8, -1.0), (-2.5, -0.55), stroke: 0.6pt)
  line((1.8, 1.6), (1.1, 2.05), stroke: 0.6pt)
  line((-0.3, -2.5), (-0.95, -2.1), stroke: 0.6pt)

  // Anima verticale di spessore b2
  line((-0.3, -0.25), (-0.3, -2.5), stroke: 0.9pt)
  line((0.3, 0.05), (0.3, -2.25), stroke: 0.9pt)

  // Linee di frattura sui tre rami
  bezier((-2.0, -0.3), (-1.8, -1.0), (-2.1, -0.55), (-1.7, -0.75), stroke: 0.7pt)
  bezier((1.8, 1.6), (1.9, 0.85), (1.65, 1.35), (2.0, 1.1), stroke: 0.7pt)
  bezier((-0.3, -2.5), (0.3, -2.25), (-0.1, -2.55), (0.1, -2.2), stroke: 0.7pt)

  // Cerchio rosso sul nodo di convergenza
  circle((0, 0.35), radius: 0.78, stroke: (paint: red, thickness: 1.4pt))

  // Frecce blu tau_1 (entranti da sinistra)
  line((-2.0, -0.45), (-1.45, -0.18), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((-1.93, -0.65), (-1.38, -0.38), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((-1.86, -0.85), (-1.31, -0.58), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  content((-2.15, -0.55), text(size: 7pt)[$b_1$], anchor: "east")
  content((-1.15, -0.25), text(size: 7pt)[$tau_1$])

  // Frecce blu tau_3 (entranti da destra)
  line((1.85, 1.45), (1.3, 1.18), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((1.90, 1.22), (1.35, 0.95), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((1.95, 0.98), (1.4, 0.71), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  content((2.15, 1.25), text(size: 7pt)[$b_3$], anchor: "west")
  content((1.05, 0.85), text(size: 7pt)[$tau_3$])

  // Frecce blu tau_2 (uscenti in basso) e vettore Ty
  line((0.05, -0.55), (0.05, -1.65), mark: (end: ">"), stroke: 1.8pt)
  content((0.25, -1.25), text(size: 7pt)[$T_y$], anchor: "west")
  content((0.0, -2.05), text(size: 7pt)[$b_2$])

  line((-0.22, -2.48), (-0.22, -3.05), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((0.0, -2.40), (0.0, -2.97), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  line((0.22, -2.30), (0.22, -2.87), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  content((0.45, -2.65), text(size: 7pt)[$tau_2$], anchor: "west")
})
