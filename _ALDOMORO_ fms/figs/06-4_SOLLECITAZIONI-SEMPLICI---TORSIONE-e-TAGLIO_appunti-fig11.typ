// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 933) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.8cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Diagrammi M(x) e Ty ---
  // Diagramma M(x) in alto (y_base = 1.0)
  line((0, 1.0), (1.8, 1.0), stroke: 1.8pt)
  line((1.8, 1.0), (3.4, 1.0), mark: (end: ">"), stroke: 0.6pt)
  content((3.4, 0.85), text(size: 7pt)[$x$], anchor: "north")

  // Parte negativa a sinistra di S+ (x = 1.8)
  line((0, 1.0), (0, 2.2), (1.8, 1.0), close: true, stroke: 0.7pt)
  line((0.36, 1.0), (0.36, 1.96), stroke: 0.4pt)
  line((0.72, 1.0), (0.72, 1.72), stroke: 0.4pt)
  line((1.08, 1.0), (1.08, 1.48), stroke: 0.4pt)
  line((1.44, 1.0), (1.44, 1.24), stroke: 0.4pt)
  circle((0.45, 1.4), radius: 0.2, fill: white, stroke: 0.6pt)
  content((0.45, 1.4), text(size: 7pt)[$-$])

  // Parte positiva sfumata a destra di S+
  line((1.8, 1.0), (2.9, 0.25), (2.9, 1.0), close: true, stroke: (paint: luma(170), thickness: 0.6pt))
  circle((2.65, 0.65), radius: 0.2, fill: white, stroke: (paint: luma(170), thickness: 0.6pt))
  content((2.65, 0.65), text(size: 7pt, fill: luma(150))[$+$])
  content((-0.15, 1.6), text(size: 7pt)[$M(x)$], anchor: "east")

  // Diagramma Ty in basso (y_base = -0.9)
  line((0, -0.9), (1.8, -0.9), stroke: 1.4pt)
  line((1.8, -0.9), (2.9, -0.9), stroke: (paint: luma(170), thickness: 1.2pt))
  rect((0, -0.9), (1.8, -0.1), stroke: 0.7pt)
  rect((1.8, -0.9), (2.9, -0.1), stroke: (paint: luma(170), thickness: 0.6pt))
  line((0.36, -0.9), (0.36, -0.1), stroke: 0.4pt)
  line((0.72, -0.9), (0.72, -0.1), stroke: 0.4pt)
  line((1.08, -0.9), (1.08, -0.1), stroke: 0.4pt)
  line((1.44, -0.9), (1.44, -0.1), stroke: 0.4pt)
  circle((1.45, -0.5), radius: 0.2, fill: white, stroke: 0.6pt)
  content((1.45, -0.5), text(size: 7pt)[$+$])
  content((-0.15, -0.5), text(size: 7pt)[$T_y$], anchor: "east")

  // Linea di sezione S+
  line((1.8, -1.1), (1.8, 1.45), stroke: (paint: rgb("#2b6cb0"), thickness: 0.7pt))
  content((1.65, 1.55), text(size: 7pt)[$S^+$], anchor: "south")

  // Freccia curva di collegamento verso la sezione
  bezier((1.8, 1.45), (4.6, 1.75), (2.4, 2.2), (3.8, 2.2), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.6pt))
  content((4.85, 1.75), text(size: 7pt)[$S^+$])

  // --- PANNELLO DESTRO: Sezione trasversale (centro G in (5.7, 0.2)) ---
  rect((5.1, -0.8), (6.3, 1.2), stroke: 1.2pt)
  line((6.7, 0.2), (4.3, 0.2), mark: (end: ">"), stroke: 0.6pt)
  content((4.3, 0.05), text(size: 7pt)[$z$], anchor: "north")
  line((5.7, -1.2), (5.7, 1.9), mark: (end: ">"), stroke: 0.6pt)
  content((5.85, 1.85), text(size: 7pt)[$y$], anchor: "west")

  circle((5.7, 0.2), radius: 0.08, fill: white, stroke: 0.6pt)
  circle((5.7, 0.2), radius: 0.02, fill: black, stroke: none)
  content((5.58, 0.35), text(size: 7pt)[$G$], anchor: "east")
  content((5.82, 0.32), text(size: 7pt)[$x$], anchor: "west")
  content((6.1, 0.95), text(size: 7pt)[$A$])

  // Forza di taglio Ty
  line((5.7, 0.05), (5.7, -0.72), mark: (end: ">"), stroke: 1.8pt)
  content((5.82, -0.4), text(size: 7pt)[$T_y$], anchor: "west")
  content((6.45, 0.15), text(size: 7pt)[taglio puro], anchor: "west")
})
