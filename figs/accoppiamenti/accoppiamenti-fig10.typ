// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.8cm, {
  import draw: *

  // =========================================================================
  // 1. TRATTEGGI DI SEZIONE (SFONDO)
  // =========================================================================

  // --- Tratteggio Mozzo (135 gradi: x + y = C, passo 0.25) ---
  line((3.00, 1.40), (3.15, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.00, 1.65), (3.40, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.00, 1.90), (3.65, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.00, 2.15), (3.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.08, 2.32), (4.15, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.25, 2.40), (4.40, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.50, 2.40), (4.65, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.75, 2.40), (4.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.00, 2.40), (5.15, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.21, 2.44), (5.40, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.38, 2.52), (5.65, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.52, 2.63), (5.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.62, 2.78), (6.15, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.68, 2.97), (6.40, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 3.20), (6.65, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 3.45), (6.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 3.70), (7.15, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 3.95), (7.40, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 4.20), (7.65, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 4.45), (7.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 4.70), (6.30, 3.10), stroke: 0.45pt + rgb("#353d58"))
  line((6.95, 2.45), (8.00, 1.40), stroke: 0.45pt + rgb("#353d58"))
  line((4.73, 4.92), (6.30, 3.35), stroke: 0.45pt + rgb("#353d58"))
  line((7.25, 2.40), (8.00, 1.65), stroke: 0.45pt + rgb("#353d58"))
  line((4.98, 4.92), (6.30, 3.60), stroke: 0.45pt + rgb("#353d58"))
  line((7.50, 2.40), (8.00, 1.90), stroke: 0.45pt + rgb("#353d58"))
  line((5.23, 4.92), (6.30, 3.85), stroke: 0.45pt + rgb("#353d58"))
  line((7.74, 2.40), (7.96, 2.18), stroke: 0.45pt + rgb("#353d58"))
  line((5.48, 4.92), (6.30, 4.10), stroke: 0.45pt + rgb("#353d58"))
  line((5.72, 4.93), (6.30, 4.35), stroke: 0.45pt + rgb("#353d58"))
  line((5.96, 4.94), (6.30, 4.60), stroke: 0.45pt + rgb("#353d58"))
  line((6.20, 4.95), (6.30, 4.85), stroke: 0.45pt + rgb("#353d58"))

  // --- Tratteggio Bussola di Spinta (135 gradi: x + y = C, passo 0.14) ---
  line((2.50, 0.10), (2.60, 0.00), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.24), (2.74, 0.00), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.38), (2.82, 0.06), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.52), (2.82, 0.20), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.66), (2.82, 0.34), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.80), (2.82, 0.48), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 0.94), (2.82, 0.62), stroke: 0.45pt + rgb("#353d58"))
  line((2.50, 1.08), (2.82, 0.76), stroke: 0.45pt + rgb("#353d58"))
  line((2.53, 1.19), (2.82, 0.90), stroke: 0.45pt + rgb("#353d58"))
  line((2.61, 1.25), (2.94, 0.92), stroke: 0.45pt + rgb("#353d58"))
  line((2.75, 1.25), (3.08, 0.92), stroke: 0.45pt + rgb("#353d58"))
  line((2.89, 1.25), (3.22, 0.92), stroke: 0.45pt + rgb("#353d58"))
  line((3.03, 1.25), (3.36, 0.92), stroke: 0.45pt + rgb("#353d58"))
  line((3.17, 1.25), (3.38, 1.04), stroke: 0.45pt + rgb("#353d58"))
  line((3.31, 1.25), (3.38, 1.18), stroke: 0.45pt + rgb("#353d58"))

  // --- Tratteggio Anelli Conici ESTERNI (45 gradi: y - x = C) ---
  // Anello esterno 1: x in [3.38, 4.38]
  line((3.38, 1.13), (3.50, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.38, 1.01), (3.62, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.42, 0.93), (3.74, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.57, 0.96), (3.86, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.72, 0.99), (3.98, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((3.86, 1.01), (4.10, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.01, 1.04), (4.22, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.16, 1.07), (4.34, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.31, 1.10), (4.38, 1.17), stroke: 0.45pt + rgb("#353d58"))

  // Anello esterno 2: x in [4.46, 5.46]
  line((4.46, 1.13), (4.58, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.46, 1.01), (4.70, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.50, 0.93), (4.82, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.65, 0.96), (4.94, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.80, 0.99), (5.06, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((4.94, 1.01), (5.18, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.09, 1.04), (5.30, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.24, 1.07), (5.42, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.39, 1.10), (5.46, 1.17), stroke: 0.45pt + rgb("#353d58"))

  // Anello esterno 3: x in [5.54, 6.54]
  line((5.54, 1.13), (5.66, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.54, 1.01), (5.78, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.58, 0.93), (5.90, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.73, 0.96), (6.02, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((5.88, 0.99), (6.14, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.02, 1.01), (6.26, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.17, 1.04), (6.38, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.32, 1.07), (6.50, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.47, 1.10), (6.54, 1.17), stroke: 0.45pt + rgb("#353d58"))

  // Anello esterno 4: x in [6.62, 7.62]
  line((6.62, 1.13), (6.74, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.62, 1.01), (6.86, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.66, 0.93), (6.98, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.81, 0.96), (7.10, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((6.96, 0.99), (7.22, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((7.10, 1.01), (7.34, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((7.25, 1.04), (7.46, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((7.40, 1.07), (7.58, 1.25), stroke: 0.45pt + rgb("#353d58"))
  line((7.55, 1.10), (7.62, 1.17), stroke: 0.45pt + rgb("#353d58"))

  // --- Tratteggio Anelli Conici INTERNI (135 gradi: x + y = C) ---
  // Anello interno 1: x in [3.46, 4.46]
  line((3.46, 0.85), (3.56, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((3.52, 0.91), (3.68, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((3.62, 0.93), (3.80, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((3.72, 0.95), (3.92, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((3.82, 0.97), (4.04, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((3.92, 0.99), (4.16, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.02, 1.01), (4.28, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.12, 1.03), (4.40, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.22, 1.05), (4.46, 0.81), stroke: 0.45pt + rgb("#353d58"))
  line((4.32, 1.07), (4.46, 0.93), stroke: 0.45pt + rgb("#353d58"))
  line((4.42, 1.09), (4.46, 1.05), stroke: 0.45pt + rgb("#353d58"))

  // Anello interno 2: x in [4.54, 5.54]
  line((4.54, 0.85), (4.64, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.60, 0.91), (4.76, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.70, 0.93), (4.88, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.80, 0.95), (5.00, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((4.90, 0.97), (5.12, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.00, 0.99), (5.24, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.10, 1.01), (5.36, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.20, 1.03), (5.48, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.30, 1.05), (5.54, 0.81), stroke: 0.45pt + rgb("#353d58"))
  line((5.40, 1.07), (5.54, 0.93), stroke: 0.45pt + rgb("#353d58"))
  line((5.50, 1.09), (5.54, 1.05), stroke: 0.45pt + rgb("#353d58"))

  // Anello interno 3: x in [5.62, 6.62]
  line((5.62, 0.85), (5.72, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.68, 0.91), (5.84, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.78, 0.93), (5.96, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.88, 0.95), (6.08, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((5.98, 0.97), (6.20, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.08, 0.99), (6.32, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.18, 1.01), (6.44, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.28, 1.03), (6.56, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.38, 1.05), (6.62, 0.81), stroke: 0.45pt + rgb("#353d58"))
  line((6.48, 1.07), (6.62, 0.93), stroke: 0.45pt + rgb("#353d58"))
  line((6.58, 1.09), (6.62, 1.05), stroke: 0.45pt + rgb("#353d58"))

  // Anello interno 4: x in [6.70, 7.70]
  line((6.70, 0.85), (6.80, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.76, 0.91), (6.92, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.86, 0.93), (7.04, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((6.96, 0.95), (7.16, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((7.06, 0.97), (7.28, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((7.16, 0.99), (7.40, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((7.26, 1.01), (7.52, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((7.36, 1.03), (7.64, 0.75), stroke: 0.45pt + rgb("#353d58"))
  line((7.46, 1.05), (7.70, 0.81), stroke: 0.45pt + rgb("#353d58"))
  line((7.56, 1.07), (7.70, 0.93), stroke: 0.45pt + rgb("#353d58"))
  line((7.66, 1.09), (7.70, 1.05), stroke: 0.45pt + rgb("#353d58"))

  // --- Tratteggio Anello Distanziale Destro (45 gradi: y - x = C) ---
  // x in [7.70, 8.00], y in [0.75, 0.95]
  line((7.70, 0.87), (7.78, 0.95), stroke: 0.45pt + rgb("#353d58"))
  line((7.70, 0.79), (7.86, 0.95), stroke: 0.45pt + rgb("#353d58"))
  line((7.74, 0.75), (7.94, 0.95), stroke: 0.45pt + rgb("#353d58"))
  line((7.82, 0.75), (8.00, 0.93), stroke: 0.45pt + rgb("#353d58"))
  line((7.90, 0.75), (8.00, 0.85), stroke: 0.45pt + rgb("#353d58"))

  // --- Tratteggio Rottura Albero a Destra (45 gradi) ---
  line((9.52, 0.84), (9.62, 0.94), stroke: 0.45pt + rgb("#353d58"))
  line((9.47, 0.69), (9.69, 0.91), stroke: 0.45pt + rgb("#353d58"))
  line((9.45, 0.57), (9.74, 0.86), stroke: 0.45pt + rgb("#353d58"))
  line((9.45, 0.47), (9.76, 0.78), stroke: 0.45pt + rgb("#353d58"))
  line((9.47, 0.39), (9.77, 0.69), stroke: 0.45pt + rgb("#353d58"))
  line((9.50, 0.32), (9.77, 0.59), stroke: 0.45pt + rgb("#353d58"))
  line((9.53, 0.25), (9.76, 0.48), stroke: 0.45pt + rgb("#353d58"))
  line((9.57, 0.19), (9.74, 0.36), stroke: 0.45pt + rgb("#353d58"))
  line((9.60, 0.12), (9.70, 0.22), stroke: 0.45pt + rgb("#353d58"))

  // =========================================================================
  // 2. CONTORNI MECCANICI PRINCIPALI
  // =========================================================================

  // --- Linee laterali sottili e linea di rottura superiore del mozzo ---
  line((3.40, 2.40), (3.40, 4.98), stroke: 0.45pt + rgb("#1a2240"))
  line((7.60, 2.40), (7.60, 4.82), stroke: 0.45pt + rgb("#1a2240"))
  bezier((3.40, 4.98), (4.70, 4.92), (3.85, 5.12), (4.30, 4.90), stroke: 0.5pt + rgb("#1a2240"))
  bezier((4.70, 4.92), (6.30, 4.95), (5.20, 4.94), (5.80, 4.92), stroke: 0.5pt + rgb("#1a2240"))
  bezier((6.30, 4.95), (7.60, 4.82), (6.75, 4.98), (7.20, 4.74), stroke: 0.5pt + rgb("#1a2240"))

  // --- Contorno del Mozzo (Hub) ---
  line((3.00, 1.25), (8.00, 1.25), stroke: 1.05pt + rgb("#1a2240"))
  line((3.00, 1.25), (3.00, 1.95), stroke: 1.05pt + rgb("#1a2240"))
  arc((3.45, 1.95), start: 90deg, stop: 180deg, radius: 0.45, anchor: "origin", stroke: 1.05pt + rgb("#1a2240"))
  line((3.45, 2.40), (4.00, 2.40), stroke: 1.05pt + rgb("#1a2240"))
  arc((4.00, 3.10), start: 270deg, stop: 360deg, radius: 0.70, anchor: "origin", stroke: 1.05pt + rgb("#1a2240"))
  line((4.70, 3.10), (4.70, 4.92), stroke: 1.05pt + rgb("#1a2240"))

  line((6.30, 4.95), (6.30, 3.10), stroke: 1.05pt + rgb("#1a2240"))
  arc((7.00, 3.10), start: 180deg, stop: 270deg, radius: 0.70, anchor: "origin", stroke: 1.05pt + rgb("#1a2240"))
  line((7.00, 2.40), (7.55, 2.40), stroke: 1.05pt + rgb("#1a2240"))
  arc((7.55, 1.95), start: 0deg, stop: 90deg, radius: 0.45, anchor: "origin", stroke: 1.05pt + rgb("#1a2240"))
  line((8.00, 1.95), (8.00, 0.00), stroke: 1.05pt + rgb("#1a2240"))

  // --- Contorno dei 4 Cuscinetti / Calettatori Biconici ---
  // Unità 1
  line((3.38, 1.25), (4.38, 1.25), (4.38, 1.11), (3.38, 0.91), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((3.46, 0.75), (4.46, 0.75), (4.46, 1.09), (3.46, 0.89), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((4.38, 1.25), (4.38, 1.09), stroke: 0.9pt + rgb("#1a2240"))
  line((4.46, 1.25), (4.46, 0.75), stroke: 0.9pt + rgb("#1a2240"))

  // Unità 2
  line((4.46, 1.25), (5.46, 1.25), (5.46, 1.11), (4.46, 0.91), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((4.54, 0.75), (5.54, 0.75), (5.54, 1.09), (4.54, 0.89), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((5.46, 1.25), (5.46, 1.09), stroke: 0.9pt + rgb("#1a2240"))
  line((5.54, 1.25), (5.54, 0.75), stroke: 0.9pt + rgb("#1a2240"))

  // Unità 3
  line((5.54, 1.25), (6.54, 1.25), (6.54, 1.11), (5.54, 0.91), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((5.62, 0.75), (6.62, 0.75), (6.62, 1.09), (5.62, 0.89), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((6.54, 1.25), (6.54, 1.09), stroke: 0.9pt + rgb("#1a2240"))
  line((6.62, 1.25), (6.62, 0.75), stroke: 0.9pt + rgb("#1a2240"))

  // Unità 4
  line((6.62, 1.25), (7.62, 1.25), (7.62, 1.11), (6.62, 0.91), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((6.70, 0.75), (7.70, 0.75), (7.70, 1.09), (6.70, 0.89), close: true, stroke: 0.95pt + rgb("#1a2240"))
  line((7.62, 1.25), (7.62, 1.09), stroke: 0.9pt + rgb("#1a2240"))
  line((7.70, 1.09), (7.70, 0.75), stroke: 0.9pt + rgb("#1a2240"))

  // --- Anello Distanziale Destro ---
  line((7.70, 0.75), (8.00, 0.75), (8.00, 0.95), (7.70, 0.95), close: true, stroke: 0.95pt + rgb("#1a2240"))

  // --- Contorno Bussola di Spinta (L-sleeve) ---
  line((2.50, 0.00), (2.50, 1.15), (2.60, 1.25), (3.38, 1.25), (3.38, 0.92), (2.90, 0.92), stroke: 1.05pt + rgb("#1a2240"))
  arc((2.90, 0.84), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1.05pt + rgb("#1a2240"))
  line((2.82, 0.84), (2.82, 0.00), stroke: 1.05pt + rgb("#1a2240"))
  line((3.46, 0.75), (3.46, 0.92), stroke: 0.9pt + rgb("#1a2240"))

  // --- Contorno Albero, Spallamento, Filettatura e Dado ---
  // Albero principale e raccordo sinistro
  line((2.98, 0.00), (2.98, 0.67), (3.06, 0.75), (8.00, 0.75), stroke: 1.05pt + rgb("#1a2240"))
  line((3.06, 0.75), (3.06, 0.00), stroke: 0.75pt + rgb("#1a2240"))

  // Gola e tratto filettato tra bussola e albero
  line((2.82, 0.35), (2.98, 0.35), stroke: 0.85pt + rgb("#1a2240"))
  line((2.82, 0.27), (2.98, 0.27), stroke: 0.6pt + rgb("#1a2240"))

  // Dado esagonale a sinistra della bussola
  line((1.82, 0.00), (1.82, 0.54), (1.92, 0.64), (2.40, 0.64), (2.50, 0.54), (2.50, 0.00), stroke: 1.05pt + rgb("#1a2240"))
  line((1.92, 0.37), (2.40, 0.37), stroke: 0.95pt + rgb("#1a2240"))
  bezier((1.92, 0.64), (1.92, 0.37), (1.79, 0.56), (1.79, 0.45), stroke: 0.95pt + rgb("#1a2240"))
  bezier((2.40, 0.64), (2.40, 0.37), (2.53, 0.56), (2.53, 0.45), stroke: 0.95pt + rgb("#1a2240"))
  bezier((1.92, 0.37), (1.84, 0.00), (1.82, 0.25), (1.82, 0.12), stroke: 0.95pt + rgb("#1a2240"))
  bezier((2.40, 0.37), (2.48, 0.00), (2.50, 0.25), (2.50, 0.12), stroke: 0.95pt + rgb("#1a2240"))

  // Estremità filettata sporgente a sinistra del dado
  line((1.65, 0.00), (1.65, 0.27), (1.72, 0.35), (1.82, 0.35), stroke: 0.95pt + rgb("#1a2240"))
  line((1.72, 0.35), (1.72, 0.00), stroke: 0.6pt + rgb("#1a2240"))
  line((1.65, 0.27), (1.82, 0.27), stroke: 0.6pt + rgb("#1a2240"))

  // Prolungamento albero a destra e sezione di rottura
  line((8.00, 0.95), (9.60, 0.95), stroke: 1.05pt + rgb("#1a2240"))
  bezier((9.60, 0.95), (9.64, 0.00), (9.38, 0.65), (9.44, 0.30), stroke: 1.0pt + rgb("#1a2240"))
  bezier((9.60, 0.95), (9.64, 0.00), (9.82, 0.65), (9.80, 0.30), stroke: 1.0pt + rgb("#1a2240"))

  // =========================================================================
  // 3. ASSE DI SIMMETRIA CENTRALE (TRATTO-PUNTO)
  // =========================================================================
  line((1.40, 0.00), (9.95, 0.00), stroke: (dash: "dash-dotted", thickness: 0.65pt, paint: rgb("#1a2240")))

  // =========================================================================
  // 4. VETTORI DI PRESSIONE RADIALE E FORZA ASSIALE F
  // =========================================================================

  // 4 Frecce verticali (distribuzione decrescente delle pressioni sui 4 elementi)
  line((3.88, 1.25), (3.88, 3.45), mark: (end: "stealth", fill: rgb("#0f172a"), scale: 0.75), stroke: 1.6pt + rgb("#0f172a"))
  line((4.96, 1.25), (4.96, 2.48), mark: (end: "stealth", fill: rgb("#0f172a"), scale: 0.72), stroke: 1.6pt + rgb("#0f172a"))
  line((6.04, 1.25), (6.04, 1.98), mark: (end: "stealth", fill: rgb("#0f172a"), scale: 0.68), stroke: 1.6pt + rgb("#0f172a"))
  line((7.12, 1.25), (7.12, 1.65), mark: (end: "stealth", fill: rgb("#0f172a"), scale: 0.62), stroke: 1.6pt + rgb("#0f172a"))

  // Freccia orizzontale Forza F
  line((0.20, 0.03), (1.35, 0.03), mark: (end: "stealth", fill: rgb("#0f172a"), scale: 1.15), stroke: 2.2pt + rgb("#0f172a"))
  content((0.75, 0.42), text(size: 13pt, fill: rgb("#0f172a"))[$F$], anchor: "center")

  // =========================================================================
  // 5. ELLISSE TRATTEGGIATA ROSSA DI EVIDENZIAZIONE
  // =========================================================================
  circle((5.50, 2.38), radius: (2.65, 1.35), stroke: (paint: rgb("#e60000"), thickness: 1.65pt, dash: (9pt, 5pt)))
})
