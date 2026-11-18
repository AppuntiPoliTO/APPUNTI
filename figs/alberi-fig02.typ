// Figura estratta da alberi.typ (riga 166) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  // Linea d'asse / albero
  line((0.8, 0), (11.2, 0), stroke: 1.4pt)
  
  // Motore M
  rect((0, -0.45), (0.9, 0.45), stroke: 1pt, fill: luma(245))
  arc((0.9, 0.45), start: 90deg, stop: -90deg, radius: 0.45, stroke: 1pt, fill: luma(245))
  content((0.55, 0), [*M*])
  content((0.55, -0.9), [Motore], anchor: "north")

  // Utilizzatore U
  rect((11.1, -0.45), (12.0, 0.45), stroke: 1pt, fill: luma(245))
  arc((11.1, -0.45), start: -90deg, stop: -270deg, radius: 0.45, stroke: 1pt, fill: luma(245))
  content((11.45, 0), [*U*])
  content((11.45, -0.9), [Utilizzatore], anchor: "north")

  // Giunto 1 (sinistra)
  line((2.4, -0.45), (2.4, 0.45), stroke: 1pt)
  line((2.6, -0.45), (2.6, 0.45), stroke: 1pt)
  line((2.2, 0.25), (2.8, 0.25), stroke: 0.8pt)
  line((2.2, -0.25), (2.8, -0.25), stroke: 0.8pt)
  circle((2.5, 1.1), radius: 0.3, stroke: 0.8pt)
  content((2.5, 1.1), [1])
  line((2.5, 0.8), (2.5, 0.45), stroke: 0.6pt)
  content((2.5, -0.9), [Giunto], anchor: "north")

  // Supporto 2 (sinistra - carrello)
  line((4.2, -0.2), (4.8, 0.2), stroke: 1pt)
  circle((4.5, 1.1), radius: 0.3, stroke: 0.8pt)
  content((4.5, 1.1), [2])
  line((4.5, 0.8), (4.5, 0.15), stroke: 0.6pt)

  // Supporto 3 (centro-destra - cerniera/cuscinetto reggispinta)
  line((6.7, -0.2), (7.3, 0.2), stroke: 1pt)
  line((7.0, 0), (7.0, -0.55), stroke: 0.8pt)
  circle((6.8, -0.4), radius: 0.12, stroke: 0.7pt)
  line((6.6, -0.55), (7.4, -0.55), stroke: 0.8pt)
  circle((7.0, 1.1), radius: 0.3, stroke: 0.8pt)
  content((7.0, 1.1), [3])
  line((7.0, 0.8), (7.0, 0.15), stroke: 0.6pt)
  content((5.75, -0.9), [Supporti], anchor: "north")

  // Giunto 1 (destra)
  line((9.4, -0.45), (9.4, 0.45), stroke: 1pt)
  line((9.6, -0.45), (9.6, 0.45), stroke: 1pt)
  line((9.2, 0.25), (9.8, 0.25), stroke: 0.8pt)
  line((9.2, -0.25), (9.8, -0.25), stroke: 0.8pt)
  circle((9.5, 1.1), radius: 0.3, stroke: 0.8pt)
  content((9.5, 1.1), [1])
  line((9.5, 0.8), (9.5, 0.45), stroke: 0.6pt)
  content((9.5, -0.9), [Giunto], anchor: "north")
})
