// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 477) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 2cm, {
  import draw: *
  // PANNELLO 1 (x da 0 a 2.6): Taglio Tz
  line((0, 0), (2.7, 0), mark: (end: ">"), stroke: 0.6pt)
  content((2.65, 0.2), text(size: 7pt)[$x$])
  line((0, 0), (0, 1.5), mark: (end: ">"), stroke: 0.6pt)
  content((-0.2, 1.4), text(size: 7pt)[$y$])
  line((0, 0), (-0.5, -0.45), mark: (end: ">"), stroke: 0.6pt)
  content((-0.35, -0.55), text(size: 7pt)[$z$])

  arc((0.2, 0), start: 90deg, stop: 270deg, radius: (0.35, 0.85), anchor: "origin", stroke: 1.0pt)
  arc((0.2, 0), start: -90deg, stop: 90deg, radius: (0.35, 0.85), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  line((0.2, 0.85), (1.7, 0.85), stroke: 1.0pt)
  line((0.2, -0.85), (1.7, -0.85), stroke: 1.0pt)
  circle((1.7, 0), radius: (0.35, 0.85), stroke: 1.0pt)

  // dA, tau_xz e Tz
  line((1.65, 0.4), (1.8, 0.5), (1.8, 0.68), (1.65, 0.58), close: true, stroke: 0.6pt)
  content((1.75, 0.9), text(size: 7pt)[$d A$])
  line((1.72, 0.54), (1.35, 0.25), mark: (end: ">"), stroke: (paint: rgb("#800040"), thickness: 0.9pt))
  content((1.65, 0.2), text(size: 7pt)[$tau_(x z)$])
  line((1.7, 0), (1.0, -0.6), mark: (end: ">"), stroke: (paint: rgb("#0072bd"), thickness: 1.4pt))
  content((0.9, -0.3), text(size: 7pt, fill: rgb("#0072bd"))[$T_z$])

  // PANNELLO 2 (traslato di +3.2 lungo x): Taglio Ty
  line((3.2, 0), (5.9, 0), mark: (end: ">"), stroke: 0.6pt)
  content((5.85, 0.2), text(size: 7pt)[$x$])
  line((3.2, 0), (3.2, 1.5), mark: (end: ">"), stroke: 0.6pt)
  content((3.0, 1.4), text(size: 7pt)[$y$])
  line((3.2, 0), (2.7, -0.45), mark: (end: ">"), stroke: 0.6pt)
  content((2.85, -0.55), text(size: 7pt)[$z$])

  arc((3.4, 0), start: 90deg, stop: 270deg, radius: (0.35, 0.85), anchor: "origin", stroke: 1.0pt)
  arc((3.4, 0), start: -90deg, stop: 90deg, radius: (0.35, 0.85), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.4, 0.85), (4.9, 0.85), stroke: 1.0pt)
  line((3.4, -0.85), (4.9, -0.85), stroke: 1.0pt)
  circle((4.9, 0), radius: (0.35, 0.85), stroke: 1.0pt)

  // dA, tau_xy e Ty
  line((4.9, -0.55), (5.05, -0.45), (5.05, -0.28), (4.9, -0.38), close: true, stroke: 0.6pt)
  content((4.85, -0.15), text(size: 7pt)[$d A$])
  line((4.98, -0.42), (4.98, -0.05), mark: (end: ">"), stroke: (paint: rgb("#800040"), thickness: 0.9pt))
  content((5.0, -0.7), text(size: 7pt)[$tau_(x y)$])
  line((4.9, 0), (4.9, 1.35), mark: (end: ">"), stroke: (paint: rgb("#008000"), thickness: 1.4pt))
  content((4.55, 1.25), text(size: 7pt, fill: rgb("#008000"))[$T_y$])

  // PANNELLO 3 (traslato di +6.4 lungo x): Momento torcente Mx
  line((6.4, 0), (9.3, 0), mark: (end: ">"), stroke: 0.6pt)
  content((9.2, -0.25), text(size: 7pt)[$x$])
  line((6.4, 0), (6.4, 1.5), mark: (end: ">"), stroke: 0.6pt)
  content((6.2, 1.4), text(size: 7pt)[$y$])
  line((6.4, 0), (5.9, -0.45), mark: (end: ">"), stroke: 0.6pt)
  content((6.05, -0.55), text(size: 7pt)[$z$])

  arc((6.6, 0), start: 90deg, stop: 270deg, radius: (0.35, 0.85), anchor: "origin", stroke: 1.0pt)
  arc((6.6, 0), start: -90deg, stop: 90deg, radius: (0.35, 0.85), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  line((6.6, 0.85), (8.1, 0.85), stroke: 1.0pt)
  line((6.6, -0.85), (8.1, -0.85), stroke: 1.0pt)
  circle((8.1, 0), radius: (0.35, 0.85), stroke: 1.0pt)

  // dA, bracci y e z, tau_xy, tau_xz e Mx
  line((8.15, -0.52), (8.3, -0.42), (8.3, -0.25), (8.15, -0.35), close: true, stroke: 0.6pt)
  content((8.0, 0.6), text(size: 7pt)[$d A$])
  line((7.8, -0.2), (7.8, -0.62), mark: (start: ">", end: ">"), stroke: (dash: "dotted", thickness: 0.6pt))
  content((7.62, -0.42), text(size: 7pt)[$y$])
  line((8.0, 0.25), (8.28, 0.45), mark: (start: ">", end: ">"), stroke: (dash: "dotted", thickness: 0.6pt))
  content((8.15, 0.2), text(size: 7pt)[$z$])

  line((8.22, -0.38), (8.22, 0.1), mark: (end: ">"), stroke: (paint: rgb("#800040"), thickness: 0.9pt))
  content((8.0, -0.15), text(size: 7pt)[$tau_(x y)$])
  line((8.22, -0.38), (7.85, -0.62), mark: (end: ">"), stroke: (paint: rgb("#800040"), thickness: 0.9pt))
  content((8.25, -0.7), text(size: 7pt)[$tau_(x z)$])

  arc((8.85, 0.0), start: -110deg, stop: 160deg, radius: (0.14, 0.55), anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.3pt))
  content((9.15, 0.65), text(size: 7pt, fill: rgb("#e60000"))[$M_x$])
})
