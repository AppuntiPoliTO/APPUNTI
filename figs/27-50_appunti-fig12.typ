// Figura estratta da 27-50_appunti.typ (riga 949) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.3cm, {
  import draw: *
  // PANNELLO 1: Trave soggetta a trazione
  rect((0.8, 2.0), (3.3, 2.4), stroke: 1.1pt)
  line((3.3, 2.4), (3.8, 2.4), stroke: (dash: "dashed", thickness: 0.9pt))
  line((3.8, 2.4), (3.8, 2.0), stroke: (dash: "dashed", thickness: 0.9pt))
  line((3.8, 2.0), (3.3, 2.0), stroke: (dash: "dashed", thickness: 0.9pt))
  // Asse baricentrico e asse x
  line((0.5, 2.2), (4.0, 2.2), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((4.7, 2.2), (5.4, 2.2), mark: (end: ">"), stroke: 0.7pt)
  content((5.3, 1.9), text(size: 7pt)[$x$])
  // Forze P
  line((0.8, 2.2), (0.1, 2.2), mark: (end: ">"), stroke: 1.1pt)
  content((0.2, 2.55), text(size: 7pt)[$P$])
  line((3.9, 2.2), (4.6, 2.2), mark: (end: ">"), stroke: 1.1pt)
  content((3.9, 2.55), text(size: 7pt)[$P$])

  // PANNELLO 2: Diagramma P - Delta l
  // Area elementare tratteggiata
  line((7.6, 0.8), (7.6, 2.2), (7.9, 2.45), (7.9, 0.8), close: true, fill: luma(220), stroke: 0.6pt)
  line((7.6, 1.0), (7.9, 1.25), stroke: 0.5pt)
  line((7.6, 1.3), (7.9, 1.55), stroke: 0.5pt)
  line((7.6, 1.6), (7.9, 1.85), stroke: 0.5pt)
  line((7.6, 1.9), (7.9, 2.15), stroke: 0.5pt)

  // Assi cartesiani
  line((6.2, 0.2), (6.2, 4.3), mark: (end: ">"), stroke: 0.8pt)
  line((6.2, 0.8), (10.2, 0.8), mark: (end: ">"), stroke: 0.8pt)
  content((5.9, 4.2), text(size: 7pt)[$P$])
  content((10.1, 0.5), text(size: 7pt)[$Delta l$])
  content((5.95, 0.55), text(size: 7pt)[$O$])

  // Retta di carico OC
  line((6.2, 0.8), (9.5, 3.89), stroke: 1.2pt)

  // Proiezioni punto C e generico P
  line((6.1, 3.52), (9.1, 3.52), stroke: 0.6pt)
  line((9.1, 3.52), (9.1, 0.2), stroke: 0.6pt)
  content((5.9, 3.52), text(size: 7pt)[$P$])
  content((9.35, 3.52), text(size: 7pt)[$C$])
  content((9.3, 1.05), text(size: 7pt)[$B$])

  line((6.1, 2.32), (7.75, 2.32), stroke: 0.6pt)
  content((5.9, 2.32), text(size: 7pt)[$P$])

  // Quote d(Delta l) e Delta l
  line((7.6, 0.8), (7.6, 0.35), stroke: 0.5pt)
  line((7.9, 0.8), (7.9, 0.35), stroke: 0.5pt)
  line((7.2, 0.45), (7.6, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((8.3, 0.45), (7.9, 0.45), mark: (end: ">"), stroke: 0.6pt)
  line((7.6, 0.45), (7.9, 0.45), stroke: 0.6pt)
  content((8.45, 0.58), text(size: 7pt)[$d(Delta l)$])

  line((6.2, 0.25), (9.1, 0.25), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((7.65, 0.0), text(size: 7pt)[$Delta l$])
})
