// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1222) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.3cm, {
  import draw: *
  // --- PANNELLO 1: Tronco 3D con area A* e flusso t_xy (centro (-4.5, 0)) ---
  circle((-4.5, 0), radius: 1.45, stroke: 0.7pt)
  arc((-3.2, 0.35), start: -70deg, stop: 105deg, radius: 1.45, anchor: "origin", stroke: 0.7pt)
  line((-4.85, 1.41), (-3.55, 1.76), stroke: 0.7pt)
  line((-4.0, -1.36), (-2.7, -1.01), stroke: 0.7pt)

  // Corda b tratteggiata rossa a quota y = 0.65 (da x = -5.80 a -3.20) e arco superiore A*
  line((-5.80, 0.65), (-3.20, 0.65), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  arc((-4.5, 0), start: 26.6deg, stop: 153.4deg, radius: 1.45, anchor: "origin", stroke: (paint: red, thickness: 1.4pt))
  line((-3.20, 0.65), (-1.90, 1.00), stroke: (paint: red, dash: "densely-dotted", thickness: 0.8pt))

  content((-5.1, 1.05), text(size: 7pt)[$A^*$])
  content((-5.1, 0.35), text(size: 7pt, fill: red)[$bold(b)$])

  // Vettore flusso t_xy
  line((-4.5, 0.35), (-4.5, 1.25), mark: (end: ">"), stroke: 1.1pt)
  content((-4.3, 0.35), text(size: 7pt)[$t_(x y)$], anchor: "west")

  // terna centrale
  line((-4.5, -0.35), (-5.2, -0.35), stroke: 0.5pt)
  line((-4.5, -0.35), (-4.5, 0.2), stroke: 0.5pt)
  circle((-4.5, -0.35), radius: 0.18, fill: white, stroke: 0.5pt)
  circle((-4.5, -0.35), radius: 0.05, fill: black, stroke: none)
  content((-4.65, 0.05), text(size: 7pt)[$y$], anchor: "east")
  content((-5.1, -0.5), text(size: 7pt)[$z$], anchor: "north")
  content((-4.2, -0.35), text(size: 7pt)[$x$], anchor: "west")

  // --- PANNELLO 2: Tronco sezionato lungo il piano della corda b (centro (0, 0)) ---
  arc((0, 0), start: 153.4deg, stop: 386.6deg, radius: 1.45, anchor: "origin", stroke: 0.7pt)
  arc((1.3, 0.35), start: -70deg, stop: 26.6deg, radius: 1.45, anchor: "origin", stroke: 0.7pt)
  line((0.5, -1.36), (1.8, -1.01), stroke: 0.7pt)

  // Piano orizzontale di taglio sulla corda b
  line((-1.30, 0.65), (1.30, 0.65), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))
  line((-1.30, 0.65), (0.0, 1.00), stroke: 0.7pt)
  line((1.30, 0.65), (2.60, 1.00), stroke: 0.7pt)
  line((0.0, 1.00), (2.60, 1.00), stroke: 0.7pt)

  content((-0.6, 0.35), text(size: 7pt, fill: red)[$bold(b)$])

  // Vettori t_xy e t_yx concorrenti sulla corda b
  line((0, 0.1), (0, 0.65), mark: (end: ">"), stroke: 1.1pt)
  content((0.15, 0.32), text(size: 7pt)[$t_(x y)$], anchor: "west")
  line((0.9, 0.90), (0.1, 0.68), mark: (end: ">"), stroke: 1.1pt)
  content((1.0, 0.95), text(size: 7pt)[$t_(y x)$], anchor: "west")

  // terna centrale
  line((0, -0.35), (-0.7, -0.35), stroke: 0.5pt)
  line((0, -0.35), (0, 0.05), stroke: 0.5pt)
  circle((0, -0.35), radius: 0.18, fill: white, stroke: 0.5pt)
  circle((0, -0.35), radius: 0.05, fill: black, stroke: none)
  content((-0.15, -0.02), text(size: 7pt)[$y$], anchor: "east")
  content((-0.6, -0.5), text(size: 7pt)[$z$], anchor: "north")
  content((0.3, -0.35), text(size: 7pt)[$x$], anchor: "west")

  // --- PANNELLO 3: Equilibrio concio dx in vista laterale (centro (5.0, 0)) ---
  rect((4.3, -1.45), (5.7, 1.45), stroke: 0.7pt)
  line((4.3, 0.65), (5.7, 0.65), stroke: (paint: red, dash: "dashed", thickness: 1.4pt))

  // Quota dx
  line((4.3, 1.6), (4.3, 2.0), stroke: 0.5pt)
  line((5.7, 1.6), (5.7, 2.0), stroke: 0.5pt)
  line((4.7, 1.8), (4.3, 1.8), mark: (end: ">"), stroke: 0.6pt)
  line((5.3, 1.8), (5.7, 1.8), mark: (end: ">"), stroke: 0.6pt)
  content((5.0, 1.8), text(size: 7pt)[$d x$])

  // Forze normali su A* e forza tangenziale t_xy dx
  line((4.2, 1.05), (3.1, 1.05), mark: (end: ">"), stroke: 1pt)
  content((3.65, 1.15), text(size: 7pt)[$integral_(A^*) sigma_(x x) d A$], anchor: "south")

  line((5.8, 1.05), (6.9, 1.05), mark: (end: ">"), stroke: 1pt)
  content((6.45, 1.15), text(size: 7pt)[$integral_(A^*) (sigma_(x x) + (d sigma_(x x)) / (d x) d x) d A$], anchor: "south")

  line((5.45, 0.50), (4.55, 0.50), mark: (end: ">"), stroke: 1pt)
  content((5.15, 0.25), text(size: 7pt)[$t_(x y) d x$])

  // terna centrale
  line((5.0, -0.35), (5.55, -0.35), stroke: 0.5pt)
  line((5.0, -0.35), (5.0, 0.25), stroke: 0.5pt)
  circle((5.0, -0.35), radius: 0.18, fill: white, stroke: 0.5pt)
  circle((5.0, -0.35), radius: 0.05, fill: black, stroke: none)
  content((4.88, 0.15), text(size: 7pt)[$y$], anchor: "east")
  content((4.8, -0.55), text(size: 7pt)[$z$], anchor: "north")
  content((5.5, -0.5), text(size: 7pt)[$x$], anchor: "north")
})
