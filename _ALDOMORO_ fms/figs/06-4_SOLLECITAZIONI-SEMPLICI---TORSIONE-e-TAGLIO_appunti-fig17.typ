// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1433) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Sezione a doppio T spessa per evidenziare il salto di corda b -> b'
  line((-1.8, -1.6), (1.8, -1.6), (1.8, -0.9), (0.6, -0.9), (0.6, 0.9), (1.8, 0.9), (1.8, 1.6), (-1.8, 1.6), (-1.8, 0.9), (-0.6, 0.9), (-0.6, -0.9), (-1.8, -0.9), close: true, stroke: 1.4pt)

  // Assi z e y baricentrici
  line((1.2, 0), (-1.8, 0), mark: (end: ">"), stroke: 0.6pt)
  content((-1.75, -0.18), text(size: 7pt)[$z$], anchor: "north")
  line((0, -1.9), (0, 2.1), mark: (end: ">"), stroke: 0.6pt)
  content((0.15, 2.05), text(size: 7pt)[$y$], anchor: "west")
  content((-0.2, 0.2), text(size: 7pt)[$G$])
  content((1.4, 1.3), text(size: 7pt)[$A$])

  // Corde rosse tratteggiate in alto (b nell'ala, b' nell'anima)
  line((-1.75, 0.98), (1.75, 0.98), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  line((-0.58, 0.82), (0.58, 0.82), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  content((-0.2, 1.25), text(size: 7pt)[$b$])
  content((0.2, 0.55), text(size: 7pt)[$b'$])
  content((-2.15, 1.2), text(size: 7pt)[$tau_(x y)$])
  content((-0.95, 0.45), text(size: 7pt)[$tau'_(x y)$])

  // Corde rosse e frecce di tensione in basso (confronto ampiezza frecce)
  line((-0.58, -0.82), (0.58, -0.82), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  line((-1.75, -0.98), (1.75, -0.98), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))

  // Fascia frecce lunghe nell'anima (tau'_xy)
  line((-0.6, -0.25), (0.6, -0.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.6, -0.75), (0.6, -0.75), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.45, -0.25), (-0.45, -0.75), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.15, -0.25), (-0.15, -0.75), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.15, -0.25), (0.15, -0.75), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.45, -0.25), (0.45, -0.75), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  content((-0.95, -0.45), text(size: 7pt)[$tau'_(x y)$])

  // Fascia frecce corte nell'ala inferiore (tau_xy)
  line((-1.8, -1.02), (1.8, -1.02), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.8, -1.22), (1.8, -1.22), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.5, -1.02), (-1.5, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-1.0, -1.02), (-1.0, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.5, -1.02), (-0.5, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.0, -1.02), (0.0, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.5, -1.02), (0.5, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((1.0, -1.02), (1.0, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((1.5, -1.02), (1.5, -1.22), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  content((-2.15, -1.15), text(size: 7pt)[$tau_(x y)$])
})
