// Figura estratta da fatica.typ (riga 3010) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.96cm, {
  // BBox: x in [-0.20, 7.55] (dx=7.75), y in [-0.45, 4.15], length=0.96cm -> larghezza = 7.44 cm <= 8.2 cm
  import draw: *

  // Assi cartesiani
  line((0, 0), (7.25, 0), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
  content((7.25, -0.15), text(size: 7.5pt)[Tempo], anchor: "north-east")
  line((0, 0), (0, 4.05), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
  content((0.15, 3.98), text(size: 7.5pt)[Tensione], anchor: "west")

  // Linee guida orizzontali tratteggiate
  line((0, 3.4), (6.05, 3.4), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))
  line((0, 2.25), (5.45, 2.25), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))
  line((0, 1.1), (6.05, 1.1), stroke: (dash: "dashed", thickness: 0.55pt, paint: black.transparentize(45%)))

  // Sinusoide con Bezier (punti di controllo a y0 +/- 1.333 * A)
  let ym = 2.25
  let amp = 1.15
  let w = 1.05
  let x0 = 0.20
  let dy = 1.333 * amp
  bezier((x0, ym), (x0 + w, ym), (x0 + 0.33 * w, ym + dy), (x0 + 0.67 * w, ym + dy), stroke: (paint: blue, thickness: 1.1pt))
  bezier((x0 + w, ym), (x0 + 2 * w, ym), (x0 + 1.33 * w, ym - dy), (x0 + 1.67 * w, ym - dy), stroke: (paint: blue, thickness: 1.1pt))
  bezier((x0 + 2 * w, ym), (x0 + 3 * w, ym), (x0 + 2.33 * w, ym + dy), (x0 + 2.67 * w, ym + dy), stroke: (paint: blue, thickness: 1.1pt))
  bezier((x0 + 3 * w, ym), (x0 + 4 * w, ym), (x0 + 3.33 * w, ym - dy), (x0 + 3.67 * w, ym - dy), stroke: (paint: blue, thickness: 1.1pt))

  // Quote verticali sul ciclo
  line((0.725, 0), (0.725, 2.25), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((0.84, 1.35), text(size: 7.5pt)[$sigma_m$], anchor: "west")

  line((1.775, 0), (1.775, 1.10), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((1.89, 0.55), text(size: 7.5pt)[$sigma_"min"$], anchor: "west")

  line((2.825, 0), (2.825, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((2.94, 1.65), text(size: 7.5pt)[$sigma_"max"$], anchor: "west")

  // Quote laterali di ampiezza
  line((4.80, 2.25), (4.80, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((4.92, 2.83), text(size: 7.5pt)[$sigma_a$], anchor: "west")

  line((4.80, 1.10), (4.80, 2.25), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((4.92, 1.68), text(size: 7.5pt)[$sigma_a$], anchor: "west")

  line((5.75, 1.10), (5.75, 3.40), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45, fill: black))
  content((5.87, 2.25), text(size: 7.5pt)[$Delta sigma = 2 sigma_a$], anchor: "west")
})
