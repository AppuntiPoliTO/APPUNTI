// Figura estratta da fatica.typ (riga 423) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.15cm, {
  // BBox: x in [-0.2, 14.3] (dx=14.5), y in [-0.45, 7.95], length=1.05cm -> larghezza = 15.22 cm <= 17.0 cm
  import draw: *

  // --- FASCIA SUPERIORE: sezione rotante, diagramma sigma e ciclo sinusoidale ---
  // Sezione circolare
  circle((3.3, 6.2), radius: 1.1, stroke: 1pt, fill: white)
  line((1.95, 6.2), (8.35, 6.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((3.3, 4.9), (3.3, 7.5), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((3.3, 6.2), start: 115deg, stop: 225deg, radius: 0.65, anchor: "origin", mark: (end: ">", scale: 0.6), stroke: 0.75pt)
  content((3.02, 5.90), text(size: 8pt)[$omega$], anchor: "center")
  circle((2.52, 6.98), radius: 0.08, fill: rgb("#2e7d32"), stroke: 0.6pt)
  content((2.38, 7.08), text(size: 7.5pt, fill: rgb("#2e7d32"), weight: "bold")[$P_0$], anchor: "south-east")

  // Linee di proiezione dalla sezione alla distribuzione lineare
  line((3.3, 7.3), (7.25, 7.3), stroke: (dash: "dotted", thickness: 0.6pt))
  line((3.3, 5.1), (5.35, 5.1), stroke: (dash: "dotted", thickness: 0.6pt))

  // Distribuzione lineare delle tensioni
  line((6.3, 6.2), (6.3, 7.3), (7.25, 7.3), close: true, fill: black.transparentize(86%), stroke: 0.85pt)
  line((6.3, 6.2), (6.3, 5.1), (5.35, 5.1), close: true, fill: black.transparentize(86%), stroke: 0.85pt)
  line((6.3, 4.95), (6.3, 7.45), stroke: 0.75pt)
  line((5.35, 5.1), (7.25, 7.3), stroke: 1.05pt)
  content((7.25, 7.42), text(size: 8pt)[$+sigma_"max"$], anchor: "south")
  content((5.35, 4.98), text(size: 8pt)[$-sigma_"max"$], anchor: "north")

  // Ciclo sinusoidale sigma(t)
  line((8.9, 4.85), (8.9, 7.70), stroke: 0.85pt, mark: (end: ">", scale: 0.65))
  line((8.7, 6.20), (13.7, 6.20), stroke: 0.85pt, mark: (end: ">", scale: 0.65))
  content((8.75, 7.65), text(size: 8.5pt)[$sigma$], anchor: "east")
  content((13.8, 6.20), text(size: 8.5pt)[$t$], anchor: "west")
  line((8.9, 7.3), (13.2, 7.3), stroke: (dash: "dotted", thickness: 0.6pt))
  line((8.9, 5.1), (13.2, 5.1), stroke: (dash: "dotted", thickness: 0.6pt))

  bezier((8.9, 6.2), (9.9, 6.2), (9.23, 7.666), (9.57, 7.666), stroke: (paint: blue, thickness: 1.05pt))
  bezier((9.9, 6.2), (10.9, 6.2), (10.23, 4.734), (10.57, 4.734), stroke: (paint: blue, thickness: 1.05pt))
  bezier((10.9, 6.2), (11.9, 6.2), (11.23, 7.666), (11.57, 7.666), stroke: (paint: blue, thickness: 1.05pt))
  bezier((11.9, 6.2), (12.9, 6.2), (12.23, 4.734), (12.57, 4.734), stroke: (paint: blue, thickness: 1.05pt))

  // --- FASCIA INFERIORE SINISTRA: provetta su 4 appoggi ---
  line((0.58, 3.25), (6.55, 3.25), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((0.65, 3.25), start: 110deg, stop: 250deg, radius: (0.16, 0.35), anchor: "origin", mark: (end: ">", scale: 0.55), stroke: 0.75pt)
  content((0.30, 3.25), text(size: 8pt)[$omega$], anchor: "east")

  // Contorno provetta 4 appoggi
  line((0.85, 3.42), (1.95, 3.42), (2.30, 3.35), (4.70, 3.35), (5.05, 3.42), (6.15, 3.42),
       (6.15, 3.08), (5.05, 3.08), (4.70, 3.15), (2.30, 3.15), (1.95, 3.08), (0.85, 3.08),
       close: true, fill: black.transparentize(88%), stroke: 0.95pt)

  // Cuscinetti (4 appoggi)
  for bx in (1.15, 1.75, 5.25, 5.85) {
    rect((bx - 0.14, 3.42), (bx + 0.14, 3.64), fill: white, stroke: 0.7pt)
    line((bx - 0.14, 3.42), (bx + 0.14, 3.64), stroke: 0.55pt)
    line((bx - 0.14, 3.64), (bx + 0.14, 3.42), stroke: 0.55pt)
    rect((bx - 0.14, 2.86), (bx + 0.14, 3.08), fill: white, stroke: 0.7pt)
    line((bx - 0.14, 2.86), (bx + 0.14, 3.08), stroke: 0.55pt)
    line((bx - 0.14, 3.08), (bx + 0.14, 2.86), stroke: 0.55pt)
  }
  // Vincoli fissi esterni (appoggi 1.15 e 5.85)
  for gx in (1.15, 5.85) {
    line((gx - 0.24, 2.86), (gx + 0.24, 2.86), stroke: 0.8pt)
    line((gx - 0.20, 2.86), (gx - 0.30, 2.74), stroke: 0.55pt)
    line((gx - 0.05, 2.86), (gx - 0.15, 2.74), stroke: 0.55pt)
    line((gx + 0.10, 2.86), (gx + 0.00, 2.74), stroke: 0.55pt)
    line((gx + 0.24, 2.86), (gx + 0.14, 2.74), stroke: 0.55pt)
  }
  // Carichi P interni (1.75 e 5.25)
  for px in (1.75, 5.25) {
    line((px, 2.86), (px, 2.25), stroke: 0.9pt, mark: (end: ">", scale: 0.65))
    content((px, 2.18), text(size: 8pt)[$P$], anchor: "north")
    line((px, 2.00), (px, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
  }

  // Diagramma momento flettente M_f (4 appoggi)
  line((1.15, 1.35), (1.75, 0.50), (5.25, 0.50), (5.85, 1.35), close: true, fill: black.transparentize(82%), stroke: 0.9pt)
  content((3.50, 0.92), text(size: 8pt)[$M_f = "cost."$], anchor: "center")
  content((3.50, 0.05), text(size: 8pt, weight: "bold")[Provetta su quattro appoggi], anchor: "north")

  // --- FASCIA INFERIORE DESTRA: provetta a sbalzo ---
  line((8.38, 3.25), (14.15, 3.25), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((8.45, 3.25), start: 110deg, stop: 250deg, radius: (0.16, 0.35), anchor: "origin", mark: (end: ">", scale: 0.55), stroke: 0.75pt)
  content((8.10, 3.25), text(size: 8pt)[$omega$], anchor: "east")

  // Contorno provetta a sbalzo sagomata
  line((8.65, 3.42), (10.50, 3.42), (11.15, 3.34), (11.80, 3.34), (12.35, 3.40), (13.85, 3.40),
       (13.85, 3.10), (12.35, 3.10), (11.80, 3.16), (11.15, 3.16), (10.50, 3.08), (8.65, 3.08),
       close: true, fill: black.transparentize(88%), stroke: 0.95pt)

  // Cuscinetti di incastro (9.05, 10.05) e carico (13.55)
  for bx in (9.05, 10.05) {
    rect((bx - 0.14, 3.42), (bx + 0.14, 3.64), fill: white, stroke: 0.7pt)
    line((bx - 0.14, 3.42), (bx + 0.14, 3.64), stroke: 0.55pt)
    line((bx - 0.14, 3.64), (bx + 0.14, 3.42), stroke: 0.55pt)
    rect((bx - 0.14, 2.86), (bx + 0.14, 3.08), fill: white, stroke: 0.7pt)
    line((bx - 0.14, 2.86), (bx + 0.14, 3.08), stroke: 0.55pt)
    line((bx - 0.14, 3.08), (bx + 0.14, 2.86), stroke: 0.55pt)
    line((bx - 0.24, 2.86), (bx + 0.24, 2.86), stroke: 0.8pt)
    line((bx - 0.20, 2.86), (bx - 0.30, 2.74), stroke: 0.55pt)
    line((bx - 0.05, 2.86), (bx - 0.15, 2.74), stroke: 0.55pt)
    line((bx + 0.10, 2.86), (bx + 0.00, 2.74), stroke: 0.55pt)
    line((bx + 0.24, 2.86), (bx + 0.14, 2.74), stroke: 0.55pt)
  }
  rect((13.41, 3.40), (13.69, 3.62), fill: white, stroke: 0.7pt)
  line((13.41, 3.40), (13.69, 3.62), stroke: 0.55pt)
  line((13.41, 3.62), (13.69, 3.40), stroke: 0.55pt)
  rect((13.41, 2.88), (13.69, 3.10), fill: white, stroke: 0.7pt)
  line((13.41, 2.88), (13.69, 3.10), stroke: 0.55pt)
  line((13.41, 3.10), (13.69, 2.88), stroke: 0.55pt)

  line((13.55, 2.88), (13.55, 2.25), stroke: 0.9pt, mark: (end: ">", scale: 0.65))
  content((13.55, 2.18), text(size: 8pt)[$P$], anchor: "north")

  // Diagramma momento flettente triangolare (sbalzo) + proiezione gola
  line((10.05, 2.65), (10.05, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
  line((11.475, 3.16), (11.475, 0.85), stroke: (dash: "dashed", paint: red.transparentize(20%), thickness: 0.55pt))
  line((13.55, 2.00), (13.55, 1.35), stroke: (dash: "dotted", thickness: 0.55pt))
  line((9.05, 1.35), (10.05, 0.50), (13.55, 1.35), close: true, fill: black.transparentize(82%), stroke: 0.9pt)
  content((10.85, 0.98), text(size: 8pt)[$M_f$], anchor: "center")
  content((11.30, 0.05), text(size: 8pt, weight: "bold")[Provetta a sbalzo], anchor: "north")
})
