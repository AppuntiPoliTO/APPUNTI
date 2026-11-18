// Figura estratta da molle.typ (riga 1420) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.7cm, {
  import draw: *

  // ==========================================
  // PANNELLO 1: COLONNA COMPLETA (SINISTRA)
  // ==========================================

  // Asse di simmetria (tratto-punto)
  line((2.0, 0.75), (2.0, 6.95), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Vettori Forza F
  line((2.0, 7.60), (2.0, 6.80), stroke: 2.2pt, mark: (end: ">", fill: black, scale: 1.2))
  content((2.30, 7.20), [$F$], anchor: "west")

  line((2.0, 0.05), (2.0, 0.85), stroke: 2.2pt, mark: (end: ">", fill: black, scale: 1.2))
  content((2.30, 0.45), [$F$], anchor: "west")

  // Contorno superiore e inferiore della colonna
  line((0.44, 6.54), (3.56, 6.54), stroke: 1pt)
  line((0.44, 1.20), (3.56, 1.20), stroke: 1pt)

  // --- NERVATURE ORIZZONTALI INTERNE (6 giunti) ---
  // Giunto 1 (y = 1.62 .. 1.92)
  line((0.60, 1.62), (3.40, 1.62), stroke: 0.9pt)
  line((0.55, 1.74), (3.45, 1.74), stroke: 0.9pt)
  line((0.55, 1.80), (3.45, 1.80), stroke: 0.9pt)
  line((0.60, 1.92), (3.40, 1.92), stroke: 0.9pt)

  // Giunto 2 (y = 2.38 .. 2.68)
  line((0.60, 2.38), (3.40, 2.38), stroke: 0.9pt)
  line((0.55, 2.50), (3.45, 2.50), stroke: 0.9pt)
  line((0.55, 2.56), (3.45, 2.56), stroke: 0.9pt)
  line((0.60, 2.68), (3.40, 2.68), stroke: 0.9pt)

  // Giunto 3 (y = 3.14 .. 3.44)
  line((0.60, 3.14), (3.40, 3.14), stroke: 0.9pt)
  line((0.55, 3.26), (3.45, 3.26), stroke: 0.9pt)
  line((0.55, 3.32), (3.45, 3.32), stroke: 0.9pt)
  line((0.60, 3.44), (3.40, 3.44), stroke: 0.9pt)

  // Giunto 4 (y = 3.90 .. 4.20)
  line((0.60, 3.90), (3.40, 3.90), stroke: 0.9pt)
  line((0.55, 4.02), (3.45, 4.02), stroke: 0.9pt)
  line((0.55, 4.08), (3.45, 4.08), stroke: 0.9pt)
  line((0.60, 4.20), (3.40, 4.20), stroke: 0.9pt)

  // Giunto 5 (y = 4.66 .. 4.96)
  line((0.60, 4.66), (3.40, 4.66), stroke: 0.9pt)
  line((0.55, 4.78), (3.45, 4.78), stroke: 0.9pt)
  line((0.55, 4.84), (3.45, 4.84), stroke: 0.9pt)
  line((0.60, 4.96), (3.40, 4.96), stroke: 0.9pt)

  // Giunto 6 (y = 5.42 .. 5.72)
  line((0.60, 5.42), (3.40, 5.42), stroke: 0.9pt)
  line((0.55, 5.54), (3.45, 5.54), stroke: 0.9pt)
  line((0.55, 5.60), (3.45, 5.60), stroke: 0.9pt)
  line((0.60, 5.72), (3.40, 5.72), stroke: 0.9pt)

  // --- PARETI VERTICALI INTERNE ---
  // Sinistra (x = 0.60) e Destra (x = 3.40)
  line((0.60, 1.20), (0.60, 1.62), stroke: 1pt)
  line((0.60, 1.92), (0.60, 2.38), stroke: 1pt)
  line((0.60, 2.68), (0.60, 3.14), stroke: 1pt)
  line((0.60, 3.44), (0.60, 3.90), stroke: 1pt)
  line((0.60, 4.20), (0.60, 4.66), stroke: 1pt)
  line((0.60, 4.96), (0.60, 5.42), stroke: 1pt)
  line((0.60, 5.72), (0.60, 6.54), stroke: 1pt)

  line((3.40, 1.20), (3.40, 1.62), stroke: 1pt)
  line((3.40, 1.92), (3.40, 2.38), stroke: 1pt)
  line((3.40, 2.68), (3.40, 3.14), stroke: 1pt)
  line((3.40, 3.44), (3.40, 3.90), stroke: 1pt)
  line((3.40, 4.20), (3.40, 4.66), stroke: 1pt)
  line((3.40, 4.96), (3.40, 5.42), stroke: 1pt)
  line((3.40, 5.72), (3.40, 6.54), stroke: 1pt)

  // --- PROFILI CONICI A "V" TRA PARETI E ANELLI ---
  // Lato sinistro (x tra 0.44 e 0.55)
  line((0.44, 1.20), (0.44, 1.49), (0.55, 1.77), (0.44, 2.05), (0.44, 2.25), (0.55, 2.53), (0.44, 2.81), (0.44, 3.01), (0.55, 3.29), (0.44, 3.57), (0.44, 3.77), (0.55, 4.05), (0.44, 4.33), (0.44, 4.53), (0.55, 4.81), (0.44, 5.09), (0.44, 5.29), (0.55, 5.57), (0.44, 5.85), (0.44, 6.54), stroke: 1pt)

  // Lato destro (x tra 3.45 e 3.56)
  line((3.56, 1.20), (3.56, 1.49), (3.45, 1.77), (3.56, 2.05), (3.56, 2.25), (3.45, 2.53), (3.56, 2.81), (3.56, 3.01), (3.45, 3.29), (3.56, 3.57), (3.56, 3.77), (3.45, 4.05), (3.56, 4.33), (3.56, 4.53), (3.45, 4.81), (3.56, 5.09), (3.56, 5.29), (3.45, 5.57), (3.56, 5.85), (3.56, 6.54), stroke: 1pt)

  // --- ANELLI ESTERNI (6 a sinistra, 6 a destra) ---
  // Sinistra (x = 0.28 .. 0.44)
  line((0.44, 1.49), (0.28, 1.49), (0.28, 2.05), (0.44, 2.05), stroke: 1pt)
  line((0.44, 2.25), (0.28, 2.25), (0.28, 2.81), (0.44, 2.81), stroke: 1pt)
  line((0.44, 3.01), (0.28, 3.01), (0.28, 3.57), (0.44, 3.57), stroke: 1pt)
  line((0.44, 3.77), (0.28, 3.77), (0.28, 4.33), (0.44, 4.33), stroke: 1pt)
  line((0.44, 4.53), (0.28, 4.53), (0.28, 5.09), (0.44, 5.09), stroke: 1pt)
  line((0.44, 5.29), (0.28, 5.29), (0.28, 5.85), (0.44, 5.85), stroke: 1pt)

  // Destra (x = 3.56 .. 3.72)
  line((3.56, 1.49), (3.72, 1.49), (3.72, 2.05), (3.56, 2.05), stroke: 1pt)
  line((3.56, 2.25), (3.72, 2.25), (3.72, 2.81), (3.56, 2.81), stroke: 1pt)
  line((3.56, 3.01), (3.72, 3.01), (3.72, 3.57), (3.56, 3.57), stroke: 1pt)
  line((3.56, 3.77), (3.72, 3.77), (3.72, 4.33), (3.56, 4.33), stroke: 1pt)
  line((3.56, 4.53), (3.72, 4.53), (3.72, 5.09), (3.56, 5.09), stroke: 1pt)
  line((3.56, 5.29), (3.72, 5.29), (3.72, 5.85), (3.56, 5.85), stroke: 1pt)

  // --- TRATTEGGI DI SEZIONE PANNELLO 1 ---
  // Parete sinistra
  line((0.44, 1.25), (0.60, 1.41), stroke: 0.5pt)
  line((0.44, 1.42), (0.60, 1.58), stroke: 0.5pt)
  line((0.44, 2.05), (0.60, 2.21), stroke: 0.5pt)
  line((0.44, 2.22), (0.60, 2.38), stroke: 0.5pt)
  line((0.44, 2.81), (0.60, 2.97), stroke: 0.5pt)
  line((0.44, 2.98), (0.60, 3.14), stroke: 0.5pt)
  line((0.44, 3.57), (0.60, 3.73), stroke: 0.5pt)
  line((0.44, 3.74), (0.60, 3.90), stroke: 0.5pt)
  line((0.44, 4.33), (0.60, 4.49), stroke: 0.5pt)
  line((0.44, 4.50), (0.60, 4.66), stroke: 0.5pt)
  line((0.44, 5.09), (0.60, 5.25), stroke: 0.5pt)
  line((0.44, 5.26), (0.60, 5.42), stroke: 0.5pt)
  line((0.44, 5.85), (0.60, 6.01), stroke: 0.5pt)
  line((0.44, 6.05), (0.60, 6.21), stroke: 0.5pt)
  line((0.44, 6.25), (0.60, 6.41), stroke: 0.5pt)

  // Anelli sinistri
  line((0.28, 1.55), (0.48, 1.75), stroke: 0.5pt)
  line((0.28, 1.75), (0.48, 1.95), stroke: 0.5pt)
  line((0.28, 2.31), (0.48, 2.51), stroke: 0.5pt)
  line((0.28, 2.51), (0.48, 2.71), stroke: 0.5pt)
  line((0.28, 3.07), (0.48, 3.27), stroke: 0.5pt)
  line((0.28, 3.27), (0.48, 3.47), stroke: 0.5pt)
  line((0.28, 3.83), (0.48, 4.03), stroke: 0.5pt)
  line((0.28, 4.03), (0.48, 4.23), stroke: 0.5pt)
  line((0.28, 4.59), (0.48, 4.79), stroke: 0.5pt)
  line((0.28, 4.79), (0.48, 4.99), stroke: 0.5pt)
  line((0.28, 5.35), (0.48, 5.55), stroke: 0.5pt)
  line((0.28, 5.55), (0.48, 5.75), stroke: 0.5pt)

  // Parete destra
  line((3.40, 1.41), (3.56, 1.25), stroke: 0.5pt)
  line((3.40, 1.58), (3.56, 1.42), stroke: 0.5pt)
  line((3.40, 2.21), (3.56, 2.05), stroke: 0.5pt)
  line((3.40, 2.38), (3.56, 2.22), stroke: 0.5pt)
  line((3.40, 2.97), (3.56, 2.81), stroke: 0.5pt)
  line((3.40, 3.14), (3.56, 2.98), stroke: 0.5pt)
  line((3.40, 3.73), (3.56, 3.57), stroke: 0.5pt)
  line((3.40, 3.90), (3.56, 3.74), stroke: 0.5pt)
  line((3.40, 4.49), (3.56, 4.33), stroke: 0.5pt)
  line((3.40, 4.66), (3.56, 4.50), stroke: 0.5pt)
  line((3.40, 5.25), (3.56, 5.09), stroke: 0.5pt)
  line((3.40, 5.42), (3.56, 5.26), stroke: 0.5pt)
  line((3.40, 6.01), (3.56, 5.85), stroke: 0.5pt)
  line((3.40, 6.21), (3.56, 6.05), stroke: 0.5pt)
  line((3.40, 6.41), (3.56, 6.25), stroke: 0.5pt)

  // Anelli destri
  line((3.52, 1.75), (3.72, 1.55), stroke: 0.5pt)
  line((3.52, 1.95), (3.72, 1.75), stroke: 0.5pt)
  line((3.52, 2.51), (3.72, 2.31), stroke: 0.5pt)
  line((3.52, 2.71), (3.72, 2.51), stroke: 0.5pt)
  line((3.52, 3.27), (3.72, 3.07), stroke: 0.5pt)
  line((3.52, 3.47), (3.72, 3.27), stroke: 0.5pt)
  line((3.52, 4.03), (3.72, 3.83), stroke: 0.5pt)
  line((3.52, 4.23), (3.72, 4.03), stroke: 0.5pt)
  line((3.52, 4.79), (3.72, 4.59), stroke: 0.5pt)
  line((3.52, 4.99), (3.72, 4.79), stroke: 0.5pt)
  line((3.52, 5.55), (3.72, 5.35), stroke: 0.5pt)
  line((3.52, 5.75), (3.72, 5.55), stroke: 0.5pt)

  // --- INDICATORE DI INGRANDIMENTO (ROSSO) ---
  circle((3.55, 5.18), radius: 0.62, stroke: (paint: red, thickness: 2.2pt, dash: "dashed"))
  line((4.22, 5.05), (5.05, 4.68), stroke: (paint: red, thickness: 1.8pt), mark: (end: ">", fill: red, scale: 1.1))


  // ==========================================
  // PANNELLO 2: DETTAGLIO INGRANDITO (DESTRA)
  // ==========================================

  // --- CONTORNI NERI DEL GIUNTO INGRANDITO ---
  // Parte superiore (sopra il giunto alto)
  line((7.20, 6.60), (7.20, 5.45), (5.30, 5.45), stroke: 2.2pt)
  line((5.30, 5.12), (7.60, 5.12), stroke: 2.2pt)
  line((7.90, 6.60), (7.95, 6.20), stroke: 2.2pt)

  // Parte centrale (tra il giunto alto e il giunto basso)
  line((5.30, 4.98), (7.60, 4.98), stroke: 2.2pt)
  line((5.30, 4.65), (7.20, 4.65), stroke: 2.2pt)
  line((7.20, 2.55), (5.30, 2.55), stroke: 2.2pt)
  line((5.30, 2.22), (7.60, 2.22), (7.65, 2.55), stroke: 2.2pt)

  // Anello esterno superiore
  line((7.95, 6.20), (8.50, 6.20), stroke: 2.2pt)
  line((7.95, 4.15), (8.50, 4.15), stroke: 2.2pt)

  // Anello esterno inferiore (parziale in basso)
  line((7.95, 2.10), (7.95, 3.05), (8.50, 3.05), (8.50, 2.10), stroke: 2.2pt)

  // --- TRATTEGGI DI SEZIONE PANNELLO 2 (45 gradi) ---
  // Parete superiore
  line((7.20, 6.25), (7.55, 6.60), stroke: 1.1pt)
  line((7.20, 5.85), (7.88, 6.53), stroke: 1.1pt)
  line((7.20, 5.45), (7.92, 6.17), stroke: 1.1pt)
  line((7.45, 5.30), (7.78, 5.63), stroke: 1.1pt)

  // Anello esterno superiore
  line((7.85, 5.90), (8.15, 6.20), stroke: 1.1pt)
  line((7.70, 5.35), (8.50, 6.15), stroke: 1.1pt)
  line((7.62, 4.87), (8.50, 5.75), stroke: 1.1pt)
  line((7.78, 4.63), (8.50, 5.35), stroke: 1.1pt)
  line((7.93, 4.38), (8.50, 4.95), stroke: 1.1pt)
  line((8.10, 4.15), (8.50, 4.55), stroke: 1.1pt)

  // Parete centrale (tra x = 7.20 e il profilo verde)
  line((7.20, 4.40), (7.67, 4.87), stroke: 1.1pt)
  line((7.20, 4.00), (7.74, 4.54), stroke: 1.1pt)
  line((7.20, 3.60), (7.83, 4.23), stroke: 1.1pt)
  line((7.20, 3.20), (7.92, 3.92), stroke: 1.1pt)
  line((7.20, 2.80), (7.90, 3.50), stroke: 1.1pt)
  line((7.35, 2.55), (7.74, 2.94), stroke: 1.1pt)

  // Anello esterno inferiore
  line((7.95, 2.75), (8.25, 3.05), stroke: 1.1pt)
  line((7.95, 2.35), (8.50, 2.90), stroke: 1.1pt)
  line((8.10, 2.10), (8.50, 2.50), stroke: 1.1pt)

  // --- EVIDENZIAZIONI COLORATE (SOVRAPPOSIZIONE) ---
  // Bordo interno parete centrale (Rosso scuro / Marrone)
  line((7.20, 2.55), (7.20, 4.65), stroke: (paint: rgb(180, 0, 0), thickness: 3.2pt))

  // Profilo a V parete centrale (Verde acceso)
  line((7.65, 2.55), (7.95, 3.60), stroke: (paint: rgb(30, 215, 30), thickness: 3.2pt))
  line((7.95, 3.60), (7.65, 4.65), stroke: (paint: rgb(30, 215, 30), thickness: 3.2pt))

  // Profilo a V di contatto giunto superiore (Magenta)
  line((7.95, 4.15), (7.60, 5.05), stroke: (paint: rgb(235, 30, 190), thickness: 3.2pt))
  line((7.60, 5.05), (7.95, 6.20), stroke: (paint: rgb(235, 30, 190), thickness: 3.2pt))

  // Bordo esterno anello superiore (Rosso vivo)
  line((8.50, 4.15), (8.50, 6.20), stroke: (paint: rgb(230, 0, 0), thickness: 3.2pt))
})
