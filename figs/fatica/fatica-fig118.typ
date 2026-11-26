// Figura estratta da fatica.typ (riga 5012) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.94cm, {
  // BBox: x in [-1.25, 7.25] (dx=8.5), y in [-0.75, 4.55], length=0.94cm -> larghezza = 7.99 cm <= 8.2 cm
  import draw: *

  // Assi
  line((0, 0), (0, 4.4), stroke: 0.9pt, mark: (end: ">"))
  line((0, 0), (6.7, 0), stroke: 0.9pt, mark: (end: ">"))
  content((-0.18, 4.28), anchor: "east", text(size: 8.5pt)[$sigma_a$])
  content((-0.18, 3.80), anchor: "east", text(size: 7pt)[$(Delta sigma)$])
  content((6.75, -0.18), anchor: "north", text(size: 8.5pt)[$N$])

  // Istogramma a gradini decrescenti (n1..n6) con quote ampiezza blocco n_i
  let blocks = (
    (0.00, 1.02, 3.70, [$n_1$]),
    (1.02, 1.95, 3.18, [$n_2$]),
    (1.95, 2.83, 2.66, [$n_3$]),
    (2.83, 3.67, 2.15, [$n_4$]),
    (3.67, 4.48, 1.65, [$n_5$]),
    (4.48, 5.25, 1.15, [$n_6$]),
  )
  line((0, 0), (0, -0.45), stroke: 0.5pt)
  for (x0, x1, h, lbl) in blocks {
    rect((x0, 0), (x1, h), fill: black.transparentize(90%), stroke: 0.85pt)
    line((x1, 0), (x1, -0.45), stroke: 0.5pt)
    line((x0 + 0.04, -0.22), (x1 - 0.04, -0.22), stroke: 0.5pt, mark: (start: ">", end: ">", scale: 0.38))
    content(((x0 + x1) / 2, -0.32), anchor: "north", text(size: 7.2pt)[#lbl])
  }

  // Inviluppo continuo approssimante, troncamento a sigma_D e coda scartata
  bezier((0, 3.88), (5.25, 1.15), (1.75, 3.42), (4.10, 2.02), stroke: (paint: blue, thickness: 1.2pt))
  line((5.25, 1.15), (5.25, 0), stroke: (paint: blue, thickness: 1.2pt))
  bezier((5.25, 1.15), (6.30, 0.52), (5.60, 0.94), (5.95, 0.72), stroke: (paint: black.transparentize(50%), dash: "dotted", thickness: 0.75pt))

  // Linea del limite di fatica sigma_D
  line((0, 1.15), (6.35, 1.15), stroke: (dash: "dashed", thickness: 0.7pt, paint: red.transparentize(10%)))
  content((-0.15, 1.15), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_D$])

  // Etichette di richiamo senza sovrapposizioni
  content((3.35, 3.52), anchor: "west", text(size: 7.5pt, fill: blue)[Inviluppo continuo])
  line((3.28, 3.45), (2.62, 2.82), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", scale: 0.5))
  content((5.42, 1.92), anchor: "west", text(size: 7pt, fill: blue)[Troncamento\ a $sigma_D$])
  line((5.58, 1.56), (5.28, 1.20), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", scale: 0.5))
})
