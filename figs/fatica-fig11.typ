// Figura estratta da fatica.typ (riga 1048) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  // ==================== GRIGLIA DELLA TABELLA UNIFICATA ====================
  // Linee orizzontali
  line((0.0, 4.2), (11.6, 4.2), stroke: 1pt)
  line((0.0, 2.1), (11.6, 2.1), stroke: 0.5pt)
  line((0.0, 0.0), (11.6, 0.0), stroke: 1pt)

  // Linee orizzontali nell'intestazione
  line((3.7, 4.85), (7.5, 4.85), stroke: 0.8pt)
  line((7.7, 4.85), (11.5, 4.85), stroke: 0.8pt)

  // Linee verticali continue dall'alto al basso
  line((3.6, 0.0), (3.6, 5.4), stroke: 1pt)
  line((5.6, 0.0), (5.6, 4.85), stroke: 0.8pt)
  line((7.6, 0.0), (7.6, 5.4), stroke: 1pt)
  line((9.6, 0.0), (9.6, 4.85), stroke: 0.8pt)
  line((11.6, 0.0), (11.6, 5.4), stroke: 1pt)

  // ==================== INTESTAZIONI (IN ITALIANO) ====================
  content((1.8, 4.75), text(size: 7pt)[MODALITÀ DI CARICO])
  content((9.6, 5.12), text(size: 7pt)[effetto d'intaglio elevato])

  content((4.6, 4.63), text(size: 7pt)[sforzo])
  content((4.6, 4.37), text(size: 7pt)[elevato])
  content((6.6, 4.63), text(size: 7pt)[sforzo])
  content((6.6, 4.37), text(size: 7pt)[basso])
  content((8.6, 4.63), text(size: 7pt)[sforzo])
  content((8.6, 4.37), text(size: 7pt)[elevato])
  content((10.6, 4.63), text(size: 7pt)[sforzo])
  content((10.6, 4.37), text(size: 7pt)[basso])


  // =========================================================================
  // RIGA 1: SEZIONE CIRCOLARE - FLESSIONE ALTERNATA (y: 2.1 .. 4.2, y_c = 3.15)
  // =========================================================================

  // Colonna 0 Riga 1: flessione alternata (barra 2D incastrata + doppia freccia curva)
  content((0.2, 3.85), text(size: 7pt)[flessione alternata], anchor: "west")
  line((0.9, 2.45), (0.9, 3.30), stroke: 0.9pt)
  line((0.9, 2.50), (0.72, 2.38), stroke: 0.7pt)
  line((0.9, 2.63), (0.72, 2.51), stroke: 0.7pt)
  line((0.9, 2.76), (0.72, 2.64), stroke: 0.7pt)
  line((0.9, 2.89), (0.72, 2.77), stroke: 0.7pt)
  line((0.9, 3.02), (0.72, 2.90), stroke: 0.7pt)
  line((0.9, 3.15), (0.72, 3.03), stroke: 0.7pt)
  line((0.9, 3.28), (0.72, 3.16), stroke: 0.7pt)
  rect((0.9, 2.70), (2.8, 3.05), stroke: 0.9pt)
  arc((1.8, 2.875), start: -24deg, stop: 24deg, radius: 1.25, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.9pt)

  // --- Riga 1, Col 1: (4.6, 3.15) Provino liscio, sforzo elevato ---
  line((3.97, 3.41), (4.3, 3.35), (4.6, 3.33), (4.9, 3.35), (5.23, 3.41), (5.28, 3.15), (5.23, 2.89), (4.9, 2.95), (4.6, 2.97), (4.3, 2.95), (3.97, 2.89), (3.92, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((4.6, 3.15), radius: 0.68, stroke: 1pt)
  // Alto
  arc((4.6, 3.83), start: 210deg, stop: 330deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 3.83), start: 205deg, stop: 335deg, radius: 0.48, anchor: "origin", stroke: 0.8pt)
  line((4.6, 3.83), (4.6, 3.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.45, 3.81), (4.35, 3.37), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.75, 3.81), (4.85, 3.37), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.30, 3.75), (4.12, 3.41), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.90, 3.75), (5.08, 3.41), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  // Basso
  arc((4.6, 2.47), start: 30deg, stop: 150deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 2.47), start: 25deg, stop: 155deg, radius: 0.48, anchor: "origin", stroke: 0.8pt)
  line((4.6, 2.47), (4.6, 2.95), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.45, 2.49), (4.35, 2.93), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.75, 2.49), (4.85, 2.93), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.30, 2.55), (4.12, 2.89), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.90, 2.55), (5.08, 2.89), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 2: (6.6, 3.15) Provino liscio, sforzo basso ---
  line((5.94, 3.29), (6.3, 3.23), (6.6, 3.21), (6.9, 3.23), (7.26, 3.29), (7.28, 3.15), (7.26, 3.01), (6.9, 3.07), (6.6, 3.09), (6.3, 3.07), (5.94, 3.01), (5.92, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((6.6, 3.15), radius: 0.68, stroke: 1pt)
  // Alto
  arc((6.6, 3.83), start: 210deg, stop: 330deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 205deg, stop: 335deg, radius: 0.42, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 212deg, stop: 328deg, radius: 0.62, anchor: "origin", stroke: 0.8pt)
  line((6.6, 3.83), (6.6, 3.23), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.45, 3.81), (6.32, 3.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.75, 3.81), (6.88, 3.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.30, 3.75), (6.08, 3.29), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.90, 3.75), (7.12, 3.29), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  // Basso
  arc((6.6, 2.47), start: 30deg, stop: 150deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 2.47), start: 25deg, stop: 155deg, radius: 0.42, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 2.47), start: 32deg, stop: 148deg, radius: 0.62, anchor: "origin", stroke: 0.8pt)
  line((6.6, 2.47), (6.6, 3.07), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.45, 2.49), (6.32, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.75, 2.49), (6.88, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.30, 2.55), (6.08, 3.01), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.90, 2.55), (7.12, 3.01), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 3: (8.6, 3.15) Intaglio elevato, sforzo elevato ---
  line((8.02, 3.29), (8.35, 3.37), (8.85, 3.37), (9.18, 3.29), (9.20, 3.15), (9.18, 3.01), (8.85, 2.93), (8.35, 2.93), (8.02, 3.01), (8.00, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((8.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((8.6, 3.15), radius: 0.60, stroke: 0.8pt)
  bezier((8.02, 3.29), (9.18, 3.29), (8.4, 3.40), (8.8, 3.40), stroke: 0.8pt)
  bezier((8.02, 3.01), (9.18, 3.01), (8.4, 2.90), (8.8, 2.90), stroke: 0.8pt)
  arc((8.6, 3.75), start: 215deg, stop: 325deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((8.6, 2.55), start: 35deg, stop: 145deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  line((8.6, 3.75), (8.6, 3.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.35, 3.69), (8.38, 3.36), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.85, 3.69), (8.82, 3.36), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.15, 3.55), (8.18, 3.32), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.05, 3.55), (9.02, 3.32), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.6, 2.55), (8.6, 2.92), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.35, 2.61), (8.38, 2.94), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.85, 2.61), (8.82, 2.94), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.15, 2.75), (8.18, 2.98), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.05, 2.75), (9.02, 2.98), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 4: (10.6, 3.15) Intaglio elevato, sforzo basso ---
  line((10.02, 3.23), (10.35, 3.29), (10.85, 3.29), (11.18, 3.23), (11.20, 3.15), (11.18, 3.07), (10.85, 3.01), (10.35, 3.01), (10.02, 3.07), (10.00, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((10.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((10.6, 3.15), radius: 0.60, stroke: 0.8pt)
  bezier((10.02, 3.23), (11.18, 3.23), (10.4, 3.31), (10.8, 3.31), stroke: 0.8pt)
  bezier((10.02, 3.07), (11.18, 3.07), (10.4, 2.99), (10.8, 2.99), stroke: 0.8pt)
  arc((10.6, 3.75), start: 210deg, stop: 330deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 3.75), start: 205deg, stop: 335deg, radius: 0.40, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 2.55), start: 30deg, stop: 150deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 2.55), start: 25deg, stop: 155deg, radius: 0.40, anchor: "origin", stroke: 0.65pt)
  line((10.6, 3.75), (10.6, 3.30), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.35, 3.69), (10.35, 3.28), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.85, 3.69), (10.85, 3.28), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.15, 3.55), (10.15, 3.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((11.05, 3.55), (11.05, 3.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.6, 2.55), (10.6, 3.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.35, 2.61), (10.35, 3.02), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.85, 2.61), (10.85, 3.02), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.15, 2.75), (10.15, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((11.05, 2.75), (11.05, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // =========================================================================
  // RIGA 2: SEZIONE RETTANGOLARE - FLESSIONE ALTERNATA (y: 0.0 .. 2.1, y_c = 1.05)
  // =========================================================================

  // Colonna 0 Riga 2: flessione alternata con trave 3D incastrata e doppia freccia curva
  content((0.2, 1.75), text(size: 7pt)[flessione alternata], anchor: "west")

  // Parete curva d'incastro a sinistra
  bezier((1.15, 1.25), (0.85, 0.95), (1.02, 1.22), (0.88, 1.08), stroke: 0.8pt)
  bezier((0.85, 0.95), (0.85, 0.35), (0.80, 0.72), (0.80, 0.52), stroke: 0.8pt)
  bezier((0.85, 0.35), (1.25, 0.28), (0.95, 0.22), (1.15, 0.22), stroke: 0.8pt)
  line((1.25, 0.28), (1.35, 0.45), stroke: 0.8pt)
  line((1.15, 1.25), (1.32, 0.95), stroke: 0.8pt)
  // Tratteggio d'incastro
  line((1.10, 1.23), (1.00, 1.31), stroke: 0.6pt)
  line((0.98, 1.14), (0.88, 1.22), stroke: 0.6pt)
  line((0.89, 1.00), (0.79, 1.08), stroke: 0.6pt)
  line((0.84, 0.84), (0.74, 0.92), stroke: 0.6pt)
  line((0.82, 0.68), (0.72, 0.76), stroke: 0.6pt)
  line((0.82, 0.52), (0.72, 0.60), stroke: 0.6pt)
  line((0.85, 0.36), (0.75, 0.44), stroke: 0.6pt)
  // Parallelepipedo (trave a sezione rettangolare in prospettiva)
  rect((1.05, 0.45), (2.45, 0.82), stroke: 0.9pt)
  line((1.05, 0.82), (1.28, 0.95), (2.68, 0.95), (2.45, 0.82), stroke: 0.9pt)
  line((2.68, 0.95), (2.68, 0.58), (2.45, 0.45), stroke: 0.9pt)
  // Doppia freccia curva di flessione alternata a destra
  arc((1.85, 0.72), start: -24deg, stop: 24deg, radius: 1.25, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.9pt)


  // --- Riga 2, Col 1: (4.6, 1.05) Provino liscio, sforzo elevato ---
  // Rettangolo verticale: x in [4.06, 5.14], y in [0.39, 1.71]
  // Ampia zona di rottura finale centrale tra il fronte superiore concavo e il fronte inferiore convesso
  line((4.25, 1.71), (4.42, 1.48), (4.62, 1.42), (4.88, 1.46), (5.14, 1.62), (5.14, 0.72), (4.85, 0.76), (4.55, 0.80), (4.28, 0.78), (4.06, 0.70), (4.06, 1.71), close: true, fill: black.transparentize(72%), stroke: none)
  rect((4.06, 0.39), (5.14, 1.71), stroke: 1pt)
  // Fronte superiore (innesco da 4.65, 1.71)
  bezier((4.25, 1.71), (5.14, 1.62), (4.48, 1.36), (4.85, 1.38), stroke: 0.8pt)
  arc((4.65, 1.71), start: 195deg, stop: 345deg, radius: (0.20, 0.13), anchor: "origin", stroke: 0.65pt)
  // Fronte inferiore (inneschi multipli dal bordo inferiore y=0.39)
  bezier((4.06, 0.70), (5.14, 0.72), (4.35, 0.82), (4.80, 0.80), stroke: 0.8pt)
  bezier((4.06, 0.56), (5.14, 0.55), (4.40, 0.65), (4.80, 0.64), stroke: 0.65pt)
  arc((4.25, 0.39), start: 15deg, stop: 165deg, radius: (0.15, 0.10), anchor: "origin", stroke: 0.65pt)
  arc((4.78, 0.39), start: 15deg, stop: 165deg, radius: (0.18, 0.11), anchor: "origin", stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((4.58, 1.68), (4.45, 1.48), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.72, 1.68), (4.84, 1.48), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.22, 0.39), (4.12, 0.68), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.42, 0.39), (4.52, 0.74), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.82, 0.39), (4.72, 0.72), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.98, 0.39), (5.08, 0.68), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // --- Riga 2, Col 2: (6.6, 1.05) Provino liscio, sforzo basso ---
  // Rettangolo verticale: x in [6.06, 7.14], y in [0.39, 1.71]
  // Fascia di rottura finale centrale più stretta
  line((6.06, 1.26), (6.38, 1.20), (6.72, 1.18), (7.14, 1.22), (7.14, 0.94), (6.80, 0.92), (6.42, 0.85), (6.06, 0.74), close: true, fill: black.transparentize(72%), stroke: none)
  rect((6.06, 0.39), (7.14, 1.71), stroke: 1pt)
  // Fronti superiori (innesco centrale in 6.60, 1.71)
  bezier((6.06, 1.26), (7.14, 1.22), (6.45, 1.16), (6.85, 1.16), stroke: 0.8pt)
  bezier((6.06, 1.44), (7.14, 1.40), (6.45, 1.30), (6.85, 1.30), stroke: 0.65pt)
  arc((6.60, 1.71), start: 195deg, stop: 345deg, radius: (0.22, 0.14), anchor: "origin", stroke: 0.65pt)
  arc((6.60, 1.71), start: 200deg, stop: 340deg, radius: (0.38, 0.25), anchor: "origin", stroke: 0.65pt)
  // Fronti inferiori (innesco asimmetrico in basso a destra 6.95, 0.39 che sale verso sinistra)
  bezier((6.06, 0.74), (7.14, 0.94), (6.45, 0.88), (6.85, 0.94), stroke: 0.8pt)
  bezier((6.06, 0.56), (7.14, 0.80), (6.48, 0.72), (6.88, 0.80), stroke: 0.65pt)
  bezier((6.35, 0.39), (7.14, 0.66), (6.58, 0.56), (6.92, 0.64), stroke: 0.65pt)
  arc((6.95, 0.39), start: 100deg, stop: 175deg, radius: (0.28, 0.18), anchor: "origin", stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((6.60, 1.71), (6.60, 1.20), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.48, 1.68), (6.26, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.72, 1.68), (6.90, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.95, 0.39), (6.22, 0.72), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((7.00, 0.42), (6.55, 0.84), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((7.06, 0.45), (6.88, 0.90), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // --- Riga 2, Col 3: (8.6, 1.05) Intaglio elevato, sforzo elevato ---
  // Rettangolo esterno: [8.06, 9.14] x [0.39, 1.71], interno: [8.14, 9.06] x [0.47, 1.63]
  // Ampia fascia centrale di rottura finale con contorni ondulati
  line((8.14, 1.26), (8.38, 1.34), (8.62, 1.28), (8.88, 1.33), (9.06, 1.25), (9.06, 0.84), (8.85, 0.78), (8.60, 0.83), (8.36, 0.76), (8.14, 0.82), close: true, fill: black.transparentize(72%), stroke: none)
  rect((8.06, 0.39), (9.14, 1.71), stroke: 1pt)
  rect((8.14, 0.47), (9.06, 1.63), stroke: 0.8pt)
  // Contorni ondulati della fascia centrale
  bezier((8.14, 1.26), (8.62, 1.28), (8.30, 1.36), (8.48, 1.34), stroke: 0.8pt)
  bezier((8.62, 1.28), (9.06, 1.25), (8.78, 1.34), (8.94, 1.32), stroke: 0.8pt)
  bezier((8.14, 0.82), (8.60, 0.83), (8.28, 0.74), (8.46, 0.76), stroke: 0.8pt)
  bezier((8.60, 0.83), (9.06, 0.84), (8.75, 0.76), (8.92, 0.76), stroke: 0.8pt)
  // Inneschi multipli a festoni sul lato superiore interno (y=1.63) e inferiore interno (y=0.47)
  arc((8.28, 1.63), start: 195deg, stop: 345deg, radius: (0.14, 0.08), anchor: "origin", stroke: 0.65pt)
  arc((8.60, 1.63), start: 195deg, stop: 345deg, radius: (0.15, 0.08), anchor: "origin", stroke: 0.65pt)
  arc((8.92, 1.63), start: 195deg, stop: 345deg, radius: (0.14, 0.08), anchor: "origin", stroke: 0.65pt)
  bezier((8.14, 1.46), (9.06, 1.46), (8.45, 1.42), (8.75, 1.42), stroke: 0.65pt)
  arc((8.28, 0.47), start: 15deg, stop: 165deg, radius: (0.14, 0.08), anchor: "origin", stroke: 0.65pt)
  arc((8.60, 0.47), start: 15deg, stop: 165deg, radius: (0.15, 0.08), anchor: "origin", stroke: 0.65pt)
  arc((8.92, 0.47), start: 15deg, stop: 165deg, radius: (0.14, 0.08), anchor: "origin", stroke: 0.65pt)
  bezier((8.14, 0.64), (9.06, 0.64), (8.45, 0.68), (8.75, 0.68), stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((8.32, 1.63), (8.32, 1.36), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.60, 1.63), (8.60, 1.32), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.88, 1.63), (8.88, 1.36), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.32, 0.47), (8.32, 0.74), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.60, 0.47), (8.60, 0.78), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.88, 0.47), (8.88, 0.74), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // --- Riga 2, Col 4: (10.6, 1.05) Intaglio elevato, sforzo basso ---
  // Rettangolo esterno: [10.06, 11.14] x [0.39, 1.71], interno: [10.14, 11.06] x [0.47, 1.63]
  // Fascia centrale più stretta con contorni ondulati a doppia gobba
  line((10.14, 1.15), (10.36, 1.20), (10.60, 1.14), (10.84, 1.20), (11.06, 1.15), (11.06, 0.94), (10.84, 0.89), (10.60, 0.95), (10.36, 0.89), (10.14, 0.94), close: true, fill: black.transparentize(72%), stroke: none)
  rect((10.06, 0.39), (11.14, 1.71), stroke: 1pt)
  rect((10.14, 0.47), (11.06, 1.63), stroke: 0.8pt)
  // Contorni ondulati della fascia centrale
  bezier((10.14, 1.15), (10.60, 1.14), (10.28, 1.22), (10.46, 1.20), stroke: 0.8pt)
  bezier((10.60, 1.14), (11.06, 1.15), (10.74, 1.20), (10.92, 1.22), stroke: 0.8pt)
  bezier((10.14, 0.94), (10.60, 0.95), (10.28, 0.87), (10.46, 0.89), stroke: 0.8pt)
  bezier((10.60, 0.95), (11.06, 0.94), (10.74, 0.89), (10.92, 0.87), stroke: 0.8pt)
  // Fronti superiori (innesco nell'angolo superiore destro 11.00, 1.63)
  arc((10.92, 1.63), start: 185deg, stop: 295deg, radius: (0.20, 0.12), anchor: "origin", stroke: 0.65pt)
  bezier((10.42, 1.63), (11.06, 1.42), (10.55, 1.46), (10.88, 1.44), stroke: 0.65pt)
  bezier((10.14, 1.45), (11.06, 1.30), (10.45, 1.34), (10.82, 1.32), stroke: 0.65pt)
  // Fronti inferiori (innesco sul bordo inferiore 10.60, 0.47)
  arc((10.60, 0.47), start: 15deg, stop: 165deg, radius: (0.22, 0.12), anchor: "origin", stroke: 0.65pt)
  bezier((10.14, 0.62), (11.06, 0.62), (10.45, 0.72), (10.75, 0.72), stroke: 0.65pt)
  bezier((10.14, 0.78), (11.06, 0.78), (10.45, 0.84), (10.75, 0.84), stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((10.92, 1.60), (10.35, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.98, 1.56), (10.82, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.52, 0.47), (10.35, 0.86), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.68, 0.47), (10.78, 0.86), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
})
