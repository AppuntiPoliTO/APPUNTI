// Figura estratta da collegamenti filettati.typ (riga 385) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *



  // Dettaglio testa esagonale in alto a destra
  line((5.00, 3.75), (5.30, 4.27), (5.90, 4.27), (6.20, 3.75), (5.90, 3.23), (5.30, 3.23), close: true, stroke: 1pt)
  circle((5.60, 3.75), radius: 0.52, stroke: 0.85pt)
  line((5.90, 4.27), (6.75, 4.27), stroke: 0.5pt)
  line((5.90, 3.23), (6.75, 3.23), stroke: 0.5pt)
  line((6.55, 3.23), (6.55, 4.27), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((6.68, 3.75), text(size: 7.5pt)[$D_("et") =$ diametro \ esterno testa], anchor: "west")

  // --- PANNELLO SINISTRO (bullone con dado) ---
  // Riempimenti e tratteggi bussola superiore
  line((-0.56, 0.0), (-0.38, 0.0), (-0.38, 1.55), (-0.56, 1.55), close: true, fill: luma(238), stroke: none)
  line((0.38, 0.0), (0.56, 0.0), (0.56, 1.55), (0.38, 1.55), close: true, fill: luma(238), stroke: none)
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
  line((-0.56, 0.0), (-0.38, 0.0), (-0.38, 1.55), (-0.56, 1.55), close: true, stroke: 0.9pt)
  line((0.38, 0.0), (0.56, 0.0), (0.56, 1.55), (0.38, 1.55), close: true, stroke: 0.9pt)

  // Piastra inferiore
  line((-1.65, -0.42), (-0.38, -0.42), (-0.38, 0.0), (-1.65, 0.0), close: true, fill: luma(238), stroke: none)
  line((0.38, -0.42), (1.65, -0.42), (1.65, 0.0), (0.38, 0.0), close: true, fill: luma(238), stroke: none)
  line((-1.65, -0.15), (-1.50, 0.0), stroke: 0.45pt)
  line((-1.65, -0.30), (-1.35, 0.0), stroke: 0.45pt)
  line((-1.62, -0.42), (-1.20, 0.0), stroke: 0.45pt)
  line((-1.47, -0.42), (-1.05, 0.0), stroke: 0.45pt)
  line((-1.32, -0.42), (-0.90, 0.0), stroke: 0.45pt)
  line((-1.17, -0.42), (-0.75, 0.0), stroke: 0.45pt)
  line((-1.02, -0.42), (-0.60, 0.0), stroke: 0.45pt)
  line((-0.87, -0.42), (-0.45, 0.0), stroke: 0.45pt)
  line((-0.72, -0.42), (-0.38, -0.08), stroke: 0.45pt)
  line((-0.57, -0.42), (-0.38, -0.23), stroke: 0.45pt)
  line((0.38, -0.19), (0.57, 0.0), stroke: 0.45pt)
  line((0.38, -0.34), (0.72, 0.0), stroke: 0.45pt)
  line((0.45, -0.42), (0.87, 0.0), stroke: 0.45pt)
  line((0.60, -0.42), (1.02, 0.0), stroke: 0.45pt)
  line((0.75, -0.42), (1.17, 0.0), stroke: 0.45pt)
  line((0.90, -0.42), (1.32, 0.0), stroke: 0.45pt)
  line((1.05, -0.42), (1.47, 0.0), stroke: 0.45pt)
  line((1.20, -0.42), (1.62, 0.0), stroke: 0.45pt)
  line((1.35, -0.42), (1.65, -0.12), stroke: 0.45pt)
  line((1.50, -0.42), (1.65, -0.27), stroke: 0.45pt)
  line((-1.65, -0.42), (-0.38, -0.42), (-0.38, 0.0), (-1.65, 0.0), close: true, stroke: 0.9pt)
  line((0.38, -0.42), (1.65, -0.42), (1.65, 0.0), (0.38, 0.0), close: true, stroke: 0.9pt)

  // Testa esagonale bullone sinistro
  line((-0.65, 1.55), (0.65, 1.55), stroke: 1pt)
  line((-0.65, 1.55), (-0.65, 1.99), stroke: 1pt)
  line((0.65, 1.55), (0.65, 1.99), stroke: 1pt)
  line((-0.325, 1.55), (-0.325, 1.99), stroke: 0.8pt)
  line((0.325, 1.55), (0.325, 1.99), stroke: 0.8pt)
  arc((-0.4875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.0, 1.99), start: 0deg, stop: 180deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((0.4875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  line((-0.4875, 2.05), (0.4875, 2.05), stroke: 1pt)

  // Gambo e filettatura bullone sinistro
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

  // Estremità sporgente bullone sinistro
  line((-0.32, -0.88), (-0.32, -1.42), (-0.25, -1.49), (0.25, -1.49), (0.32, -1.42), (0.32, -0.88), stroke: 1pt)
  line((-0.32, -1.42), (0.32, -1.42), stroke: 0.75pt)
  line((-0.26, -0.88), (-0.26, -1.42), stroke: 0.6pt)
  line((0.26, -0.88), (0.26, -1.42), stroke: 0.6pt)

  // Asse di simmetria sinistro
  line((0.0, -1.65), (0.0, 2.22), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote pannello sinistro
  line((-0.56, 1.55), (-0.56, 2.60), stroke: 0.5pt)
  line((0.56, 1.55), (0.56, 2.60), stroke: 0.5pt)
  line((-0.56, 2.45), (0.56, 2.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.0, 2.55), text(size: 8.5pt)[$D_p$], anchor: "south")

  line((-0.95, 0.78), (-0.38, 0.78), mark: (end: ">"), stroke: 0.6pt)
  line((0.95, 0.78), (0.38, 0.78), mark: (end: ">"), stroke: 0.6pt)
  content((1.02, 0.78), text(size: 8pt)[$d_f$], anchor: "west")

  line((0.56, 1.55), (2.15, 1.55), stroke: 0.5pt)
  line((1.65, -0.42), (2.15, -0.42), stroke: 0.5pt)
  line((1.95, -0.42), (1.95, 1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.05, 0.565), text(size: 8.5pt)[$L_p$], anchor: "west")

  line((-0.32, -1.42), (-0.32, -2.02), stroke: 0.5pt)
  line((0.32, -1.42), (0.32, -2.02), stroke: 0.5pt)
  line((-0.32, -1.88), (0.32, -1.88), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.0, -1.80), text(size: 8pt)[$D$], anchor: "south")

  // --- PANNELLO DESTRO (vite mordente su foro cieco) ---
  // Bussola superiore
  line((5.04, 0.0), (5.22, 0.0), (5.22, 1.55), (5.04, 1.55), close: true, fill: luma(200), stroke: 0.9pt)
  line((5.98, 0.0), (6.16, 0.0), (6.16, 1.55), (5.98, 1.55), close: true, fill: luma(200), stroke: 0.9pt)

  // Blocco inferiore con foro cieco filettato
  line((4.20, -2.10), (7.00, -2.10), (7.00, 0.0), (4.20, 0.0), close: true, fill: luma(215), stroke: 0.9pt)
  line((5.22, 0.0), (5.22, -1.45), (5.60, -1.68), (5.98, -1.45), (5.98, 0.0), close: true, fill: white, stroke: 0.8pt)

  // Testa esagonale vite destra
  line((4.95, 1.55), (6.25, 1.55), stroke: 1pt)
  line((4.95, 1.55), (4.95, 1.99), stroke: 1pt)
  line((6.25, 1.55), (6.25, 1.99), stroke: 1pt)
  line((5.275, 1.55), (5.275, 1.99), stroke: 0.8pt)
  line((5.925, 1.55), (5.925, 1.99), stroke: 0.8pt)
  arc((5.1125, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  arc((5.60, 1.99), start: 0deg, stop: 180deg, radius: (0.325, 0.06), anchor: "origin", stroke: 1pt)
  arc((6.0875, 1.99), start: 0deg, stop: 180deg, radius: (0.1625, 0.06), anchor: "origin", stroke: 1pt)
  line((5.1125, 2.05), (6.0875, 2.05), stroke: 1pt)

  // Gambo e filettatura vite destra
  line((5.28, 1.55), (5.28, -1.28), (5.35, -1.35), (5.85, -1.35), (5.92, -1.28), (5.92, 1.55), stroke: 1pt)
  line((5.28, 0.38), (5.92, 0.38), stroke: 0.75pt)
  line((5.28, -1.28), (5.92, -1.28), stroke: 0.75pt)
  line((5.34, 0.38), (5.34, -1.28), stroke: 0.6pt)
  line((5.86, 0.38), (5.86, -1.28), stroke: 0.6pt)
  line((5.22, -1.45), (5.98, -1.45), stroke: 0.6pt)

  // Asse di simmetria destro
  line((5.60, -1.85), (5.60, 2.22), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote pannello destro
  line((5.04, 1.55), (5.04, 2.60), stroke: 0.5pt)
  line((6.16, 1.55), (6.16, 2.60), stroke: 0.5pt)
  line((5.04, 2.45), (6.16, 2.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((5.60, 2.55), text(size: 8.5pt)[$D_p$], anchor: "south")

  line((4.65, 0.78), (5.22, 0.78), mark: (end: ">"), stroke: 0.6pt)
  line((6.55, 0.78), (5.98, 0.78), mark: (end: ">"), stroke: 0.6pt)
  content((6.62, 0.78), text(size: 8pt)[$d_f$], anchor: "west")

  line((6.16, 1.55), (7.65, 1.55), stroke: 0.5pt)
  line((7.00, 0.00), (7.65, 0.00), stroke: 0.5pt)
  line((7.45, 0.00), (7.45, 1.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((7.55, 0.775), text(size: 8.5pt)[$L_p$], anchor: "west")
})
