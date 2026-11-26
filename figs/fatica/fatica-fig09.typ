// Figura estratta da fatica.typ (riga 624) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  // ==================== GRIGLIA DELLA TABELLA UNIFICATA ====================
  // Linee orizzontali
  line((0.0, 4.2), (11.6, 4.2), stroke: 1pt)
  line((0.0, 2.1), (11.6, 2.1), stroke: (dash: "dashed", thickness: 0.9pt))
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
  // RIGA 1: SEZIONE CIRCOLARE (y: 2.1 .. 4.2, y_c = 3.15)
  // =========================================================================

  // Colonna 0 Riga 1: trazione compressione
  content((0.2, 3.85), text(size: 7pt)[trazione compressione], anchor: "west")
  rect((0.95, 2.78), (2.85, 3.10), stroke: 0.9pt)
  line((0.85, 2.94), (0.35, 2.94), mark: (end: ">"), stroke: 0.9pt)
  line((2.95, 2.94), (3.45, 2.94), mark: (end: ">"), stroke: 0.9pt)

  // --- Riga 1, Col 1: (4.6, 3.15) Provino liscio, sforzo elevato ---
  line((3.97, 3.40), (4.3, 3.35), (4.6, 3.33), (4.9, 3.35), (5.23, 3.40), (5.28, 3.15), (5.18, 2.80), (4.95, 2.55), (4.6, 2.47), (4.25, 2.55), (4.02, 2.80), (3.92, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((4.6, 3.15), radius: 0.68, stroke: 1pt)
  arc((4.6, 3.83), start: 210deg, stop: 330deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 3.83), start: 204deg, stop: 336deg, radius: 0.38, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 4.00), start: 222deg, stop: 318deg, radius: 0.67, anchor: "origin", stroke: 0.8pt)
  line((4.6, 3.83), (4.6, 3.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.32, 3.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.88, 3.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.12, 3.51), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (5.08, 3.51), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 2: (6.6, 3.15) Provino liscio, sforzo basso ---
  line((6.06, 2.73), (6.35, 2.68), (6.6, 2.66), (6.85, 2.68), (7.14, 2.73), (6.95, 2.53), (6.6, 2.47), (6.25, 2.53), close: true, fill: black.transparentize(72%), stroke: none)
  circle((6.6, 3.15), radius: 0.68, stroke: 1pt)
  arc((6.6, 3.83), start: 205deg, stop: 335deg, radius: 0.30, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 212deg, stop: 328deg, radius: 0.55, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 222deg, stop: 318deg, radius: 0.80, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 234deg, stop: 306deg, radius: 1.02, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 242deg, stop: 298deg, radius: 1.16, anchor: "origin", stroke: 0.8pt)
  line((6.6, 3.83), (6.6, 2.70), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.54, 3.82), (6.30, 2.73), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.66, 3.82), (6.90, 2.73), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.46, 3.80), (6.05, 2.97), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.74, 3.80), (7.15, 2.97), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 3: (8.6, 3.15) Intaglio elevato, sforzo elevato ---
  line((8.06, 2.97), (8.35, 3.03), (8.6, 3.05), (8.85, 3.03), (9.14, 2.97), (9.05, 2.73), (8.85, 2.59), (8.6, 2.55), (8.35, 2.59), (8.15, 2.73), close: true, fill: black.transparentize(72%), stroke: none)
  circle((8.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((8.6, 3.15), radius: 0.60, stroke: 0.8pt)
  arc((8.6, 3.75), start: 215deg, stop: 325deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((8.20, 3.60), start: 245deg, stop: 350deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((9.00, 3.60), start: 190deg, stop: 295deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((8.04, 3.35), start: 275deg, stop: 375deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((9.16, 3.35), start: 165deg, stop: 265deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  bezier((8.02, 3.23), (9.18, 3.23), (8.4, 3.35), (8.8, 3.35), stroke: 0.65pt)
  bezier((8.06, 2.97), (9.14, 2.97), (8.4, 3.07), (8.8, 3.07), stroke: 0.8pt)
  line((8.6, 3.75), (8.6, 3.33), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.35, 3.69), (8.45, 3.30), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.85, 3.69), (8.75, 3.30), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.12, 3.51), (8.28, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.08, 3.51), (8.92, 3.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.02, 3.27), (8.18, 3.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.18, 3.27), (9.02, 3.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 4: (10.6, 3.15) Intaglio elevato, sforzo basso ---
  line((10.22, 2.83), (10.45, 2.87), (10.75, 2.87), (10.98, 2.83), (10.92, 2.63), (10.6, 2.55), (10.28, 2.63), close: true, fill: black.transparentize(72%), stroke: none)
  circle((10.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((10.6, 3.15), radius: 0.60, stroke: 0.8pt)
  arc((10.6, 3.75), start: 205deg, stop: 335deg, radius: 0.25, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 3.75), start: 212deg, stop: 328deg, radius: 0.46, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 3.75), start: 222deg, stop: 318deg, radius: 0.68, anchor: "origin", stroke: 0.65pt)
  bezier((10.04, 3.01), (11.16, 3.01), (10.4, 3.09), (10.8, 3.09), stroke: 0.65pt)
  line((10.22, 2.83), (10.45, 2.87), (10.75, 2.87), (10.98, 2.83), stroke: 0.8pt)
  line((10.6, 3.75), (10.6, 2.89), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.35, 3.69), (10.35, 2.89), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.85, 3.69), (10.85, 2.89), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.12, 3.50), (10.20, 2.97), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((11.08, 3.50), (11.00, 2.97), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // =========================================================================
  // RIGA 2: SEZIONE RETTANGOLARE (y: 0.0 .. 2.1, y_c = 1.05)
  // =========================================================================

  // Colonna 0 Riga 2: trazione-compressione / trazione-trazione con trave 3D incastrata
  content((0.2, 1.80), text(size: 7pt)[trazione - compressione], anchor: "west")
  content((0.5, 1.40), text(size: 7pt)[trazione - trazione], anchor: "west")

  // Parete curva d'incastro a sinistra
  bezier((1.15, 1.15), (0.85, 0.85), (1.02, 1.12), (0.88, 0.98), stroke: 0.8pt)
  bezier((0.85, 0.85), (0.85, 0.35), (0.80, 0.65), (0.80, 0.50), stroke: 0.8pt)
  bezier((0.85, 0.35), (1.25, 0.28), (0.95, 0.22), (1.15, 0.22), stroke: 0.8pt)
  line((1.25, 0.28), (1.35, 0.42), stroke: 0.8pt)
  line((1.15, 1.15), (1.32, 0.88), stroke: 0.8pt)
  // Tratteggio d'incastro
  line((1.10, 1.13), (1.00, 1.21), stroke: 0.6pt)
  line((0.98, 1.04), (0.88, 1.12), stroke: 0.6pt)
  line((0.89, 0.92), (0.79, 1.00), stroke: 0.6pt)
  line((0.84, 0.78), (0.74, 0.86), stroke: 0.6pt)
  line((0.82, 0.64), (0.72, 0.72), stroke: 0.6pt)
  line((0.82, 0.50), (0.72, 0.58), stroke: 0.6pt)
  line((0.85, 0.36), (0.75, 0.44), stroke: 0.6pt)
  // Parallelepipedo (trave a sezione rettangolare in prospettiva)
  rect((1.05, 0.42), (2.45, 0.76), stroke: 0.9pt)
  line((1.05, 0.76), (1.28, 0.88), (2.68, 0.88), (2.45, 0.76), stroke: 0.9pt)
  line((2.68, 0.88), (2.68, 0.54), (2.45, 0.42), stroke: 0.9pt)
  // Doppia freccia a destra
  line((2.80, 0.65), (3.42, 0.65), mark: (start: ">", end: ">"), stroke: 0.9pt)

  // --- Riga 2, Col 1: (4.6, 1.05) Provino liscio, sforzo elevato ---
  // Rettangolo: x in [3.88, 5.32], y in [0.49, 1.61]
  line((4.15, 1.61), (4.06, 1.38), (4.18, 1.22), (4.55, 1.08), (4.98, 1.00), (5.32, 1.05), (5.32, 0.49), (3.88, 0.49), (3.88, 1.61), close: true, fill: black.transparentize(72%), stroke: none)
  rect((3.88, 0.49), (5.32, 1.61), stroke: 1pt)
  bezier((4.15, 1.61), (4.55, 1.08), (4.02, 1.32), (4.25, 1.15), stroke: 0.8pt)
  bezier((4.55, 1.08), (5.32, 1.05), (4.85, 1.00), (5.15, 1.00), stroke: 0.8pt)
  arc((4.80, 1.61), start: 195deg, stop: 345deg, radius: (0.28, 0.18), anchor: "origin", stroke: 0.65pt)
  bezier((4.32, 1.61), (5.32, 1.24), (4.30, 1.25), (4.95, 1.18), stroke: 0.65pt)
  line((4.65, 1.56), (4.36, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.82, 1.54), (4.94, 1.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.98, 1.56), (5.25, 1.32), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.52, 1.58), (4.18, 1.42), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 2: (6.6, 1.05) Provino liscio, sforzo basso ---
  // Rettangolo: x in [5.88, 7.32], y in [0.49, 1.61]
  line((6.06, 1.61), (6.08, 1.25), (6.25, 0.92), (6.65, 0.72), (7.05, 0.72), (7.32, 0.78), (7.32, 0.49), (5.88, 0.49), (5.88, 1.61), close: true, fill: black.transparentize(72%), stroke: none)
  rect((5.88, 0.49), (7.32, 1.61), stroke: 1pt)
  bezier((6.06, 1.61), (6.45, 0.80), (6.05, 1.15), (6.20, 0.90), stroke: 0.8pt)
  bezier((6.45, 0.80), (7.32, 0.78), (6.75, 0.68), (7.10, 0.72), stroke: 0.8pt)
  arc((6.82, 1.61), start: 195deg, stop: 345deg, radius: (0.24, 0.16), anchor: "origin", stroke: 0.65pt)
  bezier((6.42, 1.61), (7.32, 1.32), (6.45, 1.30), (7.00, 1.26), stroke: 0.65pt)
  bezier((6.24, 1.61), (7.32, 1.12), (6.25, 1.12), (7.90 - 1.0, 1.05), stroke: 0.65pt)
  bezier((6.14, 1.61), (7.32, 0.94), (6.15, 0.95), (6.80, 0.88), stroke: 0.65pt)
  line((6.68, 1.56), (6.32, 1.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.85, 1.54), (7.05, 0.82), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((7.00, 1.56), (7.26, 1.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.55, 1.58), (6.15, 1.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 3: (8.6, 1.05) Intaglio elevato, sforzo elevato ---
  // Rettangolo esterno: [7.88, 9.32] x [0.49, 1.61], interno: [7.96, 9.24] x [0.57, 1.53]
  line((8.22, 1.20), (8.45, 1.16), (8.60, 1.15), (8.75, 1.16), (8.98, 1.20), (9.02, 1.05), (8.98, 0.88), (8.75, 0.93), (8.60, 0.94), (8.45, 0.93), (8.22, 0.88), (8.18, 1.05), close: true, fill: black.transparentize(72%), stroke: 0.8pt)
  rect((7.88, 0.49), (9.32, 1.61), stroke: 1pt)
  rect((7.96, 0.57), (9.24, 1.53), stroke: 0.8pt)
  arc((8.60, 1.53), start: 205deg, stop: 335deg, radius: (0.28, 0.16), anchor: "origin", stroke: 0.65pt)
  bezier((7.96, 1.18), (8.28, 1.53), (8.18, 1.22), (8.25, 1.38), stroke: 0.65pt)
  bezier((8.92, 1.53), (9.24, 1.18), (8.95, 1.38), (9.02, 1.22), stroke: 0.65pt)
  bezier((8.10, 1.32), (9.10, 1.32), (8.45, 1.24), (8.75, 1.24), stroke: 0.65pt)
  arc((8.60, 0.57), start: 25deg, stop: 155deg, radius: (0.28, 0.16), anchor: "origin", stroke: 0.65pt)
  bezier((7.96, 0.88), (8.25, 0.57), (8.12, 0.85), (8.20, 0.70), stroke: 0.65pt)
  bezier((8.95, 0.57), (9.24, 0.88), (9.00, 0.70), (9.08, 0.85), stroke: 0.65pt)
  line((8.55, 1.53), (8.48, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.75, 1.53), (8.82, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.04, 1.42), (8.22, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((7.96, 1.28), (8.18, 1.15), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.16, 1.42), (8.98, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.50, 0.57), (8.42, 0.86), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.70, 0.57), (8.78, 0.86), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 4: (10.6, 1.05) Intaglio elevato, sforzo basso ---
  // Rettangolo esterno: [9.88, 11.32] x [0.49, 1.61], interno: [9.96, 11.24] x [0.57, 1.53]
  circle((10.60, 1.05), radius: (0.22, 0.08), fill: black.transparentize(72%), stroke: 0.8pt)
  rect((9.88, 0.49), (11.32, 1.61), stroke: 1pt)
  rect((9.96, 0.57), (11.24, 1.53), stroke: 0.8pt)
  line((10.26, 1.20), (10.60, 1.18), (10.94, 1.20), (10.96, 1.05), (10.94, 0.90), (10.60, 0.92), (10.26, 0.90), (10.24, 1.05), close: true, stroke: 0.65pt)
  arc((10.60, 1.53), start: 200deg, stop: 340deg, radius: (0.28, 0.14), anchor: "origin", stroke: 0.65pt)
  bezier((10.12, 1.53), (11.08, 1.53), (10.35, 1.28), (10.85, 1.28), stroke: 0.65pt)
  arc((10.60, 0.57), start: 20deg, stop: 160deg, radius: (0.28, 0.14), anchor: "origin", stroke: 0.65pt)
  bezier((10.12, 0.57), (11.08, 0.57), (10.35, 0.82), (10.85, 0.82), stroke: 0.65pt)
  arc((9.96, 1.05), start: -65deg, stop: 65deg, radius: (0.14, 0.24), anchor: "origin", stroke: 0.65pt)
  bezier((9.96, 1.38), (9.96, 0.72), (10.18, 1.20), (10.18, 0.90), stroke: 0.65pt)
  arc((11.24, 1.05), start: 115deg, stop: 245deg, radius: (0.14, 0.24), anchor: "origin", stroke: 0.65pt)
  bezier((11.24, 1.38), (11.24, 0.72), (11.02, 1.20), (11.02, 0.90), stroke: 0.65pt)
  line((10.60, 1.53), (10.60, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.60, 0.57), (10.60, 0.88), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.96, 1.05), (10.20, 1.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((11.24, 1.05), (11.00, 1.05), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.32, 1.53), (10.42, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.88, 1.53), (10.78, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.32, 0.57), (10.42, 0.88), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.88, 0.57), (10.78, 0.88), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
})
