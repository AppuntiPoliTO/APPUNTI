// Figura estratta da alberi.typ (riga 262) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.25cm, {
  import draw: *

  // ==========================================
  // PANNELLO 1 (SINISTRA)
  // ==========================================

  // --- Linee di proiezione verticali ---
  line((0.6, 5.8), (0.6, 1.45), stroke: 0.5pt)
  line((2.5, 7.45), (2.5, 0.85), stroke: 0.6pt)
  line((4.8, 7.55), (4.8, 0.0), stroke: 0.6pt)
  line((5.85, 5.8), (5.85, 0.85), stroke: 0.6pt)

  // --- Asse dell'albero (tratteggiato) ---
  line((-0.4, 5.8), (6.7, 5.8), stroke: (dash: "dashed", thickness: 0.6pt))

  // --- Punti neri sull'asse dell'albero ---
  circle((2.5, 5.8), radius: 0.08, fill: black)
  circle((4.8, 5.8), radius: 0.08, fill: black)

  // --- Freccia cava Mt a sinistra ---
  line((-0.27, 5.8), (-0.27, 5.45), (-0.11, 5.45), (-0.11, 5.8), stroke: 0.8pt)
  arc((0.05, 5.8), start: 0deg, stop: 180deg, radius: (0.32, 0.85), anchor: "origin", stroke: 0.8pt)
  arc((0.05, 5.8), start: 0deg, stop: 180deg, radius: (0.16, 0.68), anchor: "origin", stroke: 0.8pt)
  line((0.37, 5.8), (0.37, 5.65), (0.46, 5.65), (0.29, 5.3), (0.12, 5.65), (0.21, 5.65), (0.21, 5.8), stroke: 0.8pt)
  content((0.05, 6.9), text(size: 7pt)[$M_t$], anchor: "south")

  // --- Albero a gradini (metà superiore in vista/sezione) ---
  // Tratto 1 (estremo sinistro)
  line((0.6, 5.8), (0.6, 6.35), (1.35, 6.35), (1.35, 5.8), stroke: 1pt)
  line((0.68, 5.8), (0.68, 6.35), stroke: 0.6pt)
  line((0.6, 6.3), (1.35, 6.3), stroke: 0.6pt)

  // Tratto 2 (filettatura / ghiera)
  line((1.35, 6.35), (1.42, 6.45), (1.75, 6.45), (1.75, 5.8), stroke: 1pt)
  // Guarnizione a labbro (in 1.42..1.70, y=6.45..7.1)
  line((1.42, 6.45), (1.42, 7.1), (1.75, 7.1), (1.75, 6.45), stroke: 0.8pt)
  circle((1.56, 6.62), radius: 0.08, stroke: 0.6pt)
  circle((1.56, 6.62), radius: 0.04, stroke: 0.5pt)
  line((1.47, 6.45), (1.47, 6.78), (1.68, 6.78), (1.68, 7.1), stroke: 0.6pt)

  // Ghiera / distanziale prima del cuscinetto A
  line((1.75, 6.62), (2.22, 6.62), (2.22, 5.8), stroke: 1pt)
  line((1.95, 5.8), (1.95, 6.82), (2.22, 6.82), stroke: 0.8pt)
  line((1.75, 6.55), (1.95, 6.55), stroke: 0.6pt)
  // Tratteggio distanziale
  line((1.98, 6.62), (2.15, 6.79), stroke: 0.5pt)
  line((2.08, 6.62), (2.22, 6.76), stroke: 0.5pt)

  // Cuscinetto A (centro x = 2.5, y = 7.02)
  // Anello interno
  line((2.22, 6.65), (2.78, 6.65), (2.78, 6.88), (2.22, 6.88), close: true, stroke: 0.8pt)
  line((2.22, 6.65), (2.22, 5.8), stroke: 0.8pt)
  line((2.78, 6.65), (2.78, 5.8), stroke: 0.8pt)
  // Tratteggio anello interno A
  line((2.25, 6.65), (2.48, 6.88), stroke: 0.5pt)
  line((2.40, 6.65), (2.63, 6.88), stroke: 0.5pt)
  line((2.55, 6.65), (2.78, 6.88), stroke: 0.5pt)
  // Sfera A
  circle((2.5, 7.02), radius: 0.22, fill: white, stroke: 0.8pt)
  line((2.22, 7.02), (2.78, 7.02), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.5, 6.75), (2.5, 7.30), stroke: (dash: "dashed", thickness: 0.5pt))
  // Anello esterno A
  line((2.22, 7.16), (2.78, 7.16), (2.78, 7.36), (2.22, 7.36), close: true, stroke: 0.8pt)
  line((2.25, 7.16), (2.45, 7.36), stroke: 0.5pt)
  line((2.42, 7.16), (2.62, 7.36), stroke: 0.5pt)
  line((2.58, 7.16), (2.78, 7.36), stroke: 0.5pt)

  // Tratto centrale dell'albero tra A e B (x = 2.78 .. 4.50)
  line((2.78, 6.65), (4.50, 6.65), stroke: 1pt)
  line((2.78, 6.80), (3.12, 6.80), (3.12, 6.65), stroke: 0.8pt)
  line((3.12, 6.82), (4.20, 6.82), (4.20, 6.65), stroke: 0.8pt)
  line((4.20, 6.80), (4.50, 6.80), stroke: 0.8pt)
  line((3.12, 6.65), (3.12, 5.8), stroke: 0.6pt)
  line((4.20, 6.65), (4.20, 5.8), stroke: 0.6pt)
  // Tratteggio boccole/spallamenti tra A e B
  line((2.82, 6.65), (2.97, 6.80), stroke: 0.5pt)
  line((2.96, 6.65), (3.11, 6.80), stroke: 0.5pt)
  line((3.20, 6.65), (3.37, 6.82), stroke: 0.5pt)
  line((3.40, 6.65), (3.57, 6.82), stroke: 0.5pt)
  line((3.60, 6.65), (3.77, 6.82), stroke: 0.5pt)
  line((3.80, 6.65), (3.97, 6.82), stroke: 0.5pt)
  line((4.00, 6.65), (4.17, 6.82), stroke: 0.5pt)
  line((4.25, 6.65), (4.40, 6.80), stroke: 0.5pt)

  // Cuscinetto B (centro x = 4.8, y = 7.12)
  // Anello interno B
  line((4.50, 6.72), (5.08, 6.72), (5.08, 6.96), (4.50, 6.96), close: true, stroke: 0.8pt)
  line((4.50, 6.72), (4.50, 5.8), stroke: 0.8pt)
  line((5.08, 6.72), (5.08, 5.8), stroke: 0.8pt)
  line((4.55, 6.72), (4.79, 6.96), stroke: 0.5pt)
  line((4.72, 6.72), (4.96, 6.96), stroke: 0.5pt)
  line((4.88, 6.72), (5.08, 6.92), stroke: 0.5pt)
  // Sfera B
  circle((4.8, 7.12), radius: 0.22, fill: white, stroke: 0.8pt)
  line((4.50, 7.12), (5.08, 7.12), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.8, 6.85), (4.8, 7.40), stroke: (dash: "dashed", thickness: 0.5pt))
  // Anello esterno B
  line((4.50, 7.26), (5.08, 7.26), (5.08, 7.46), (4.50, 7.46), close: true, stroke: 0.8pt)
  line((4.55, 7.26), (4.75, 7.46), stroke: 0.5pt)
  line((4.72, 7.26), (4.92, 7.46), stroke: 0.5pt)
  line((4.88, 7.26), (5.08, 7.46), stroke: 0.5pt)

  // Coperchio sinistro della cassa
  line((1.42, 7.1), (1.62, 7.1), (1.62, 8.2), (1.80, 8.2), (1.80, 7.36), (2.22, 7.36), (2.22, 7.22), (1.95, 7.22), (1.95, 7.1), close: true, stroke: 0.8pt)
  line((1.35, 7.82), (2.15, 7.82), stroke: (dash: "dashed", thickness: 0.6pt))
  // Tratteggio coperchio
  line((1.42, 7.25), (1.80, 7.63), stroke: 0.5pt)
  line((1.42, 7.50), (1.80, 7.88), stroke: 0.5pt)
  line((1.62, 7.95), (1.80, 8.13), stroke: 0.5pt)
  line((1.80, 7.38), (2.05, 7.63), stroke: 0.5pt)

  // Corpo principale della cassa (sezione tratteggiata a 45°)
  line((1.80, 8.2), (1.80, 8.95), (2.35, 8.98), (3.10, 8.85), (3.85, 8.92), (4.65, 9.08), (5.05, 9.15), (5.18, 9.15), (5.18, 7.46), (4.50, 7.46), (4.50, 7.92), (3.15, 7.92), (3.15, 7.36), (2.22, 7.36), (2.22, 7.52), (1.80, 7.52), close: true, stroke: 0.9pt)

  // Tratteggio a 45° della cassa
  line((1.80, 8.60), (2.15, 8.95), stroke: 0.5pt)
  line((1.80, 8.25), (2.50, 8.95), stroke: 0.5pt)
  line((1.80, 7.90), (2.82, 8.92), stroke: 0.5pt)
  line((1.80, 7.55), (3.12, 8.87), stroke: 0.5pt)
  line((2.15, 7.52), (3.48, 8.88), stroke: 0.5pt)
  line((2.35, 7.36), (3.85, 8.86), stroke: 0.5pt)
  line((2.70, 7.36), (4.25, 8.91), stroke: 0.5pt)
  line((3.05, 7.36), (3.15, 7.46), stroke: 0.5pt)
  line((3.60, 7.92), (4.72, 9.04), stroke: 0.5pt)
  line((3.95, 7.92), (5.15, 9.12), stroke: 0.5pt)
  line((4.30, 7.92), (5.18, 8.80), stroke: 0.5pt)
  line((4.50, 7.77), (5.18, 8.45), stroke: 0.5pt)
  line((4.55, 7.46), (5.18, 8.09), stroke: 0.5pt)
  line((4.90, 7.46), (5.18, 7.74), stroke: 0.5pt)

  // Elemento C a sbalzo a destra
  line((5.08, 6.92), (5.40, 6.92), (5.40, 8.02), (6.30, 8.02), (6.30, 5.8), stroke: 1pt)
  line((5.40, 6.92), (5.40, 5.8), stroke: 0.8pt)
  line((5.22, 6.92), (5.22, 7.82), (5.40, 7.82), stroke: 0.8pt)
  line((5.40, 7.95), (6.30, 7.95), stroke: 0.6pt)
  line((5.15, 7.90), (6.60, 7.90), stroke: (dash: "dashed", thickness: 0.6pt))

  // Etichette A, B, C sull'albero (con linee di richiamo per A e B)
  content((2.5, 7.80), text(size: 7pt)[$A$], anchor: "south")
  content((4.75, 7.88), text(size: 7pt)[$B$], anchor: "south")
  content((5.85, 7.05), text(size: 7pt)[$C$], anchor: "center")

  // --- Schema statico (trave) ---
  line((0.6, 4.2), (5.85, 4.2), stroke: 1.2pt)

  // Appoggio A (carrello / cerniera)
  circle((2.5, 4.13), radius: 0.07, fill: white, stroke: 0.8pt)
  line((2.5, 4.06), (2.36, 3.82), (2.64, 3.82), close: true, stroke: 0.8pt)
  line((2.28, 3.75), (2.72, 3.75), stroke: 0.8pt)

  // Appoggio B (cerniera)
  circle((4.8, 4.13), radius: 0.07, fill: white, stroke: 0.8pt)
  line((4.8, 4.06), (4.66, 3.82), (4.94, 3.82), close: true, stroke: 0.8pt)
  line((4.58, 3.75), (5.02, 3.75), stroke: 0.8pt)

  // Forza F in C
  line((5.85, 5.3), (5.85, 4.2), mark: (end: ">", fill: black), stroke: 1pt)
  content((6.0, 4.9), text(size: 7pt)[$F$], anchor: "west")

  // Etichette A, B, C sullo schema trave
  content((2.25, 4.55), text(size: 7pt)[$A$], anchor: "center")
  content((5.0, 4.55), text(size: 7pt)[$B$], anchor: "center")
  content((6.02, 3.98), text(size: 7pt)[$C$], anchor: "center")

  // --- Quote L e a ---
  line((2.5, 3.15), (4.8, 3.15), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((3.65, 3.25), text(size: 7pt)[$L$], anchor: "south")

  line((4.8, 3.15), (5.85, 3.15), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((5.32, 3.25), text(size: 7pt)[$a$], anchor: "south")

  // --- Diagramma del momento torcente Mt ---
  rect((0.6, 1.45), (5.85, 2.1), stroke: 1pt)
  // Tratteggio verticale interno
  line((0.75, 1.45), (0.75, 2.1), stroke: 0.5pt)
  line((0.90, 1.45), (0.90, 2.1), stroke: 0.5pt)
  line((1.05, 1.45), (1.05, 2.1), stroke: 0.5pt)
  line((1.20, 1.45), (1.20, 2.1), stroke: 0.5pt)
  line((1.35, 1.45), (1.35, 2.1), stroke: 0.5pt)
  line((1.50, 1.45), (1.50, 2.1), stroke: 0.5pt)
  line((1.65, 1.45), (1.65, 2.1), stroke: 0.5pt)
  line((1.80, 1.45), (1.80, 2.1), stroke: 0.5pt)
  line((1.95, 1.45), (1.95, 2.1), stroke: 0.5pt)
  line((2.10, 1.45), (2.10, 2.1), stroke: 0.5pt)
  line((2.25, 1.45), (2.25, 2.1), stroke: 0.5pt)
  line((2.40, 1.45), (2.40, 2.1), stroke: 0.5pt)
  line((2.50, 1.45), (2.50, 2.1), stroke: 0.5pt)
  line((2.65, 1.45), (2.65, 2.1), stroke: 0.5pt)
  line((2.80, 1.45), (2.80, 2.1), stroke: 0.5pt)
  line((2.95, 1.45), (2.95, 2.1), stroke: 0.5pt)
  line((3.10, 1.45), (3.10, 2.1), stroke: 0.5pt)
  line((3.25, 1.45), (3.25, 2.1), stroke: 0.5pt)
  line((3.40, 1.45), (3.40, 2.1), stroke: 0.5pt)
  line((3.55, 1.45), (3.55, 2.1), stroke: 0.5pt)
  line((3.70, 1.45), (3.70, 2.1), stroke: 0.5pt)
  line((3.85, 1.45), (3.85, 2.1), stroke: 0.5pt)
  line((4.00, 1.45), (4.00, 2.1), stroke: 0.5pt)
  line((4.15, 1.45), (4.15, 2.1), stroke: 0.5pt)
  line((4.30, 1.45), (4.30, 2.1), stroke: 0.5pt)
  line((4.45, 1.45), (4.45, 2.1), stroke: 0.5pt)
  line((4.60, 1.45), (4.60, 2.1), stroke: 0.5pt)
  line((4.75, 1.45), (4.75, 2.1), stroke: 0.5pt)
  line((4.90, 1.45), (4.90, 2.1), stroke: 0.5pt)
  line((5.05, 1.45), (5.05, 2.1), stroke: 0.5pt)
  line((5.20, 1.45), (5.20, 2.1), stroke: 0.5pt)
  line((5.35, 1.45), (5.35, 2.1), stroke: 0.5pt)
  line((5.50, 1.45), (5.50, 2.1), stroke: 0.5pt)
  line((5.65, 1.45), (5.65, 2.1), stroke: 0.5pt)
  line((5.75, 1.45), (5.75, 2.1), stroke: 0.5pt)
  content((6.0, 1.77), text(size: 7pt)[$M_t$], anchor: "west")

  // --- Diagramma del momento flettente Mf ---
  line((0.6, 0.85), (5.85, 0.85), stroke: 1pt)
  line((2.5, 0.85), (4.8, 0.0), (5.85, 0.85), stroke: 1pt)
  // Tratteggio verticale interno Mf
  line((2.65, 0.85), (2.65, 0.79), stroke: 0.5pt)
  line((2.80, 0.85), (2.80, 0.74), stroke: 0.5pt)
  line((2.95, 0.85), (2.95, 0.68), stroke: 0.5pt)
  line((3.10, 0.85), (3.10, 0.63), stroke: 0.5pt)
  line((3.25, 0.85), (3.25, 0.57), stroke: 0.5pt)
  line((3.40, 0.85), (3.40, 0.52), stroke: 0.5pt)
  line((3.55, 0.85), (3.55, 0.46), stroke: 0.5pt)
  line((3.70, 0.85), (3.70, 0.41), stroke: 0.5pt)
  line((3.85, 0.85), (3.85, 0.35), stroke: 0.5pt)
  line((4.00, 0.85), (4.00, 0.30), stroke: 0.5pt)
  line((4.15, 0.85), (4.15, 0.24), stroke: 0.5pt)
  line((4.30, 0.85), (4.30, 0.18), stroke: 0.5pt)
  line((4.45, 0.85), (4.45, 0.13), stroke: 0.5pt)
  line((4.60, 0.85), (4.60, 0.07), stroke: 0.5pt)
  line((4.70, 0.85), (4.70, 0.04), stroke: 0.5pt)
  line((4.80, 0.85), (4.80, 0.00), stroke: 0.5pt)
  line((4.90, 0.85), (4.90, 0.08), stroke: 0.5pt)
  line((5.02, 0.85), (5.02, 0.18), stroke: 0.5pt)
  line((5.15, 0.85), (5.15, 0.28), stroke: 0.5pt)
  line((5.28, 0.85), (5.28, 0.39), stroke: 0.5pt)
  line((5.40, 0.85), (5.40, 0.49), stroke: 0.5pt)
  line((5.52, 0.85), (5.52, 0.58), stroke: 0.5pt)
  line((5.65, 0.85), (5.65, 0.69), stroke: 0.5pt)
  line((5.75, 0.85), (5.75, 0.77), stroke: 0.5pt)
  content((6.0, 0.55), text(size: 7pt)[$M_f$], anchor: "west")


  // ==========================================
  // PANNELLO 2 (DESTRA)
  // ==========================================

  // --- Linee di proiezione verticali ---
  line((8.1, 7.6), (8.1, 1.0), stroke: 0.6pt)
  line((12.5, 7.6), (12.5, 0.48), stroke: 0.6pt)
  line((14.2, 7.6), (14.2, 1.0), stroke: 0.6pt)

  // --- Asse dell'albero (tratteggiato) ---
  line((7.4, 7.0), (15.1, 7.0), stroke: (dash: "dashed", thickness: 0.6pt))

  // --- Punti neri sull'asse dell'albero ---
  circle((8.1, 7.0), radius: 0.08, fill: black)
  circle((14.2, 7.0), radius: 0.08, fill: black)
  content((7.75, 6.7), text(size: 7pt)[$A$], anchor: "center")
  content((14.45, 6.75), text(size: 7pt)[$B$], anchor: "center")

  // --- Albero e componenti (metà superiore) ---
  // Estremo sinistro e cuscinetto A (con simbolo X)
  line((7.6, 7.0), (7.6, 7.52), (7.83, 7.52), (7.83, 7.0), stroke: 1pt)
  line((7.66, 7.0), (7.66, 7.52), stroke: 0.8pt)
  line((7.72, 7.0), (7.72, 7.62), (7.83, 7.62), stroke: 0.8pt)
  line((7.83, 7.60), (8.37, 7.60), stroke: 1pt)
  // Cuscinetto A (rettangolo con croce di Sant'Andrea)
  rect((7.83, 7.60), (8.37, 8.28), stroke: 0.8pt)
  line((7.83, 7.60), (8.37, 8.28), stroke: 0.6pt)
  line((7.83, 8.28), (8.37, 7.60), stroke: 0.6pt)

  // Corpo centrale dell'albero tra A e C
  line((8.37, 7.0), (8.37, 7.60), (12.10, 7.60), (12.10, 7.0), stroke: 1pt)

  // Tratto sotto l'elemento C e fino a B
  line((12.10, 7.68), (13.93, 7.68), (13.93, 7.0), stroke: 1pt)
  line((12.10, 7.60), (12.10, 7.72), (12.90, 7.72), (12.90, 7.68), stroke: 0.8pt)

  // Mozzo / puleggia in C (x = 12.10 .. 12.90)
  rect((12.10, 7.72), (12.90, 8.60), stroke: 0.8pt)
  line((12.10, 8.38), (12.90, 8.38), stroke: 0.6pt)
  line((12.10, 8.50), (12.90, 8.50), stroke: 0.6pt)
  // Tratteggio a 45° sul mozzo C (tra y=7.72 e y=8.38)
  line((12.10, 8.15), (12.33, 8.38), stroke: 0.5pt)
  line((12.10, 7.92), (12.56, 8.38), stroke: 0.5pt)
  line((12.12, 7.72), (12.78, 8.38), stroke: 0.5pt)
  line((12.35, 7.72), (12.90, 8.27), stroke: 0.5pt)
  line((12.58, 7.72), (12.90, 8.04), stroke: 0.5pt)
  line((12.80, 7.72), (12.90, 7.82), stroke: 0.5pt)

  // Cuscinetto B (rettangolo con croce di Sant'Andrea, x = 13.93 .. 14.47)
  line((13.93, 7.60), (14.47, 7.60), stroke: 1pt)
  rect((13.93, 7.60), (14.47, 8.35), stroke: 0.8pt)
  line((13.93, 7.60), (14.47, 8.35), stroke: 0.6pt)
  line((13.93, 8.35), (14.47, 7.60), stroke: 0.6pt)

  // Estremo destro dopo B (ghiera e spallamento)
  line((14.47, 7.0), (14.47, 7.68), (14.92, 7.68), (14.92, 7.0), stroke: 1pt)
  rect((14.47, 7.68), (14.78, 7.95), stroke: 0.7pt)
  line((14.47, 7.82), (14.78, 7.82), stroke: 0.6pt)
  line((14.55, 7.68), (14.68, 7.82), stroke: 0.5pt)

  // --- Schema statico (trave appoggiata) ---
  line((8.1, 4.6), (14.2, 4.6), stroke: 1.2pt)

  // Appoggio A
  circle((8.1, 4.6), radius: 0.10, fill: white, stroke: 0.9pt)
  line((8.1, 4.50), (7.94, 4.22), (8.26, 4.22), close: true, stroke: 0.9pt)
  line((7.86, 4.18), (8.34, 4.18), stroke: 1.2pt)
  content((7.75, 4.6), text(size: 7pt)[$A$], anchor: "center")

  // Appoggio B
  circle((14.2, 4.6), radius: 0.10, fill: white, stroke: 0.9pt)
  line((14.2, 4.50), (14.04, 4.22), (14.36, 4.22), close: true, stroke: 0.9pt)
  line((13.96, 4.18), (14.44, 4.18), stroke: 1.2pt)
  content((14.52, 4.65), text(size: 7pt)[$B$], anchor: "center")

  // Forza F in C
  line((12.5, 5.8), (12.5, 4.6), mark: (end: ">", fill: black), stroke: 1pt)
  content((12.62, 5.35), text(size: 7pt)[$F$], anchor: "west")
  content((12.65, 4.38), text(size: 7pt)[$C$], anchor: "center")

  // --- Asse x e Quote a, b, L ---
  line((8.1, 3.92), (9.6, 3.92), mark: (end: ">"), stroke: 0.7pt)
  content((9.1, 4.02), text(size: 7pt)[$x$], anchor: "south")

  line((8.1, 3.52), (12.5, 3.52), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((10.3, 3.60), text(size: 7pt)[$a$], anchor: "south")

  line((12.5, 3.52), (14.2, 3.52), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((13.35, 3.60), text(size: 7pt)[$b$], anchor: "south")

  line((8.1, 3.00), (14.2, 3.00), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((11.15, 3.08), text(size: 7pt)[$L$], anchor: "south")

  // --- Linea elastica (deformata) ---
  // Linea orizzontale indeformata
  line((8.1, 1.0), (14.2, 1.0), stroke: 0.7pt)

  // Arco di cerchio della linea elastica
  arc((11.15, 7.83), start: 245.94deg, stop: 294.06deg, radius: 7.48, anchor: "origin", stroke: 1.2pt)

  // Tangenti agli estremi e angoli phi_A, phi_B
  line((8.1, 1.0), (9.2, 0.51), stroke: 0.6pt)
  arc((8.1, 1.0), start: 336deg, stop: 360deg, radius: 0.65, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)
  content((8.32, 0.68), text(size: 7pt)[$phi_A$], anchor: "center")

  line((14.2, 1.0), (13.1, 0.51), stroke: 0.6pt)
  arc((14.2, 1.0), start: 180deg, stop: 204deg, radius: 0.65, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  content((14.12, 0.68), text(size: 7pt)[$phi_B$], anchor: "center")

  // Freccia delta_C in corrispondenza di x = 12.5
  content((12.55, 1.40), text(size: 7pt)[$delta_C$], anchor: "center")
})
