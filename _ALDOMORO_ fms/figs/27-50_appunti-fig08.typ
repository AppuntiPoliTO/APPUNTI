// Figura estratta da 27-50_appunti.typ (riga 603) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *

  // --- PROVINO 1: Sezione circolare iniziale (S0, d, L0) ---
  rect((0, 4.0), (1.1, 5.0), stroke: 0.9pt)
  rect((6.9, 4.0), (8.0, 5.0), stroke: 0.9pt)
  bezier((1.1, 5.0), (1.7, 4.8), (1.3, 5.0), (1.45, 4.8), stroke: 0.9pt)
  bezier((1.1, 4.0), (1.7, 4.2), (1.3, 4.0), (1.45, 4.2), stroke: 0.9pt)
  bezier((6.9, 5.0), (6.3, 4.8), (6.7, 5.0), (6.55, 4.8), stroke: 0.9pt)
  bezier((6.9, 4.0), (6.3, 4.2), (6.7, 4.0), (6.55, 4.2), stroke: 0.9pt)
  line((1.7, 4.8), (6.3, 4.8), stroke: 0.9pt)
  line((1.7, 4.2), (6.3, 4.2), stroke: 0.9pt)
  line((-0.3, 4.5), (8.3, 4.5), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Tacche L0 e sezione circolare ribaltata S0
  line((2.3, 4.3), (2.3, 4.7), stroke: 0.9pt)
  line((5.7, 4.3), (5.7, 4.7), stroke: 0.9pt)
  circle((3.4, 4.5), radius: 0.3, fill: luma(220), stroke: 0.8pt)
  line((3.55, 4.75), (4.0, 5.15), mark: (start: ">"), stroke: 0.6pt)
  content((4.05, 5.2), text(size: 7pt)[$S_0$], anchor: "west")

  // Quota diametro d
  line((8.0, 4.8), (8.7, 4.8), stroke: 0.5pt)
  line((8.0, 4.2), (8.7, 4.2), stroke: 0.5pt)
  line((8.55, 4.2), (8.55, 4.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.48, 4.5), text(size: 7pt)[$d$], anchor: "east")

  // Quota L0
  line((2.3, 4.3), (2.3, 3.45), stroke: 0.5pt)
  line((5.7, 4.3), (5.7, 3.45), stroke: 0.5pt)
  line((2.3, 3.65), (5.7, 3.65), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 3.7), text(size: 7pt)[$L_0$], anchor: "south")

  // --- PROVINO 2: Sezione rettangolare iniziale (S0, a, b, Lc, Lt) ---
  rect((0, 2.0), (1.1, 3.0), stroke: 0.9pt)
  rect((6.9, 2.0), (8.0, 3.0), stroke: 0.9pt)
  bezier((1.1, 3.0), (1.7, 2.8), (1.3, 3.0), (1.45, 2.8), stroke: 0.9pt)
  bezier((1.1, 2.0), (1.7, 2.2), (1.3, 2.0), (1.45, 2.2), stroke: 0.9pt)
  bezier((6.9, 3.0), (6.3, 2.8), (6.7, 3.0), (6.55, 2.8), stroke: 0.9pt)
  bezier((6.9, 2.0), (6.3, 2.2), (6.7, 2.0), (6.55, 2.2), stroke: 0.9pt)
  line((1.7, 2.8), (6.3, 2.8), stroke: 0.9pt)
  line((1.7, 2.2), (6.3, 2.2), stroke: 0.9pt)
  line((-0.3, 2.5), (8.3, 2.5), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((2.3, 2.3), (2.3, 2.7), stroke: 0.9pt)
  line((5.7, 2.3), (5.7, 2.7), stroke: 0.9pt)
  rect((3.3, 2.2), (3.5, 2.8), fill: luma(220), stroke: 0.8pt)
  line((3.3, 2.8), (3.3, 3.2), stroke: 0.5pt)
  line((3.5, 2.8), (3.5, 3.2), stroke: 0.5pt)
  line((3.0, 3.1), (3.3, 3.1), mark: (end: ">"), stroke: 0.5pt)
  line((3.8, 3.1), (3.5, 3.1), mark: (end: ">"), stroke: 0.5pt)
  content((3.4, 3.15), text(size: 7pt)[$a$], anchor: "south")
  line((3.5, 2.65), (3.95, 3.0), mark: (start: ">"), stroke: 0.6pt)
  content((4.0, 3.05), text(size: 7pt)[$S_0$], anchor: "west")

  // Quota larghezza b
  line((8.0, 2.8), (8.7, 2.8), stroke: 0.5pt)
  line((8.0, 2.2), (8.7, 2.2), stroke: 0.5pt)
  line((8.55, 2.2), (8.55, 2.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((8.48, 2.5), text(size: 7pt)[$b$], anchor: "east")

  // Etichetta teste di serraggio
  line((7.3, 3.45), (7.1, 4.0), mark: (end: ">"), stroke: 0.6pt)
  line((7.3, 3.45), (7.1, 3.0), mark: (end: ">"), stroke: 0.6pt)
  content((6.6, 3.45), text(size: 7pt)[teste di serraggio], anchor: "west")

  // Quote Lc e Lt
  line((1.7, 4.8), (1.7, 1.35), stroke: 0.5pt)
  line((6.3, 4.8), (6.3, 1.35), stroke: 0.5pt)
  line((1.7, 1.5), (6.3, 1.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.55), text(size: 7pt)[$L_c$], anchor: "south")

  line((0, 2.0), (0, 0.85), stroke: 0.5pt)
  line((8.0, 2.0), (8.0, 0.85), stroke: 0.5pt)
  line((0, 1.0), (8.0, 1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.0, 1.05), text(size: 7pt)[$L_t$], anchor: "south")

  // --- PROVINO 3: Provino a rottura con strizione (Su, Lu) ---
  rect((0, -0.7), (1.1, 0.3), stroke: 0.9pt)
  rect((7.3, -0.7), (8.4, 0.3), stroke: 0.9pt)
  bezier((1.1, 0.3), (1.7, 0.1), (1.3, 0.3), (1.45, 0.1), stroke: 0.9pt)
  bezier((1.1, -0.7), (1.7, -0.5), (1.3, -0.7), (1.45, -0.5), stroke: 0.9pt)
  bezier((7.3, 0.3), (6.7, 0.1), (7.1, 0.3), (6.95, 0.1), stroke: 0.9pt)
  bezier((7.3, -0.7), (6.7, -0.5), (7.1, -0.7), (6.95, -0.5), stroke: 0.9pt)

  line((1.7, 0.1), (3.6, 0.1), stroke: 0.9pt)
  line((1.7, -0.5), (3.6, -0.5), stroke: 0.9pt)
  bezier((3.6, 0.1), (4.2, -0.05), (3.85, 0.1), (3.95, -0.05), stroke: 0.9pt)
  bezier((3.6, -0.5), (4.2, -0.35), (3.85, -0.5), (3.95, -0.35), stroke: 0.9pt)
  bezier((4.2, -0.05), (4.8, 0.1), (4.45, -0.05), (4.55, 0.1), stroke: 0.9pt)
  bezier((4.2, -0.35), (4.8, -0.5), (4.45, -0.35), (4.55, -0.5), stroke: 0.9pt)
  line((4.8, 0.1), (6.7, 0.1), stroke: 0.9pt)
  line((4.8, -0.5), (6.7, -0.5), stroke: 0.9pt)
  line((-0.3, -0.2), (8.7, -0.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Sezione di rottura e Su
  line((4.2, -0.55), (4.2, 0.15), stroke: 1.0pt)
  circle((3.1, -0.2), radius: 0.15, fill: luma(220), stroke: 0.8pt)
  line((3.1, -0.05), (4.2, -0.05), stroke: 0.5pt)
  line((3.1, -0.35), (4.2, -0.35), stroke: 0.5pt)
  line((3.2, -0.1), (3.65, 0.25), mark: (start: ">"), stroke: 0.6pt)
  content((3.7, 0.3), text(size: 7pt)[$S_u$], anchor: "west")

  // Tacche e quota Lu
  line((2.1, -0.4), (2.1, 0.0), stroke: 0.9pt)
  line((6.3, -0.4), (6.3, 0.0), stroke: 0.9pt)
  line((2.1, -0.4), (2.1, -1.15), stroke: 0.5pt)
  line((6.3, -0.4), (6.3, -1.15), stroke: 0.5pt)
  line((2.1, -1.0), (6.3, -1.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.2, -0.95), text(size: 7pt)[$L_u$], anchor: "south")
})
