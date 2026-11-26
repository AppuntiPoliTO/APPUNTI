// Figura estratta da fatica.typ (riga 4940) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.94cm, {
  // BBox: x in [-1.2, 7.3] (dx=8.5), y in [-0.6, 4.9], length=0.94cm -> larghezza = 7.99 cm <= 8.2 cm
  import draw: *

  // Griglia bilogaritmica di sfondo
  for gx in (0.2, 1.4, 2.6, 3.8, 5.0, 6.2) {
    line((gx, 0), (gx, 4.55), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
  }
  for gy in (0.8, 1.6, 2.4, 3.2, 4.0) {
    line((0, gy), (6.65, gy), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
  }

  // Assi principali
  line((0, 0), (0, 4.7), stroke: 0.9pt, mark: (end: ">"))
  line((0, 0), (6.95, 0), stroke: 0.9pt, mark: (end: ">"))
  content((-0.18, 4.65), anchor: "east", text(size: 8.5pt)[$sigma_a$])
  content((6.95, -0.18), anchor: "north", text(size: 8.5pt)[$N$])
  content((0.2, -0.18), anchor: "north", text(size: 7.5pt)[$10^2$])

  // Curva di Wohler (Basquin + asintoto)
  line((0.4, 4.4), (5.6, 1.3), stroke: 1.2pt)
  line((5.6, 1.3), (6.65, 1.3), stroke: 1.2pt)
  circle((5.6, 1.3), radius: 0.07, fill: black)
  content((4.45, 2.95), anchor: "west", text(size: 7.5pt)[$sigma_m = "cost"$])
  line((4.40, 2.88), (3.86, 2.38), stroke: (thickness: 0.55pt, paint: black.transparentize(25%)), mark: (end: ">", scale: 0.5))
  content((5.75, 1.50), anchor: "south-west", text(size: 7pt)[Ginocchio])

  // Proiezioni del ginocchio (sigma_D, N_G)
  line((0, 1.3), (5.6, 1.3), stroke: (dash: "dotted", thickness: 0.65pt))
  line((5.6, 1.3), (5.6, 0), stroke: (dash: "dotted", thickness: 0.65pt))
  content((-0.15, 1.3), anchor: "east", text(size: 8pt)[$sigma_D$])
  content((5.6, -0.18), anchor: "north", text(size: 8pt)[$N_G$])

  // Generico livello (sigma_ai, n_i, N_i)
  line((0, 1.956), (4.5, 1.956), stroke: (dash: "dotted", thickness: 0.7pt))
  line((4.5, 1.956), (4.5, 0), stroke: (dash: "dotted", thickness: 0.7pt))
  line((1.4, 1.956), (1.4, 0), stroke: (dash: "dotted", thickness: 0.7pt, paint: red.transparentize(10%)))
  circle((4.5, 1.956), radius: 0.07, fill: black)
  circle((1.4, 1.956), radius: 0.085, fill: red.transparentize(10%), stroke: none)
  content((-0.15, 1.956), anchor: "east", text(size: 8pt)[$sigma_"ai"$])
  content((1.4, -0.18), anchor: "north", text(size: 8pt, fill: red.transparentize(10%))[$n_i$])
  content((4.5, -0.18), anchor: "north", text(size: 8pt)[$N_i$])

  // Punto equivalente (sigma_a,eq, N_TOT)
  line((0, 2.731), (3.2, 2.731), stroke: (dash: "dotted", thickness: 0.85pt, paint: blue))
  line((3.2, 2.731), (3.2, 0), stroke: (dash: "dotted", thickness: 0.85pt, paint: blue))
  circle((3.2, 2.731), radius: 0.09, fill: blue, stroke: none)
  content((-0.15, 2.731), anchor: "east", text(size: 8pt, fill: blue)[$sigma_"a,eq"$])
  content((3.2, -0.18), anchor: "north", text(size: 8pt, fill: blue)[$N_"TOT"$])
})
