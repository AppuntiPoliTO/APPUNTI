// Figura estratta da fatica.typ (riga 835) con LocalTypst
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
  content((9.6, 5.12), text(size: 7pt)[con effetto d'intaglio])

  content((4.6, 4.63), text(size: 7pt)[sforzo])
  content((4.6, 4.37), text(size: 7pt)[elevato])
  content((6.6, 4.63), text(size: 7pt)[sforzo])
  content((6.6, 4.37), text(size: 7pt)[basso])
  content((8.6, 4.63), text(size: 7pt)[sforzo])
  content((8.6, 4.37), text(size: 7pt)[elevato])
  content((10.6, 4.63), text(size: 7pt)[sforzo])
  content((10.6, 4.37), text(size: 7pt)[basso])


  // =========================================================================
  // RIGA 1: SEZIONE CIRCOLARE - FLESSIONE SEMPLICE (y: 2.1 .. 4.2, y_c = 3.15)
  // =========================================================================

  // Colonna 0 Riga 1: flessione semplice (barra 2D incastrata)
  content((0.2, 3.85), text(size: 7pt)[flessione semplice], anchor: "west")
  line((0.9, 2.45), (0.9, 3.30), stroke: 0.9pt)
  line((0.9, 2.50), (0.72, 2.38), stroke: 0.7pt)
  line((0.9, 2.63), (0.72, 2.51), stroke: 0.7pt)
  line((0.9, 2.76), (0.72, 2.64), stroke: 0.7pt)
  line((0.9, 2.89), (0.72, 2.77), stroke: 0.7pt)
  line((0.9, 3.02), (0.72, 2.90), stroke: 0.7pt)
  line((0.9, 3.15), (0.72, 3.03), stroke: 0.7pt)
  line((0.9, 3.28), (0.72, 3.16), stroke: 0.7pt)
  rect((0.9, 2.70), (2.8, 3.05), stroke: 0.9pt)
  arc((1.8, 3.20), start: -35deg, stop: -8deg, radius: 1.3, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)

  // --- Riga 1, Col 1: (4.6, 3.15) Provino liscio, sforzo elevato ---
  line((3.97, 3.40), (4.3, 3.35), (4.6, 3.33), (4.9, 3.35), (5.23, 3.40), (5.28, 3.15), (5.18, 2.80), (4.95, 2.55), (4.6, 2.47), (4.25, 2.55), (4.02, 2.80), (3.92, 3.15), close: true, fill: black.transparentize(72%), stroke: none)
  circle((4.6, 3.15), radius: 0.68, stroke: 1pt)
  arc((4.6, 3.83), start: 210deg, stop: 330deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 3.83), start: 202deg, stop: 338deg, radius: 0.38, anchor: "origin", stroke: 0.65pt)
  arc((4.6, 4.00), start: 222deg, stop: 318deg, radius: 0.67, anchor: "origin", stroke: 0.8pt)
  line((4.6, 3.83), (4.6, 3.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.32, 3.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.88, 3.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (4.12, 3.51), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.6, 3.83), (5.08, 3.51), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 2: (6.6, 3.15) Provino liscio, sforzo basso ---
  line((5.98, 2.87), (6.3, 2.83), (6.6, 2.81), (6.9, 2.83), (7.22, 2.87), (7.05, 2.60), (6.6, 2.47), (6.15, 2.60), close: true, fill: black.transparentize(72%), stroke: none)
  circle((6.6, 3.15), radius: 0.68, stroke: 1pt)
  arc((6.6, 3.83), start: 205deg, stop: 335deg, radius: 0.30, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 215deg, stop: 325deg, radius: 0.55, anchor: "origin", stroke: 0.65pt)
  arc((6.6, 3.83), start: 225deg, stop: 315deg, radius: 0.80, anchor: "origin", stroke: 0.65pt)
  line((5.98, 2.87), (6.3, 2.83), (6.6, 2.81), (6.9, 2.83), (7.22, 2.87), stroke: 0.8pt)
  line((6.6, 3.83), (6.6, 2.85), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.50, 3.81), (6.28, 2.87), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.70, 3.81), (6.92, 2.87), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.40, 3.77), (6.04, 3.03), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.80, 3.77), (7.16, 3.03), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 3: (8.6, 3.15) Intaglio elevato, sforzo elevato ---
  line((8.03, 3.33), (8.25, 3.37), (8.6, 3.27), (8.95, 3.37), (9.17, 3.33), (9.20, 3.10), (9.10, 2.80), (8.88, 2.60), (8.6, 2.55), (8.32, 2.60), (8.10, 2.80), (8.00, 3.10), close: true, fill: black.transparentize(72%), stroke: none)
  circle((8.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((8.6, 3.15), radius: 0.60, stroke: 0.8pt)
  arc((8.6, 3.75), start: 210deg, stop: 330deg, radius: 0.24, anchor: "origin", stroke: 0.65pt)
  arc((8.25, 3.65), start: 235deg, stop: 345deg, radius: 0.20, anchor: "origin", stroke: 0.65pt)
  arc((8.95, 3.65), start: 195deg, stop: 305deg, radius: 0.20, anchor: "origin", stroke: 0.65pt)
  line((8.08, 3.45), (9.12, 3.45), stroke: 0.65pt)
  bezier((8.03, 3.33), (9.17, 3.33), (8.4, 3.20), (8.8, 3.20), stroke: 0.8pt)
  line((8.6, 3.75), (8.6, 3.30), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.35, 3.69), (8.40, 3.33), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.85, 3.69), (8.80, 3.33), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.15, 3.53), (8.22, 3.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.05, 3.53), (8.98, 3.35), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 1, Col 4: (10.6, 3.15) Intaglio elevato, sforzo basso ---
  line((10.20, 2.83), (10.45, 2.89), (10.75, 2.89), (11.00, 2.83), (10.88, 2.61), (10.6, 2.55), (10.32, 2.61), close: true, fill: black.transparentize(72%), stroke: none)
  circle((10.6, 3.15), radius: 0.68, stroke: 1pt)
  circle((10.6, 3.15), radius: 0.60, stroke: 0.8pt)
  arc((10.6, 3.75), start: 205deg, stop: 335deg, radius: 0.26, anchor: "origin", stroke: 0.65pt)
  arc((10.6, 3.75), start: 215deg, stop: 325deg, radius: 0.50, anchor: "origin", stroke: 0.65pt)
  bezier((10.02, 3.03), (11.18, 3.03), (10.4, 3.13), (10.8, 3.13), stroke: 0.65pt)
  line((10.20, 2.83), (10.45, 2.89), (10.75, 2.89), (11.00, 2.83), stroke: 0.8pt)
  line((10.6, 3.75), (10.6, 2.93), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.32, 3.67), (10.30, 2.90), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.88, 3.67), (10.90, 2.90), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.10, 3.49), (10.15, 3.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((11.10, 3.49), (11.05, 3.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))


  // =========================================================================
  // RIGA 2: SEZIONE RETTANGOLARE - FLESSIONE SEMPLICE (y: 0.0 .. 2.1, y_c = 1.05)
  // =========================================================================

  // Colonna 0 Riga 2: flessione semplice con trave 3D incastrata e freccia curva
  content((0.2, 1.75), text(size: 7pt)[flessione semplice], anchor: "west")

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
  // Freccia curva di flessione a destra
  arc((1.85, 1.02), start: -35deg, stop: -8deg, radius: 1.3, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)

  // --- Riga 2, Col 1: (4.6, 1.05) Provino liscio, sforzo elevato ---
  // Rettangolo verticale: x in [4.06, 5.14], y in [0.39, 1.71]
  // Zona di rottura finale nei ~3/5 inferiori con bordo superiore concavo
  line((4.06, 1.32), (4.22, 1.15), (4.48, 1.08), (4.85, 1.06), (5.14, 1.18), (5.14, 0.39), (4.06, 0.39), close: true, fill: black.transparentize(72%), stroke: none)
  rect((4.06, 0.39), (5.14, 1.71), stroke: 1pt)
  bezier((4.06, 1.32), (5.14, 1.18), (4.35, 1.02), (4.85, 1.02), stroke: 0.8pt)
  // Fronti di propagazione dall'innesco in (4.55, 1.71)
  arc((4.55, 1.71), start: 195deg, stop: 345deg, radius: (0.24, 0.16), anchor: "origin", stroke: 0.65pt)
  bezier((4.15, 1.71), (5.14, 1.44), (4.25, 1.22), (4.75, 1.20), stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((4.52, 1.65), (4.35, 1.22), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.64, 1.65), (4.78, 1.18), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.38, 1.68), (4.16, 1.38), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((4.76, 1.68), (5.05, 1.48), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 2: (6.6, 1.05) Provino liscio, sforzo basso ---
  // Rettangolo verticale: x in [6.06, 7.14], y in [0.39, 1.71]
  // Zona di rottura finale nel terzo inferiore
  line((6.06, 0.96), (6.35, 0.82), (6.68, 0.72), (6.95, 0.75), (7.14, 0.88), (7.14, 0.39), (6.06, 0.39), close: true, fill: black.transparentize(72%), stroke: none)
  rect((6.06, 0.39), (7.14, 1.71), stroke: 1pt)
  bezier((6.06, 0.96), (7.14, 0.88), (6.50, 0.68), (6.90, 0.68), stroke: 0.8pt)
  // Fronti di propagazione dall'innesco in (6.66, 1.71)
  arc((6.66, 1.71), start: 195deg, stop: 345deg, radius: (0.24, 0.15), anchor: "origin", stroke: 0.65pt)
  bezier((6.28, 1.71), (7.14, 1.38), (6.32, 1.32), (6.85, 1.25), stroke: 0.65pt)
  bezier((6.06, 1.35), (7.14, 1.08), (6.35, 1.00), (6.85, 0.95), stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((6.60, 1.65), (6.42, 0.90), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.72, 1.65), (6.92, 0.85), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.48, 1.68), (6.15, 1.20), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((6.85, 1.68), (7.08, 1.25), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 3: (8.6, 1.05) Intaglio elevato, sforzo elevato ---
  // Rettangolo esterno: [8.06, 9.14] x [0.39, 1.71], interno: [8.14, 9.06] x [0.47, 1.63]
  // Zona di rottura finale nei ~3/5 inferiori con bordo ondulato
  line((8.14, 1.12), (8.35, 1.18), (8.60, 1.12), (8.88, 1.20), (9.06, 1.16), (9.06, 0.47), (8.14, 0.47), close: true, fill: black.transparentize(72%), stroke: none)
  rect((8.06, 0.39), (9.14, 1.71), stroke: 1pt)
  rect((8.14, 0.47), (9.06, 1.63), stroke: 0.8pt)
  bezier((8.14, 1.12), (8.60, 1.12), (8.28, 1.20), (8.45, 1.18), stroke: 0.8pt)
  bezier((8.60, 1.12), (9.06, 1.16), (8.75, 1.10), (8.92, 1.22), stroke: 0.8pt)
  // Inneschi multipli negli angoli superiori e sul bordo superiore interno
  arc((8.14, 1.63), start: 270deg, stop: 360deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  arc((9.06, 1.63), start: 180deg, stop: 270deg, radius: 0.22, anchor: "origin", stroke: 0.65pt)
  bezier((8.14, 1.42), (9.06, 1.42), (8.45, 1.50), (8.75, 1.50), stroke: 0.65pt)
  bezier((8.14, 1.28), (9.06, 1.30), (8.45, 1.34), (8.75, 1.34), stroke: 0.65pt)
  // Frecce radiali dai bordi superiori/laterali (con leggera trasparenza)
  line((8.25, 1.63), (8.32, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.14, 1.52), (8.26, 1.42), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.82, 1.63), (8.74, 1.24), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.95, 1.63), (8.86, 1.42), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((9.06, 1.52), (8.94, 1.42), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((8.55, 1.63), (8.56, 1.32), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))

  // --- Riga 2, Col 4: (10.6, 1.05) Intaglio elevato, sforzo basso ---
  // Rettangolo esterno: [10.06, 11.14] x [0.39, 1.71], interno: [10.14, 11.06] x [0.47, 1.63]
  // Zona di rottura finale nel terzo inferiore con bordo superiore convesso a cupola
  line((10.14, 0.82), (10.38, 0.94), (10.60, 0.96), (10.82, 0.94), (11.06, 0.82), (11.06, 0.47), (10.14, 0.47), close: true, fill: black.transparentize(72%), stroke: none)
  rect((10.06, 0.39), (11.14, 1.71), stroke: 1pt)
  rect((10.14, 0.47), (11.06, 1.63), stroke: 0.8pt)
  bezier((10.14, 0.82), (11.06, 0.82), (10.42, 1.00), (10.78, 1.00), stroke: 0.8pt)
  // Fronti di propagazione dall'alto che si invertono da concavi a convessi scendendo
  arc((10.60, 1.63), start: 200deg, stop: 340deg, radius: (0.20, 0.14), anchor: "origin", stroke: 0.65pt)
  arc((10.60, 1.63), start: 205deg, stop: 335deg, radius: (0.38, 0.28), anchor: "origin", stroke: 0.65pt)
  bezier((10.14, 1.24), (11.06, 1.24), (10.42, 1.12), (10.78, 1.12), stroke: 0.65pt)
  bezier((10.14, 1.02), (11.06, 1.02), (10.42, 1.06), (10.78, 1.06), stroke: 0.65pt)
  // Frecce radiali (con leggera trasparenza)
  line((10.60, 1.63), (10.60, 1.02), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.48, 1.60), (10.30, 1.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.72, 1.60), (10.90, 1.00), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.34, 1.56), (10.18, 1.20), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
  line((10.86, 1.56), (11.02, 1.20), mark: (end: ">", scale: 0.5), stroke: (paint: black.transparentize(45%), thickness: 0.55pt))
})
