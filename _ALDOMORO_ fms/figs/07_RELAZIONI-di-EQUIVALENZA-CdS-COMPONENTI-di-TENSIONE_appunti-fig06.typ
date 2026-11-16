// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 386) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 2cm, {
  import draw: *
  // PANNELLO 1 (x da 0 a 2.6): Sforzo normale Nx
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

  // dA, sigma_xx e Nx
  line((1.65, 0.35), (1.8, 0.45), (1.8, 0.65), (1.65, 0.55), close: true, stroke: 0.6pt)
  content((1.45, 0.35), text(size: 7pt)[$d A$])
  line((1.72, 0.5), (2.15, 0.5), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  content((2.35, 0.75), text(size: 7pt)[$sigma_(x x)$])
  line((1.7, 0), (2.45, 0), mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.4pt))
  content((2.3, -0.35), text(size: 7pt, fill: rgb("#e60000"))[$N_x$])

  // PANNELLO 2 (traslato di +3.2 lungo x): Momento flettente Mz
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

  // dA, quota y, sigma_xx e Mz
  line((4.85, -0.45), (5.0, -0.35), (5.0, -0.2), (4.85, -0.3), close: true, stroke: 0.6pt)
  content((4.95, -0.65), text(size: 7pt)[$d A$])
  line((4.92, 0), (4.92, -0.32), mark: (start: ">", end: ">"), stroke: (dash: "dotted", thickness: 0.6pt))
  content((4.72, -0.18), text(size: 7pt)[$y$])
  line((4.92, -0.32), (5.35, -0.32), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  content((5.55, -0.15), text(size: 7pt)[$sigma_(x x)$])
  arc((5.75, 0), start: -45deg, stop: 45deg, radius: 0.45, anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  content((6.25, 0.0), text(size: 7pt, fill: rgb("#0072bd"))[$M_z$])

  // PANNELLO 3 (traslato di +6.5 lungo x): Momento flettente My
  line((6.5, 0), (9.1, 0), mark: (end: ">"), stroke: 0.6pt)
  content((9.05, 0.2), text(size: 7pt)[$x$])
  line((6.5, 0), (6.5, 1.5), mark: (end: ">"), stroke: 0.6pt)
  content((6.3, 1.4), text(size: 7pt)[$y$])
  line((6.5, 0), (6.0, -0.45), mark: (end: ">"), stroke: 0.6pt)
  content((6.15, -0.55), text(size: 7pt)[$z$])

  arc((6.7, 0), start: 90deg, stop: 270deg, radius: (0.35, 0.85), anchor: "origin", stroke: 1.0pt)
  arc((6.7, 0), start: -90deg, stop: 90deg, radius: (0.35, 0.85), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  line((6.7, 0.85), (8.2, 0.85), stroke: 1.0pt)
  line((6.7, -0.85), (8.2, -0.85), stroke: 1.0pt)
  circle((8.2, 0), radius: (0.35, 0.85), stroke: 1.0pt)

  // dA, quota z, sigma_xx e My
  line((8.35, -0.35), (8.5, -0.25), (8.5, -0.1), (8.35, -0.2), close: true, stroke: 0.6pt)
  content((8.45, -0.55), text(size: 7pt)[$d A$])
  line((8.2, -0.35), (8.42, -0.22), mark: (start: ">", end: ">"), stroke: (dash: "dotted", thickness: 0.6pt))
  content((8.15, -0.15), text(size: 7pt)[$z$])
  line((8.42, -0.22), (8.85, -0.22), mark: (end: ">"), stroke: (paint: blue, thickness: 0.9pt))
  content((9.05, -0.25), text(size: 7pt)[$sigma_(x x)$])
  arc((8.2, 0.05), start: 195deg, stop: 345deg, radius: (0.28, 0.12), anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#008000"), thickness: 1.3pt))
  content((8.2, 0.3), text(size: 7pt, fill: rgb("#008000"))[$M_y$])
})
