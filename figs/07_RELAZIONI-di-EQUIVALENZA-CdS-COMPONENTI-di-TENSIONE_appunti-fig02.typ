// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 96) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.4cm, {
  import draw: *
  // Assi di riferimento
  line((0, 0), (8.2, 0), mark: (end: ">"), stroke: 0.7pt)
  content((8.1, 0.25), text(size: 7pt)[$x$])
  line((0, 0), (0, 2.6), mark: (end: ">"), stroke: 0.7pt)
  content((0.25, 2.5), text(size: 7pt)[$y$])
  line((0, 0), (-0.85, -0.7), mark: (end: ">"), stroke: 0.7pt)
  content((-0.6, -0.85), text(size: 7pt)[$z$])

  // Tronco sinistro: faccia sinistra (x=0)
  bezier((0.5, 1.25), (-0.4, 0.3), (-0.1, 1.2), (-0.45, 0.8), stroke: 1.2pt)
  bezier((-0.4, 0.3), (-0.25, -0.5), (-0.35, -0.1), (-0.1, -0.2), stroke: 1.2pt)
  bezier((-0.25, -0.5), (0.2, -1.25), (-0.4, -0.8), (-0.2, -1.2), stroke: 1.2pt)
  bezier((0.5, 1.25), (0.5, 0.1), (1.0, 0.9), (0.2, 0.5), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((0.5, 0.1), (0.2, -1.25), (0.9, -0.3), (0.8, -1.0), stroke: (dash: "dashed", thickness: 0.7pt))

  // Linee longitudinali tronco sinistro
  line((0.5, 1.25), (2.9, 1.25), stroke: 1.2pt)
  line((0.2, -1.25), (2.6, -1.25), stroke: 1.2pt)

  // Tronco sinistro: faccia destra (sezione a x=2.65)
  bezier((2.9, 1.25), (2.0, 0.3), (2.3, 1.2), (1.95, 0.8), stroke: 1.2pt)
  bezier((2.0, 0.3), (2.15, -0.5), (2.05, -0.1), (2.3, -0.2), stroke: 1.2pt)
  bezier((2.15, -0.5), (2.6, -1.25), (2.0, -0.8), (2.2, -1.2), stroke: 1.2pt)
  bezier((2.9, 1.25), (2.9, 0.1), (3.4, 0.9), (2.6, 0.5), stroke: 1.2pt)
  bezier((2.9, 0.1), (2.6, -1.25), (3.3, -0.3), (3.2, -1.0), stroke: 1.2pt)

  // Caratteristiche di sollecitazione sulla sezione (origine locale in (2.65, 0))
  // Ty e My (verde)
  line((2.65, 0), (2.65, 2.05), mark: (end: ">"), stroke: (paint: rgb("#008000"), thickness: 1.6pt))
  content((2.25, 2.0), text(size: 7pt, fill: rgb("#008000"))[$T_y$])
  arc((2.65, 0.75), start: 195deg, stop: 345deg, radius: (0.32, 0.14), anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#008000"), thickness: 1.4pt))
  content((3.05, 0.9), text(size: 7pt, fill: rgb("#008000"))[$M_y$])

  // Nx e Mx (rosso)
  line((2.65, 0), (3.9, 0), mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.6pt))
  content((3.95, 0.3), text(size: 7pt, fill: rgb("#e60000"))[$N_x$])
  arc((3.4, 0.05), start: -110deg, stop: 160deg, radius: (0.14, 0.65), anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#e60000"), thickness: 1.4pt))
  content((3.6, -0.9), text(size: 7pt, fill: rgb("#e60000"))[$M_x$])

  // Tz e Mz (blu)
  line((2.65, 0), (1.05, -1.1), mark: (end: ">"), stroke: (paint: rgb("#0072bd"), thickness: 1.6pt))
  content((1.3, -0.4), text(size: 7pt, fill: rgb("#0072bd"))[$T_z$])
  arc((1.7, -0.45), start: -55deg, stop: 65deg, radius: (0.28, 0.52), anchor: "origin", mark: (end: ">"), stroke: (paint: rgb("#0072bd"), thickness: 1.4pt))
  content((2.05, -1.05), text(size: 7pt, fill: rgb("#0072bd"))[$M_z$])

  // Tronco destro (traslato a x=4.6)
  bezier((5.1, 1.25), (4.2, 0.3), (4.5, 1.2), (4.15, 0.8), stroke: 1.2pt)
  bezier((4.2, 0.3), (4.35, -0.5), (4.25, -0.1), (4.5, -0.2), stroke: 1.2pt)
  bezier((4.35, -0.5), (4.8, -1.25), (4.2, -0.8), (4.4, -1.2), stroke: 1.2pt)
  bezier((5.1, 1.25), (5.1, 0.1), (5.6, 0.9), (4.8, 0.5), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((5.1, 0.1), (4.8, -1.25), (5.5, -0.3), (5.4, -1.0), stroke: (dash: "dashed", thickness: 0.7pt))

  line((5.1, 1.25), (7.5, 1.25), stroke: 1.2pt)
  line((4.8, -1.25), (7.2, -1.25), stroke: 1.2pt)

  bezier((7.5, 1.25), (6.6, 0.3), (6.9, 1.2), (6.55, 0.8), stroke: 1.2pt)
  bezier((6.6, 0.3), (6.75, -0.5), (6.65, -0.1), (6.9, -0.2), stroke: 1.2pt)
  bezier((6.75, -0.5), (7.2, -1.25), (6.6, -0.8), (6.8, -1.2), stroke: 1.2pt)
  bezier((7.5, 1.25), (7.5, 0.1), (8.0, 0.9), (7.2, 0.5), stroke: 1.2pt)
  bezier((7.5, 0.1), (7.2, -1.25), (7.9, -0.3), (7.8, -1.0), stroke: 1.2pt)
})
