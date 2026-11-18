// Figura estratta da fatica.typ (riga 155) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.2cm, {
  import draw: *

  // Linee di riferimento orizzontali e verticali
  line((0.3, 2.0), (4.5, 2.0), stroke: 0.5pt)
  line((1.2, 3.0), (6.3, 3.0), stroke: 0.5pt)
  line((2.4, 1.0), (5.7, 1.0), stroke: 0.5pt)
  line((0.6, 2.0), (0.6, 3.7), stroke: 0.5pt)
  line((3.0, 2.0), (3.0, 3.7), stroke: 0.5pt)

  // Curva sinusoidale (3 semionde, 1 bezier per ciascuna concavità)
  bezier((0.6, 2.0), (1.8, 2.0), (1.11, 3.33), (1.29, 3.33), stroke: 1.2pt)
  bezier((1.8, 2.0), (3.0, 2.0), (2.31, 0.67), (2.49, 0.67), stroke: 1.2pt)
  bezier((3.0, 2.0), (4.2, 2.0), (3.51, 3.33), (3.69, 3.33), stroke: 1.2pt)

  // Assi cartesiani
  line((0, 0), (0, 4.0), mark: (end: "triangle", fill: white, scale: 0.8), stroke: 0.8pt)
  line((0, 0), (7.2, 0), mark: (end: "triangle", fill: white, scale: 0.8), stroke: 0.8pt)

  // Quote (frecce doppie)
  line((0.6, 3.5), (3.0, 3.5), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)
  line((0.9, 0.0), (0.9, 2.0), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)
  line((2.1, 2.0), (2.1, 3.0), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)
  line((4.8, 0.0), (4.8, 1.0), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)
  line((5.4, 1.0), (5.4, 3.0), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)
  line((6.0, 0.0), (6.0, 3.0), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.7), stroke: 0.5pt)

  // Etichette (tutte in blu come nell'immagine e con text(size: 7pt))
  content((-0.22, 3.45), text(size: 9pt, fill: rgb("#1f77b4"))[Tensione], angle: 90deg)
  content((6.85, -0.22), text(size: 9pt, fill: rgb("#1f77b4"))[Tempo])
  content((1.8, 3.68), text(size: 9pt, fill: rgb("#1f77b4"))[Ciclo di tensione])
  content((0.72, 1.0), text(size: 9pt, fill: rgb("#1f77b4"))[$sigma_m$], angle: 90deg)
  content((1.92, 2.5), text(size: 9pt, fill: rgb("#1f77b4"))[$sigma_a$], angle: 90deg)
  content((4.62, 0.5), text(size: 9pt, fill: rgb("#1f77b4"))[$sigma_"min"$], angle: 90deg)
  content((5.18, 2.0), text(size: 9pt, fill: rgb("#1f77b4"))[$Delta sigma = sigma_"max" - sigma_"min"$], angle: 90deg)
  content((6.22, 1.5), text(size: 9pt, fill: rgb("#1f77b4"))[$sigma_"max"$], angle: 90deg)
})
