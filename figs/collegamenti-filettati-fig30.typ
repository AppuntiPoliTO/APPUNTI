// Figura estratta da collegamenti filettati.typ (riga 385) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // --- DETTAGLIO TESTA ESAGONALE (A SINISTRA, ALLINEATO IN ORIZZONTALE) ---
  line((-4.75, 0.55), (-4.425, 1.113), (-3.775, 1.113), (-3.45, 0.55), (-3.775, -0.013), (-4.425, -0.013), close: true, fill: luma(248), stroke: 1pt)
  circle((-4.10, 0.55), radius: 0.563, stroke: 0.85pt)
  line((-3.775, 1.113), (-2.95, 1.113), stroke: 0.5pt)
  line((-3.775, -0.013), (-2.95, -0.013), stroke: 0.5pt)
  line((-3.15, -0.013), (-3.15, 1.113), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-3.02, 0.55), text(size: 7.5pt)[$D_("et")$], anchor: "west")
  content((-4.10, -0.35), text(size: 7pt)[diametro est. testa], anchor: "north")

  // --- PANNELLO CENTRALE (BULLONE PASSANTE CON DADO) ---
  // Bussola superiore (riempimento + tratteggio + contorno)
  rect((-0.56, 0.00), (-0.38, 1.55), fill: luma(238), stroke: none)
  rect((0.38, 0.00), (0.56, 1.55), fill: luma(238), stroke: none)
  line((-0.56, 0.00), (-0.38, 0.18), stroke: 0.45pt)
  line((-0.56, 0.15), (-0.38, 0.33), stroke: 0.45pt)
  line((-0.56, 0.30), (-0.38, 0.48), stroke: 0.45pt)
  line((-0.56, 0.45), (-0.38, 0.63), stroke: 0.45pt)
  line((-0.56, 0.60), (-0.38, 0.78), stroke: 0.45pt)
  line((-0.56, 0.75), (-0.38, 0.93), stroke: 0.45pt)
  line((-0.56, 0.90), (-0.38, 1.08), stroke: 0.45pt)
  line((-0.56, 1.05), (-0.38, 1.23), stroke: 0.45pt)
  line((-0.56, 1.20), (-0.38, 1.38), stroke: 0.45pt)
  line((-0.56, 1.35), (-0.38, 1.53), stroke: 0.45pt)
  line((0.38, 0.00), (0.56, 0.18), stroke: 0.45pt)
  line((0.38, 0.15), (0.56, 0.33), stroke: 0.45pt)
  line((0.38, 0.30), (0.56, 0.48), stroke: 0.45pt)
  line((0.38, 0.45), (0.56, 0.63), stroke: 0.45pt)
  line((0.38, 0.60), (0.56, 0.78), stroke: 0.45pt)
  line((0.38, 0.75), (0.56, 0.93), stroke: 0.45pt)
  line((0.38, 0.90), (0.56, 1.08), stroke: 0.45pt)
  line((0.38, 1.05), (0.56, 1.23), stroke: 0.45pt)
  line((0.38, 1.20), (0.56, 1.38), stroke: 0.45pt)
  line((0.38, 1.35), (0.56, 1.53), stroke: 0.45pt)
  rect((-0.56, 0.00), (-0.38, 1.55), stroke: 0.9pt)
  rect((0.38, 0.00), (0.56, 1.55), stroke: 0.9pt)

  // Piastra inferiore (riempimento + tratteggio + contorno)
  rect((-1.65, -0.42), (-0.38, 0.00), fill: luma(238), stroke: none)
  rect((0.38, -0.42), (1.65, 0.00), fill: luma(238), stroke: none)
  line((-1.65, -0.15), (-1.50, 0.00), stroke: 0.45pt)
  line((-1.65, -0.30), (-1.35, 0.00), stroke: 0.45pt)
  line((-1.62, -0.42), (-1.20, 0.00), stroke: 0.45pt)
  line((-1.47, -0.42), (-1.05, 0.00), stroke: 0.45pt)
  line((-1.32, -0.42), (-0.90, 0.00), stroke: 0.45pt)
  line((-1.17, -0.42), (-0.75, 0.00), stroke: 0.45pt)
  line((-1.02, -0.42), (-0.60, 0.00), stroke: 0.45pt)
  line((-0.87, -0.42), (-0.45, 0.00), stroke: 0.45pt)
  line((-0.72, -0.42), (-0.38, -0.08), stroke: 0.45pt)
  line((-0.57, -0.42), (-0.38, -0.23), stroke: 0.45pt)
  line((0.38, -0.19), (0.57, 0.00), stroke: 0.45pt)
  line((0.38, -0.34), (0.72, 0.00), stroke: 0.45pt)
  line((0.45, -0.42), (0.87, 0.00), stroke: 0.45pt)
  line((0.60, -0.42), (1.02, 0.00), stroke: 0.45pt)
  line((0.75, -0.42), (1.17, 0.00), stroke: 0.45pt)
  line((0.90, -0.42), (1.32, 0.00), stroke: 0.45pt)
  line((1.05, -0.42), (1.47, 0.00), stroke: 0.45pt)
  line((1.20, -0.42), (1.62, 0.00), stroke: 0.45pt)
  line((1.35, -0.42), (1.65, -0.12), stroke: 0.45pt)
  line((1.50, -0.42), (1.65, -0.27), stroke: 0.45pt)
  rect((-1.65, -0.42), (-0.38, 0.00), stroke: 0.9pt)
  rect((0.38, -0.42), (1.65, 0.00), stroke: 0.9pt)

  // Testa esagonale bullone
  line((-0.65, 1.55), (0.65, 1.55), stroke: 1pt)
  line((-0.65, 1.55), (-0.65, 1.99), stroke: 1pt)
  line((0.65, 1.55), (0.65, 1.99), stroke: 1pt)
  line((-0.325, 1.55), (-0.325, 1.99), stroke: 0.8pt)
  line((0.325, 1.55), (0.325, 1.99), stroke: 0.8pt)
  arc((-0.4875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.0, 1.99), start: 0deg, stop: 180deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.4875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  line((-0.4875, 2.05), (0.4875, 2.05), stroke: 1pt)

  // Gambo e filettatura bullone
  line((-0.32, 1.55), (-0.32, -0.42), stroke: 1pt)
  line((0.32, 1.55), (0.32, -0.42), stroke: 1pt)
  line((-0.32, 0.38), (0.32, 0.38), stroke: 0.75pt)
  line((-0.26, 0.38), (-0.26, -0.42), stroke: 0.6pt)
  line((0.26, 0.38), (0.26, -0.42), stroke: 0.6pt)

  // Dado inferiore
  line((-0.4875, -0.42), (0.4875, -0.42), stroke: 1pt)
  line((-0.4875, -0.88), (0.4875, -0.88), stroke: 1pt)
  line((-0.65, -0.48), (-0.65, -0.82), stroke: 1pt)
  line((0.65, -0.48), (0.65, -0.82), stroke: 1pt)
  line((-0.325, -0.48), (-0.325, -0.82), stroke: 0.8pt)
  line((0.325, -0.48), (0.325, -0.82), stroke: 0.8pt)
  arc((-0.4875, -0.48), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.0, -0.48), start: 0deg, stop: 180deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.4875, -0.48), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((-0.4875, -0.82), start: 180deg, stop: 360deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.0, -0.82), start: 180deg, stop: 360deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.4875, -0.82), start: 180deg, stop: 360deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)

  // Estremità sporgente bullone
  line((-0.32, -0.88), (-0.32, -1.42), (-0.25, -1.49), (0.25, -1.49), (0.32, -1.42), (0.32, -0.88), stroke: 1pt)
  line((-0.32, -1.42), (0.32, -1.42), stroke: 0.75pt)
  line((-0.26, -0.88), (-0.26, -1.42), stroke: 0.6pt)
  line((0.26, -0.88), (0.26, -1.42), stroke: 0.6pt)

  // Asse di simmetria centrale
  line((0.0, -1.65), (0.0, 2.22), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote pannello centrale
  line((-0.56, 1.55), (-0.56, 2.50), stroke: 0.5pt)
  line((0.56, 1.55), (0.56, 2.50), stroke: 0.5pt)
  line((-0.56, 2.35), (0.56, 2.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.0, 2.45), text(size: 8.5pt)[$D_p$], anchor: "south")

  line((-0.95, 0.78), (-0.38, 0.78), mark: (end: ">"), stroke: 0.6pt)
  line((0.95, 0.78), (0.38, 0.78), mark: (end: ">"), stroke: 0.6pt)
  content((1.02, 0.78), text(size: 8pt)[$d_f$], anchor: "west")

  line((0.56, 1.55), (2.10, 1.55), stroke: 0.5pt)
  line((1.65, -0.42), (2.10, -0.42), stroke: 0.5pt)
  line((1.90, -0.42), (1.90, 1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.00, 0.565), text(size: 8.5pt)[$L_p$], anchor: "west")

  line((-0.32, -1.42), (-0.32, -1.95), stroke: 0.5pt)
  line((0.32, -1.42), (0.32, -1.95), stroke: 0.5pt)
  line((-0.32, -1.82), (0.32, -1.82), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.0, -1.75), text(size: 8pt)[$D$], anchor: "south")

  // --- PANNELLO DESTRO (VITE MORDENTE SU FORO CIECO) ---
  // Bussola superiore
  rect((4.24, 0.00), (4.42, 1.55), fill: luma(200), stroke: 0.9pt)
  rect((5.18, 0.00), (5.36, 1.55), fill: luma(200), stroke: 0.9pt)

  // Blocco inferiore con foro cieco filettato
  rect((3.40, -1.95), (6.20, 0.00), fill: luma(215), stroke: 0.9pt)
  line((4.42, 0.00), (4.42, -1.45), (4.80, -1.68), (5.18, -1.45), (5.18, 0.00), close: true, fill: white, stroke: 0.8pt)

  // Testa esagonale vite destra
  line((4.15, 1.55), (5.45, 1.55), stroke: 1pt)
  line((4.15, 1.55), (4.15, 1.99), stroke: 1pt)
  line((5.45, 1.55), (5.45, 1.99), stroke: 1pt)
  line((4.475, 1.55), (4.475, 1.99), stroke: 0.8pt)
  line((5.125, 1.55), (5.125, 1.99), stroke: 0.8pt)
  arc((4.3125, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((4.80, 1.99), start: 0deg, stop: 180deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((5.2875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  line((4.3125, 2.05), (5.2875, 2.05), stroke: 1pt)

  // Gambo e filettatura vite destra
  line((4.48, 1.55), (4.48, -1.28), (4.55, -1.35), (5.05, -1.35), (5.12, -1.28), (5.12, 1.55), stroke: 1pt)
  line((4.48, 0.38), (5.12, 0.38), stroke: 0.75pt)
  line((4.48, -1.28), (5.12, -1.28), stroke: 0.75pt)
  line((4.54, 0.38), (4.54, -1.28), stroke: 0.6pt)
  line((5.06, 0.38), (5.06, -1.28), stroke: 0.6pt)
  line((4.42, -1.45), (5.18, -1.45), stroke: 0.6pt)

  // Asse di simmetria destro
  line((4.80, -1.85), (4.80, 2.22), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote pannello destro
  line((4.24, 1.55), (4.24, 2.50), stroke: 0.5pt)
  line((5.36, 1.55), (5.36, 2.50), stroke: 0.5pt)
  line((4.24, 2.35), (5.36, 2.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.80, 2.45), text(size: 8.5pt)[$D_p$], anchor: "south")

  line((3.85, 0.78), (4.42, 0.78), mark: (end: ">"), stroke: 0.6pt)
  line((5.75, 0.78), (5.18, 0.78), mark: (end: ">"), stroke: 0.6pt)
  content((5.82, 0.78), text(size: 8pt)[$d_f$], anchor: "west")

  line((5.36, 1.55), (6.80, 1.55), stroke: 0.5pt)
  line((6.20, 0.00), (6.80, 0.00), stroke: 0.5pt)
  line((6.60, 0.00), (6.60, 1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((6.70, 0.775), text(size: 8.5pt)[$L_p$], anchor: "west")
})
