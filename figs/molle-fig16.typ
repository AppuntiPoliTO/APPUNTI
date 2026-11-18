// Figura estratta da molle.typ (riga 1726) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.60cm, {
  import draw: *

  // --- PIASTRA DI COMPRESSIONE SUPERIORE E STELO ---
  // Faccia superiore in prospettiva
  line((-2.25, 0.0), (2.25, 0.0), (1.90, 0.45), (-1.90, 0.45), close: true, fill: luma(185), stroke: 0.9pt)
  // Faccia anteriore spessa
  rect((-2.25, -0.35), (2.25, 0.0), fill: luma(145), stroke: 0.9pt)

  // Stelo cilindrico centrale
  rect((-0.42, 0.22), (0.42, 1.15), fill: luma(165), stroke: 0.9pt)
  arc((0.0, 0.22), start: 180deg, stop: 360deg, radius: (0.42, 0.10), anchor: "origin", fill: luma(165), stroke: 0.9pt)
  line((-0.42, 0.22), (-0.42, 1.15), stroke: 0.9pt)
  line((0.42, 0.22), (0.42, 1.15), stroke: 0.9pt)

  // --- FRECCIA DI SCHIACCIAMENTO A SINISTRA ---
  line((-1.45, -0.75), (-1.45, -2.05), mark: (end: ">"), stroke: 1.6pt)

  // --- ASSE DEFORMATO DELLA MOLLA (INGOBBAMENTO / BUCKLING) ---
  bezier((0.0, -0.35), (1.15, -3.55), (0.0, -1.55), (1.15, -2.25), stroke: (dash: "dash-dotted", thickness: 0.6pt, paint: luma(120)))
  bezier((1.15, -3.55), (0.15, -6.75), (1.15, -4.85), (0.15, -5.55), stroke: (dash: "dash-dotted", thickness: 0.6pt, paint: luma(120)))

  // --- TRATTI POSTERIORI DELLE SPIRE (SCURI, DIETRO) ---
  line((0.85, -0.50), (-0.77, -1.25), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.03, -0.85), (-0.54, -1.80), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.29, -1.25), (-0.28, -2.35), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.57, -1.68), (0.01, -2.92), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.82, -2.18), (0.20, -3.45), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.98, -2.72), (0.29, -3.95), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((2.05, -3.28), (0.22, -4.45), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((2.01, -3.88), (0.04, -4.92), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.86, -4.50), (-0.21, -5.38), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.62, -5.12), (-0.45, -5.85), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.35, -5.70), (-0.64, -6.30), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))
  line((1.10, -6.22), (-0.70, -6.62), stroke: (paint: rgb("#8a4236"), thickness: 4.8pt, cap: "round"))

  // --- TRATTI ANTERIORI DELLE SPIRE (BORDO NERO + ANIMA RAME CHIARO) ---
  // Spira 0 (appoggio superiore piatto)
  line((-0.85, -0.50), (0.85, -0.50), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.85, -0.50), (0.85, -0.50), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 1
  line((-0.77, -1.25), (1.03, -0.85), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.77, -1.25), (1.03, -0.85), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 2
  line((-0.54, -1.80), (1.29, -1.25), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.54, -1.80), (1.29, -1.25), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 3
  line((-0.28, -2.35), (1.57, -1.68), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.28, -2.35), (1.57, -1.68), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 4
  line((0.01, -2.92), (1.82, -2.18), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.01, -2.92), (1.82, -2.18), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 5
  line((0.20, -3.45), (1.98, -2.72), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.20, -3.45), (1.98, -2.72), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 6 (massima inflessione laterale)
  line((0.29, -3.95), (2.05, -3.28), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.29, -3.95), (2.05, -3.28), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 7
  line((0.22, -4.45), (2.01, -3.88), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.22, -4.45), (2.01, -3.88), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 8
  line((0.04, -4.92), (1.86, -4.50), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((0.04, -4.92), (1.86, -4.50), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 9
  line((-0.21, -5.38), (1.62, -5.12), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.21, -5.38), (1.62, -5.12), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 10
  line((-0.45, -5.85), (1.35, -5.70), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.45, -5.85), (1.35, -5.70), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 11
  line((-0.64, -6.30), (1.10, -6.22), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.64, -6.30), (1.10, -6.22), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))

  // Spira 12 (base inferiore piatta)
  line((-0.70, -6.62), (1.00, -6.62), stroke: (paint: black, thickness: 6.2pt, cap: "round"))
  line((-0.70, -6.62), (1.00, -6.62), stroke: (paint: rgb("#e89984"), thickness: 4.2pt, cap: "round"))
})
