// Figura estratta da collegamenti filettati.typ (riga 701) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // --- DETTAGLIO TESTA ESAGONALE (A SINISTRA, ALLINEATO IN ORIZZONTALE A Y = 0) ---
  line((-5.15, 0.00), (-4.825, 0.563), (-4.175, 0.563), (-3.85, 0.00), (-4.175, -0.563), (-4.825, -0.563), close: true, fill: luma(248), stroke: 1pt)
  circle((-4.50, 0.00), radius: 0.563, stroke: 0.85pt)
  line((-4.175, 0.563), (-3.35, 0.563), stroke: 0.5pt)
  line((-4.175, -0.563), (-3.35, -0.563), stroke: 0.5pt)
  line((-3.55, -0.563), (-3.55, 0.563), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-3.42, 0.00), text(size: 8pt)[$d_("et")$], anchor: "west")

  // --- GIUNZIONE BULLONATA LARGA (A DESTRA, ALLINEATA SULLO STESSO ASSE Y = 0) ---
  // Sfondi delle due piastre
  rect((-2.40, 0.00), (-0.36, 1.10), fill: luma(240), stroke: none)
  rect((0.36, 0.00), (2.40, 1.10), fill: luma(240), stroke: none)
  rect((-2.40, -1.10), (-0.36, 0.00), fill: luma(232), stroke: none)
  rect((0.36, -1.10), (2.40, 0.00), fill: luma(232), stroke: none)

  // Tratteggio piastra superiore
  line((-2.40, 0.20), (-2.20, 0.00), stroke: 0.45pt)
  line((-2.40, 0.42), (-1.98, 0.00), stroke: 0.45pt)
  line((-2.40, 0.64), (-1.76, 0.00), stroke: 0.45pt)
  line((-2.40, 0.86), (-1.54, 0.00), stroke: 0.45pt)
  line((-2.40, 1.08), (-1.32, 0.00), stroke: 0.45pt)
  line((-2.20, 1.10), (-1.10, 0.00), stroke: 0.45pt)
  line((-1.98, 1.10), (-0.88, 0.00), stroke: 0.45pt)
  line((-1.76, 1.10), (-0.66, 0.00), stroke: 0.45pt)
  line((-1.54, 1.10), (-0.44, 0.00), stroke: 0.45pt)
  line((-1.32, 1.10), (-0.36, 0.14), stroke: 0.45pt)
  line((-1.10, 1.10), (-0.36, 0.36), stroke: 0.45pt)
  line((-0.88, 1.10), (-0.36, 0.58), stroke: 0.45pt)
  line((-0.66, 1.10), (-0.36, 0.80), stroke: 0.45pt)
  line((-0.44, 1.10), (-0.36, 1.02), stroke: 0.45pt)

  line((0.36, 0.22), (0.58, 0.00), stroke: 0.45pt)
  line((0.36, 0.44), (0.80, 0.00), stroke: 0.45pt)
  line((0.36, 0.66), (1.02, 0.00), stroke: 0.45pt)
  line((0.36, 0.88), (1.24, 0.00), stroke: 0.45pt)
  line((0.36, 1.10), (1.46, 0.00), stroke: 0.45pt)
  line((0.58, 1.10), (1.68, 0.00), stroke: 0.45pt)
  line((0.80, 1.10), (1.90, 0.00), stroke: 0.45pt)
  line((1.02, 1.10), (2.12, 0.00), stroke: 0.45pt)
  line((1.24, 1.10), (2.34, 0.00), stroke: 0.45pt)
  line((1.46, 1.10), (2.40, 0.16), stroke: 0.45pt)
  line((1.68, 1.10), (2.40, 0.38), stroke: 0.45pt)
  line((1.90, 1.10), (2.40, 0.60), stroke: 0.45pt)
  line((2.12, 1.10), (2.40, 0.82), stroke: 0.45pt)
  line((2.34, 1.10), (2.40, 1.04), stroke: 0.45pt)

  // Tratteggio piastra inferiore
  line((-2.40, -0.20), (-2.20, 0.00), stroke: 0.45pt)
  line((-2.40, -0.42), (-1.98, 0.00), stroke: 0.45pt)
  line((-2.40, -0.64), (-1.76, 0.00), stroke: 0.45pt)
  line((-2.40, -0.86), (-1.54, 0.00), stroke: 0.45pt)
  line((-2.40, -1.08), (-1.32, 0.00), stroke: 0.45pt)
  line((-2.20, -1.10), (-1.10, 0.00), stroke: 0.45pt)
  line((-1.98, -1.10), (-0.88, 0.00), stroke: 0.45pt)
  line((-1.76, -1.10), (-0.66, 0.00), stroke: 0.45pt)
  line((-1.54, -1.10), (-0.44, 0.00), stroke: 0.45pt)
  line((-1.32, -1.10), (-0.36, -0.14), stroke: 0.45pt)
  line((-1.10, -1.10), (-0.36, -0.36), stroke: 0.45pt)
  line((-0.88, -1.10), (-0.36, -0.58), stroke: 0.45pt)
  line((-0.66, -1.10), (-0.36, -0.80), stroke: 0.45pt)
  line((-0.44, -1.10), (-0.36, -1.02), stroke: 0.45pt)

  line((0.36, -0.22), (0.58, 0.00), stroke: 0.45pt)
  line((0.36, -0.44), (0.80, 0.00), stroke: 0.45pt)
  line((0.36, -0.66), (1.02, 0.00), stroke: 0.45pt)
  line((0.36, -0.88), (1.24, 0.00), stroke: 0.45pt)
  line((0.36, -1.10), (1.46, 0.00), stroke: 0.45pt)
  line((0.58, -1.10), (1.68, 0.00), stroke: 0.45pt)
  line((0.80, -1.10), (1.90, 0.00), stroke: 0.45pt)
  line((1.02, -1.10), (2.12, 0.00), stroke: 0.45pt)
  line((1.24, -1.10), (2.34, 0.00), stroke: 0.45pt)
  line((1.46, -1.10), (2.40, -0.16), stroke: 0.45pt)
  line((1.68, -1.10), (2.40, -0.38), stroke: 0.45pt)
  line((1.90, -1.10), (2.40, -0.60), stroke: 0.45pt)
  line((2.12, -1.10), (2.40, -0.82), stroke: 0.45pt)
  line((2.34, -1.10), (2.40, -1.04), stroke: 0.45pt)

  // Contorni piastre
  rect((-2.40, 0.00), (-0.36, 1.10), stroke: 0.9pt)
  rect((0.36, 0.00), (2.40, 1.10), stroke: 0.9pt)
  rect((-2.40, -1.10), (-0.36, 0.00), stroke: 0.9pt)
  rect((0.36, -1.10), (2.40, 0.00), stroke: 0.9pt)
  line((-0.36, 1.10), (0.36, 1.10), stroke: 0.9pt)
  line((-0.36, -1.10), (0.36, -1.10), stroke: 0.9pt)

  // Gambo e filettatura
  line((-0.32, -1.10), (-0.32, 1.10), stroke: 1pt)
  line((0.32, -1.10), (0.32, 1.10), stroke: 1pt)
  line((-0.32, -0.25), (0.32, -0.25), stroke: 0.75pt)
  line((-0.26, -0.25), (-0.26, -1.10), stroke: 0.6pt)
  line((0.26, -0.25), (0.26, -1.10), stroke: 0.6pt)
  line((-0.32, -0.15), (-0.26, -0.25), stroke: 0.6pt)
  line((0.32, -0.15), (0.26, -0.25), stroke: 0.6pt)

  // Testa esagonale superiore (con archi canonici)
  line((-0.64, 1.10), (0.64, 1.10), stroke: 1pt)
  line((-0.64, 1.10), (-0.64, 1.58), stroke: 1pt)
  line((-0.32, 1.10), (-0.32, 1.58), stroke: 0.8pt)
  line((0.32, 1.10), (0.32, 1.58), stroke: 0.8pt)
  line((0.64, 1.10), (0.64, 1.58), stroke: 1pt)
  arc((-0.48, 1.58), start: 0deg, stop: 180deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.00, 1.58), start: 0deg, stop: 180deg, radius: (0.32, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.48, 1.58), start: 0deg, stop: 180deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)
  line((-0.48, 1.64), (0.48, 1.64), stroke: 1pt)

  // Dado inferiore (con archi canonici)
  line((-0.48, -1.10), (0.48, -1.10), stroke: 1pt)
  line((-0.48, -1.64), (0.48, -1.64), stroke: 1pt)
  line((-0.64, -1.16), (-0.64, -1.58), stroke: 1pt)
  line((-0.32, -1.16), (-0.32, -1.58), stroke: 0.8pt)
  line((0.32, -1.16), (0.32, -1.58), stroke: 0.8pt)
  line((0.64, -1.16), (0.64, -1.58), stroke: 1pt)
  arc((-0.48, -1.16), start: 0deg, stop: 180deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.00, -1.16), start: 0deg, stop: 180deg, radius: (0.32, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.48, -1.16), start: 0deg, stop: 180deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)
  arc((-0.48, -1.58), start: 180deg, stop: 360deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.00, -1.58), start: 180deg, stop: 360deg, radius: (0.32, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.48, -1.58), start: 180deg, stop: 360deg, radius: (0.16, 0.06), anchor: "origin", stroke: 1pt)

  // Estremità sporgente bullone
  line((-0.32, -1.64), (-0.32, -2.17), (-0.25, -2.25), (0.25, -2.25), (0.32, -2.17), (0.32, -1.64), stroke: 1pt)
  line((-0.32, -2.17), (0.32, -2.17), stroke: 0.75pt)
  line((-0.26, -1.64), (-0.26, -2.17), stroke: 0.6pt)
  line((0.26, -1.64), (0.26, -2.17), stroke: 0.6pt)

  // Asse di simmetria
  line((0.00, -2.42), (0.00, 1.85), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote
  line((2.40, 1.10), (3.15, 1.10), stroke: 0.5pt)
  line((2.40, -1.10), (3.15, -1.10), stroke: 0.5pt)
  line((2.90, -1.10), (2.90, 1.10), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.02, 0.00), text(size: 8.5pt)[$L_p$], anchor: "west")

  rect((0.68, -0.72), (1.15, -0.30), fill: white, stroke: none)
  content((0.91, -0.51), text(size: 8pt)[$d_f$], anchor: "center")
  line((-0.88, -0.80), (-0.36, -0.80), mark: (end: ">"), stroke: 0.6pt)
  line((0.88, -0.80), (0.36, -0.80), mark: (end: ">"), stroke: 0.6pt)

  line((-0.32, -2.17), (-0.32, -2.75), stroke: 0.5pt)
  line((0.32, -2.17), (0.32, -2.75), stroke: 0.5pt)
  line((-0.32, -2.62), (0.32, -2.62), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.00, -2.55), text(size: 8pt)[$D$], anchor: "south")
})
