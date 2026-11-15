// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1582) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Sezione rettangolare b x h (x: -0.9..0.9, y: -1.6..1.6)
  rect((-0.9, -1.6), (0.9, 1.6), stroke: 1.2pt)

  // Porzione superiore tratteggiata Sz(y) (da y = 0.55 a 1.6)
  rect((-0.9, 0.55), (0.9, 1.6), fill: luma(230), stroke: 0.8pt)
  line((-0.9, 0.8), (-0.1, 1.6), stroke: 0.4pt)
  line((-0.9, 1.2), (-0.5, 1.6), stroke: 0.4pt)
  line((-0.6, 0.55), (0.45, 1.6), stroke: 0.4pt)
  line((-0.1, 0.55), (0.9, 1.55), stroke: 0.4pt)
  line((0.4, 0.55), (0.9, 1.05), stroke: 0.4pt)

  // Baricentro G0 a quota y0 = 1.075
  circle((0, 1.08), radius: 0.06, fill: white, stroke: 0.8pt)
  content((0.12, 1.08), text(size: 7pt)[$G_0$], anchor: "west")

  // Indicazione Sz(y)
  line((-0.3, 1.35), (-0.55, 1.95), stroke: 0.5pt)
  content((-0.6, 1.95), text(size: 7pt)[$S_z(y)$], anchor: "east")

  // Assi z e y
  line((2.2, 0), (-1.8, 0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((-1.8, -0.15), text(size: 7pt)[$z$], anchor: "north")
  line((0, -1.9), (0, 2.05), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((-0.15, 2.0), text(size: 7pt)[$y$], anchor: "east")

  // Fascia frecce tau_xy sotto y = 0.55
  line((-0.9, 0.25), (0.9, 0.25), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.7, 0.55), (-0.7, 0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((-0.35, 0.55), (-0.35, 0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.0, 0.55), (0.0, 0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.35, 0.55), (0.35, 0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  line((0.7, 0.55), (0.7, 0.25), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 0.5pt))
  content((1.0, 0.4), text(size: 7pt)[$tau_(x y)$], anchor: "west")

  // Forza Ty
  line((0, -0.05), (0, -0.95), mark: (end: ">"), stroke: 1.8pt)
  content((0.15, -0.95), text(size: 7pt)[$T_y$], anchor: "west")

  // Quote h, y0, y, b
  line((-0.9, 1.6), (-2.6, 1.6), stroke: 0.4pt)
  line((-0.9, -1.6), (-2.6, -1.6), stroke: 0.4pt)
  line((-2.45, -1.6), (-2.45, 1.6), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-2.55, 0), text(size: 7pt)[$h$], anchor: "east")

  line((0, 1.08), (-1.95, 1.08), stroke: 0.4pt)
  line((-1.8, 0), (-1.8, 1.08), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-1.9, 0.54), text(size: 7pt)[$y_0$], anchor: "east")

  line((-0.9, 0.55), (-1.35, 0.55), stroke: 0.4pt)
  line((-1.2, 0), (-1.2, 0.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-1.3, 0.28), text(size: 7pt)[$y$], anchor: "east")

  line((-0.9, -1.6), (-0.9, -2.2), stroke: 0.4pt)
  line((0.9, -1.6), (0.9, -2.2), stroke: 0.4pt)
  line((-0.9, -2.05), (0.9, -2.05), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0, -2.0), text(size: 7pt)[$b$], anchor: "south")

  // Diagramma parabolico laterale (base a x = 2.2, vertice a x = 3.5)
  line((0.9, 1.6), (2.2, 1.6), stroke: 0.4pt)
  line((0.9, -1.6), (2.2, -1.6), stroke: 0.4pt)
  line((2.2, -1.6), (2.2, 1.6), stroke: 0.6pt)
  bezier((2.2, 1.6), (3.5, 0), (2.85, 1.2), (3.5, 0.55), stroke: 0.8pt)
  bezier((3.5, 0), (2.2, -1.6), (3.5, -0.55), (2.85, -1.2), stroke: 0.8pt)

  // Linee campitura orizzontali nel diagramma parabolico e vettori
  line((2.2, 1.2), (2.77, 1.2), stroke: 0.4pt)
  line((2.2, 0.85), (3.12, 0.85), stroke: 0.4pt)
  line((2.2, 0.55), (3.34, 0.55), mark: (end: ">"), stroke: (paint: rgb("#2b6cb0"), thickness: 1.2pt))
  content((2.75, 0.62), text(size: 7pt)[$tau_(x y)$], anchor: "south")

  line((2.2, 0), (3.5, 0), mark: (end: ">"), stroke: (paint: red, thickness: 1.4pt))
  content((2.85, 0.08), text(size: 7pt, fill: red)[$tau_(x y, "max")$], anchor: "south")

  line((2.2, -0.55), (3.34, -0.55), stroke: 0.4pt)
  line((2.2, -0.85), (3.12, -0.85), stroke: 0.4pt)
  line((2.2, -1.2), (2.77, -1.2), stroke: 0.4pt)
})
