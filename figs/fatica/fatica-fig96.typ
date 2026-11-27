// Figura estratta da fatica.typ (riga 2876) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.82cm, {
  // BBox: x in [-0.1, 10.6] (dx=10.7), y in [-0.3, 5.6], length=0.72cm -> larghezza = 7.70 cm <= 8.2 cm
  import draw: *

  // --- Lastra forata in trazione P ---
  rect((0.45, 1.3), (2.35, 4.7), stroke: 1.0pt)
  circle((1.4, 3.0), radius: 0.40, fill: white, stroke: 0.9pt)
  line((1.4, 4.7), (1.4, 5.45), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
  line((1.4, 1.3), (1.4, 0.55), stroke: 0.85pt, mark: (end: ">", scale: 0.55))
  content((1.65, 5.20), anchor: "west", text(size: 8pt)[$P$])
  content((1.65, 0.80), anchor: "west", text(size: 8pt)[$P$])

  // Sezione A-A
  line((0.12, 3.0), (2.68, 3.0), stroke: (dash: "dashed", thickness: 0.65pt))
  content((0.12, 3.22), anchor: "south", text(size: 7pt)[A])
  content((2.68, 3.22), anchor: "south", text(size: 7pt)[A])
  content((1.4, 0.05), anchor: "center", text(size: 7.5pt)[Sez. A–A])

  // Tensioni schematiche nella lastra (staccate dal bordo esterno)
  rect((0.45, 3.0), (1.00, 3.42), fill: black.transparentize(86%), stroke: 0.6pt)
  content((0.72, 3.58), anchor: "south", text(size: 7pt)[$sigma_n$])
  bezier((1.80, 3.92), (2.28, 3.42), (1.94, 3.55), (2.10, 3.45), stroke: 0.9pt + blue)
  line((1.80, 3.0), (1.80, 3.92), stroke: 0.6pt + blue)
  content((2.04, 4.10), anchor: "south", text(size: 7pt, fill: blue)[$sigma_t$])

  // Richiamo verso gli ingrandimenti
  line((1.80, 3.0), (3.48, 2.80), stroke: (dash: "dotted", thickness: 0.6pt))

  // --- Ingrandimento 1: Caso statico (K_t, con eventuale snervamento) ---
  circle((4.9, 2.8), radius: 1.42, fill: luma(250), stroke: 0.85pt)
  arc((3.05, 2.2), start: -26.7deg, stop: 62.6deg, radius: 1.0, anchor: "origin", stroke: 1.05pt)
  line((4.05, 2.2), (6.19, 2.2), stroke: 0.75pt)
  line((4.05, 2.2), (4.05, 3.82), stroke: 0.8pt + blue)
  // Punta elastica piena + tratteggio di eventuale troncamento plastico raccordato esattamente alla curva
  bezier((4.05, 3.82), (6.05, 2.75), (4.45, 3.12), (5.20, 2.82), stroke: 1.15pt + blue)
  line((4.05, 3.46), (4.24, 3.46), stroke: (dash: "dashed", paint: blue.transparentize(15%), thickness: 0.8pt))
  for (x, y) in ((4.24, 3.46), (4.55, 3.16), (4.95, 2.94), (5.35, 2.84), (5.75, 2.78)) {
    line((x, 2.2), (x, y), stroke: 0.5pt + blue, mark: (end: ">", scale: 0.35, fill: blue))
  }
  content((4.9, 4.42), anchor: "south", text(size: 7.5pt, fill: blue, weight: "bold")[Statico ($K_t$)])
  content((4.9, 1.15), anchor: "north", text(size: 6.8pt)[Picco pieno (o snerv.)])

  // Linea di riferimento del picco statico
  line((4.05, 3.82), (7.75, 3.82), stroke: (dash: "dotted", paint: black.transparentize(40%), thickness: 0.6pt))

  // --- Ingrandimento 2: Caso ciclico a fatica (K_f) ---
  circle((8.6, 2.8), radius: 1.42, fill: luma(250), stroke: 0.85pt)
  arc((6.75, 2.2), start: -26.7deg, stop: 62.6deg, radius: 1.0, anchor: "origin", stroke: 1.05pt)
  line((7.75, 2.2), (9.89, 2.2), stroke: 0.75pt)
  line((7.75, 3.22), (7.75, 3.82), stroke: (dash: "dashed", paint: black.transparentize(45%), thickness: 0.65pt))
  line((7.75, 2.2), (7.75, 3.22), stroke: 0.8pt + red.transparentize(10%))
  bezier((7.75, 3.82), (9.75, 2.75), (8.15, 3.12), (8.90, 2.82), stroke: (dash: "dashed", paint: black.transparentize(45%), thickness: 0.65pt))
  bezier((7.75, 3.22), (9.75, 2.75), (8.25, 3.02), (9.00, 2.80), stroke: 1.15pt + red.transparentize(10%))
  for (x, y) in ((7.90, 3.14), (8.25, 2.99), (8.65, 2.88), (9.05, 2.81), (9.45, 2.77)) {
    line((x, 2.2), (x, y), stroke: 0.5pt + red.transparentize(10%), mark: (end: ">", scale: 0.35, fill: red.transparentize(10%)))
  }
  content((8.6, 4.42), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[A fatica ($K_f < K_t$)])
  content((8.6, 1.15), anchor: "north", text(size: 6.8pt)[Picco dinamico smussato])
})
