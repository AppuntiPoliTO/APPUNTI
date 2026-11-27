// Figura estratta da fatica.typ (riga 1278) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.00cm, {
  import draw: *
  // BBox: x in [-4.1, 4.8] (dx=8.9), y in [-0.7, 4.5], length=0.90cm -> larghezza = 8.01 cm <= 8.2 cm

  // Poligono di sicurezza campito
  line(
    (-2.8, 0.0),
    (-1.4, 1.4),
    (1.87, 2.8),
    (2.8, 2.8),
    (0.0, 0.0),
    close: true,
    fill: black.transparentize(90%),
    stroke: none,
  )

  // Assi ortogonali (sigma_min, sigma_max)
  line((-3.4, 0.0), (4.0, 0.0), stroke: 0.75pt, mark: (end: ">"))
  line((0.0, -0.4), (0.0, 3.85), stroke: 0.75pt, mark: (end: ">"))
  content((4.08, 0.0), anchor: "west")[#text(size: 8pt)[$sigma_"min"$]]
  content((0.0, 3.92), anchor: "south")[#text(size: 8pt)[$sigma_"max"$]]

  // Assi ruotati di 45 gradi (sigma_m e sigma_a) ben distanziati da Rm
  line((0.0, 0.0), (4.05, 4.05), stroke: (paint: blue, thickness: 0.75pt), mark: (end: ">"))
  line((0.0, 0.0), (-2.95, 2.95), stroke: (paint: blue, thickness: 0.75pt), mark: (end: ">"))
  content((4.10, 4.10), anchor: "south-west")[#text(size: 8pt, fill: blue)[$sigma_m$]]
  content((-3.00, 3.00), anchor: "south-east")[#text(size: 8pt, fill: blue)[$sigma_a$]]

  // Raggi a rapporto R costante e prolungamenti
  line((0.0, 0.0), (-3.2, 1.6), stroke: (dash: "dashed", thickness: 0.55pt))
  content((-3.26, 1.6), anchor: "east")[#text(size: 7pt)[$R = -2$]]
  content((-2.35, 2.15), anchor: "north-east")[#text(size: 7pt, fill: blue)[$R = -1$]]
  content((0.12, 3.45), anchor: "west")[#text(size: 7pt)[$R = 0$]]
  content((2.82, 2.52), anchor: "north-west")[#text(size: 7pt, fill: blue)[$R = 1$]]

  // Costruzioni Goodman e snervamento
  line((1.87, 2.8), (3.5, 3.5), stroke: (dash: "dashed", thickness: 0.6pt))
  circle((3.5, 3.5), radius: 0.05, fill: black)
  content((3.36, 3.56), anchor: "south-east")[#text(size: 7.5pt)[$R_m$]]
  line((0.0, 2.8), (1.87, 2.8), stroke: (dash: "dotted", thickness: 0.6pt))
  content((0.10, 2.85), anchor: "south-west")[#text(size: 7.5pt)[$R_"p0.2"$]]

  // Contorno poligono di sicurezza
  line(
    (-2.8, 0.0),
    (-1.4, 1.4),
    (1.87, 2.8),
    (2.8, 2.8),
    (0.0, 0.0),
    close: true,
    stroke: 1.15pt,
  )

  // Punto di lavoro P e proiezioni su entrambi i riferimenti
  let px = 1.45
  let py = 2.05
  line((px, py), (px, 0.0), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.65pt))
  line((px, py), (0.0, py), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.65pt))
  line((px, py), (1.75, 1.75), stroke: (dash: "dotted", paint: blue, thickness: 0.65pt))
  line((px, py), (-0.30, 0.30), stroke: (dash: "dotted", paint: blue, thickness: 0.65pt))
  circle((px, py), radius: 0.065, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  content((px + 0.08, py + 0.06), anchor: "south-west")[#text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$]]

  // Etichette assi sigma_D-1 senza collisioni
  line((-1.4, 1.4), (0.0, 1.4), stroke: (dash: "dotted", thickness: 0.5pt))
  line((-1.4, 1.4), (-1.4, 0.0), stroke: (dash: "dotted", thickness: 0.5pt))
  content((-1.4, -0.14), anchor: "north")[#text(size: 7.5pt)[$-sigma_(D-1)$]]
  content((0.08, 1.42), anchor: "south-west")[#text(size: 7.5pt)[$sigma_(D-1)$]]
})
