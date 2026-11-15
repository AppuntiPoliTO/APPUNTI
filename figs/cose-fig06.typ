// Figura estratta da cose.typ (riga 442) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: Snervamento evidente con oscillazioni (ReH, ReL) ---
  line((0, 0), (3.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((3.6, -0.25), text(size: 7pt)[$e$], anchor: "north")
  content((-0.2, 4.2), text(size: 7pt)[$R$], anchor: "east")
  content((0, -0.25), text(size: 7pt)[$0$], anchor: "north")

  // Tratto elastico + picco ReH + oscillazioni ReL + incrudimento
  line((0, 0), (0.6, 2.7), stroke: 1pt)
  bezier((0.6, 2.7), (1.0, 2.55), (0.72, 3.35), (0.88, 3.35), stroke: 1pt)
  bezier((1.0, 2.55), (1.25, 2.65), (1.08, 2.3), (1.17, 2.3), stroke: 1pt)
  bezier((1.25, 2.65), (1.45, 2.65), (1.3, 2.75), (1.4, 2.55), stroke: 1pt)
  bezier((1.45, 2.65), (1.65, 2.65), (1.5, 2.75), (1.6, 2.55), stroke: 1pt)
  bezier((1.65, 2.65), (1.85, 2.65), (1.7, 2.75), (1.8, 2.55), stroke: 1pt)
  line((1.85, 2.65), (2.7, 3.6), stroke: 1pt)

  // Linee di riferimento e quote ReH, ReL
  line((-0.9, 3.12), (0.8, 3.12), stroke: 0.5pt)
  line((-0.45, 2.6), (2.0, 2.6), stroke: 0.5pt)
  line((-0.8, 0), (-0.8, 3.12), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-0.35, 0), (-0.35, 2.6), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.88, 1.56), text(size: 7pt)[$R_"eH"$], anchor: "east")
  content((-0.42, 1.3), text(size: 7pt)[$R_"eL"$], anchor: "east")

  // Indicazione avvallamento iniziale transitorio (a)
  line((1.55, 1.6), (1.13, 2.38), mark: (end: ">"), stroke: 0.6pt)
  content((1.6, 1.55), text(size: 7pt)[$a$], anchor: "north-west")
  content((1.5, 4.4), text(size: 7pt)[*Snervamento evidente ($R_e$)*], anchor: "south")

  // --- PANNELLO 2: Snervamento evidente a plateau netto (ReL) ---
  line((4.6, 0), (8.0, 0), mark: (end: ">"), stroke: 0.8pt)
  line((4.6, 0), (4.6, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((8.0, -0.25), text(size: 7pt)[$e$], anchor: "north")
  content((4.4, 4.2), text(size: 7pt)[$R$], anchor: "east")
  content((4.6, -0.25), text(size: 7pt)[$0$], anchor: "north")

  line((4.6, 0), (5.1, 2.5), stroke: 1pt)
  line((5.1, 2.5), (5.8, 2.5), stroke: 1pt)
  bezier((5.8, 2.5), (7.6, 3.7), (6.3, 3.2), (7.0, 3.6), stroke: 1pt)

  line((4.05, 2.5), (5.1, 2.5), stroke: 0.5pt)
  line((4.15, 0), (4.15, 2.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.08, 1.25), text(size: 7pt)[$R_"eL"$], anchor: "east")
  content((6.2, 4.4), text(size: 7pt)[*Plateau di snervamento*], anchor: "south")

  // --- PANNELLO 3: Limite di proporzionalità convenzionale (Rp) ---
  line((9.4, 0), (13.0, 0), mark: (end: ">"), stroke: 0.8pt)
  line((9.4, 0), (9.4, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((13.0, -0.25), text(size: 7pt)[$epsilon$ ($e$)], anchor: "north")
  content((9.2, 4.2), text(size: 7pt)[$sigma$ ($R$)], anchor: "east")
  content((9.4, -0.25), text(size: 7pt)[$0$], anchor: "north")

  // Retta modulo elastico e curva elasto-plastica continua
  line((9.4, 0), (10.15, 3.9), stroke: 0.7pt)
  line((9.4, 0), (9.8, 2.08), stroke: 1pt)
  bezier((9.8, 2.08), (11.2, 3.65), (10.0, 2.85), (10.6, 3.35), stroke: 1pt)

  // Retta parallela di scarico per deformazione residua ep
  line((10.15, 0), (10.85, 3.64), stroke: (dash: "dashed", thickness: 0.7pt))

  // Orizzontale Rp e quote
  line((8.75, 3.38), (10.8, 3.38), stroke: 0.5pt)
  line((8.85, 0), (8.85, 3.38), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.78, 1.69), text(size: 7pt)[$R_"p"$], anchor: "east")

  line((9.4, -0.55), (9.4, 0), stroke: 0.5pt)
  line((10.15, -0.55), (10.15, 0), stroke: 0.5pt)
  line((9.4, -0.45), (10.15, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((9.77, -0.6), text(size: 7pt)[$epsilon_"pl"$ ($e_"p"$)], anchor: "north")
  content((11.2, 4.4), text(size: 7pt)[*Snervamento convenzionale ($R_"p"$)*], anchor: "south")
})
