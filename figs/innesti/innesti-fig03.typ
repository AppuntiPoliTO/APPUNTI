// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Figura estratta da _parts/innesti/p1.typ (riga 493) con LocalTypst
#import "../comuni/_helpers.typ": fig-safe, img-flag

#canvas(length: 0.9cm, {
  import draw: *

  // ==================== VISTA FRONTALE (SINISTRA) ====================
  // Sfondo campana e mozzo sezionati
  circle((0, 0), radius: 2.40, fill: gray.transparentize(88%), stroke: none)
  circle((0, 0), radius: 2.20, fill: white, stroke: none)
  circle((0, 0), radius: 0.65, fill: gray.transparentize(86%), stroke: none)

  // Tratteggio sezione campana esterna (anello R = 2.20 .. 2.40)
  line((-2.36, 0.42), (-2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, 0.82), (-2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, 1.20), (-1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, 1.54), (-1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, 1.84), (-1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, 2.08), (-1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, 2.25), (-0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, 2.36), (-0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, 2.40), (0.00, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((0.42, 2.36), (0.38, 2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.82, 2.25), (0.75, 2.07), stroke: 0.45pt + gray.darken(45%))
  line((1.20, 2.08), (1.10, 1.91), stroke: 0.45pt + gray.darken(45%))
  line((1.54, 1.84), (1.41, 1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.84, 1.54), (1.69, 1.41), stroke: 0.45pt + gray.darken(45%))
  line((2.08, 1.20), (1.91, 1.10), stroke: 0.45pt + gray.darken(45%))
  line((2.25, 0.82), (2.07, 0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.36, 0.42), (2.17, 0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.40, 0.00), (2.20, 0.00), stroke: 0.45pt + gray.darken(45%))
  line((2.36, -0.42), (2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((2.25, -0.82), (2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((2.08, -1.20), (1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((1.84, -1.54), (1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((1.54, -1.84), (1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((1.20, -2.08), (1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((0.82, -2.25), (0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((0.42, -2.36), (0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((0.00, -2.40), (0.00, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.42, -2.36), (-0.38, -2.17), stroke: 0.45pt + gray.darken(45%))
  line((-0.82, -2.25), (-0.75, -2.07), stroke: 0.45pt + gray.darken(45%))
  line((-1.20, -2.08), (-1.10, -1.91), stroke: 0.45pt + gray.darken(45%))
  line((-1.54, -1.84), (-1.41, -1.69), stroke: 0.45pt + gray.darken(45%))
  line((-1.84, -1.54), (-1.69, -1.41), stroke: 0.45pt + gray.darken(45%))
  line((-2.08, -1.20), (-1.91, -1.10), stroke: 0.45pt + gray.darken(45%))
  line((-2.25, -0.82), (-2.07, -0.75), stroke: 0.45pt + gray.darken(45%))
  line((-2.36, -0.42), (-2.17, -0.38), stroke: 0.45pt + gray.darken(45%))
  line((-2.40, 0.00), (-2.20, 0.00), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio mozzo centrale (R = 0.28 .. 0.65, inclinato a 135 gradi)
  line((-0.25, 0.60), (-0.60, 0.25), stroke: 0.45pt + gray.darken(45%))
  line((0.02, 0.65), (-0.65, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.28, 0.58), (-0.02, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((-0.28, 0.02), (-0.58, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((0.46, 0.46), (0.18, 0.18), stroke: 0.45pt + gray.darken(45%))
  line((-0.18, -0.18), (-0.46, -0.46), stroke: 0.45pt + gray.darken(45%))
  line((0.58, 0.28), (0.28, -0.02), stroke: 0.45pt + gray.darken(45%))
  line((0.02, -0.28), (-0.28, -0.58), stroke: 0.45pt + gray.darken(45%))
  line((0.65, 0.02), (-0.02, -0.65), stroke: 0.45pt + gray.darken(45%))
  line((0.60, -0.25), (0.25, -0.60), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio albero interno (R = 0.28, inclinato a 45 gradi)
  line((-0.20, -0.20), (0.20, 0.20), stroke: 0.45pt + gray.darken(45%))
  line((-0.26, -0.08), (0.08, 0.26), stroke: 0.45pt + gray.darken(45%))
  line((-0.08, -0.26), (0.26, 0.08), stroke: 0.45pt + gray.darken(45%))

  // Circonferenze vista frontale
  circle((0, 0), radius: 2.40, stroke: 1pt)
  circle((0, 0), radius: 2.20, stroke: 1pt)
  circle((0, 0), radius: 2.13, stroke: 0.65pt)
  circle((0, 0), radius: 1.35, stroke: 0.85pt)
  circle((0, 0), radius: 0.65, stroke: 1pt)
  circle((0, 0), radius: 0.28, stroke: 1pt)

  // Linguetta vista frontale
  rect((-0.34, -0.06), (-0.23, 0.06), fill: white, stroke: 0.85pt)


  // ==================== VISTA SEZIONATA (DESTRA) ====================
  // Riempimenti di fondo per i corpi sezionati
  // Campana superiore e inferiore
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, 1.35), (5.45, 1.65), fill: gray.transparentize(86%), stroke: none)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, fill: gray.transparentize(86%), stroke: none)
  rect((5.25, -1.65), (5.45, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Corpo A (sopra e sotto)
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, fill: gray.transparentize(88%), stroke: none)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, fill: gray.transparentize(88%), stroke: none)

  // Spingidisco B (sopra e sotto)
  rect((4.58, 1.35), (4.95, 2.15), fill: gray.transparentize(86%), stroke: none)
  rect((4.58, -2.15), (4.95, -1.35), fill: gray.transparentize(86%), stroke: none)

  // Mozzo e disco D (con guarnizioni d'attrito)
  rect((4.25, 0.28), (4.63, 0.65), fill: gray.transparentize(86%), stroke: none)
  rect((4.25, -0.65), (4.63, -0.28), fill: gray.transparentize(86%), stroke: none)
  rect((4.40, 0.65), (4.48, 2.13), fill: gray.transparentize(75%), stroke: none)
  rect((4.40, -2.13), (4.48, -0.65), fill: gray.transparentize(75%), stroke: none)
  rect((4.30, 1.35), (4.40, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, 1.35), (4.58, 2.13), fill: gray.transparentize(65%), stroke: none)
  rect((4.30, -2.13), (4.40, -1.35), fill: gray.transparentize(65%), stroke: none)
  rect((4.48, -2.13), (4.58, -1.35), fill: gray.transparentize(65%), stroke: none)

  // Tratteggio Corpo A superiore (inclinato a 135 gradi: dx = -dy)
  line((4.05, 2.20), (4.30, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((3.80, 2.20), (4.30, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 2.05), (4.30, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.80), (4.15, 1.35), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.55), (4.08, 1.17), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.30), (4.08, 0.92), stroke: 0.45pt + gray.darken(45%))
  line((3.70, 1.05), (4.08, 0.67), stroke: 0.45pt + gray.darken(45%))
  line((3.65, 0.85), (4.08, 0.42), stroke: 0.45pt + gray.darken(45%))
  line((3.40, 0.85), (3.97, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.75), (3.72, 0.28), stroke: 0.45pt + gray.darken(45%))
  line((3.25, 0.50), (3.47, 0.28), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Corpo A inferiore (inclinato a 135 gradi: dx = -dy)
  line((3.80, -0.28), (4.08, -0.56), stroke: 0.45pt + gray.darken(45%))
  line((3.55, -0.28), (4.08, -0.81), stroke: 0.45pt + gray.darken(45%))
  line((3.30, -0.28), (4.08, -1.06), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.48), (4.08, -1.31), stroke: 0.45pt + gray.darken(45%))
  line((3.25, -0.73), (3.37, -0.85), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -0.93), (4.30, -1.53), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.18), (4.30, -1.78), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.43), (4.30, -2.03), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.68), (4.22, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.70, -1.93), (3.97, -2.20), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Campana superiore e inferiore (inclinato a 45 gradi: dx = dy)
  line((3.70, 2.20), (3.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((3.95, 2.20), (4.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.20, 2.20), (4.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.45, 2.20), (4.65, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.70, 2.20), (4.90, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((4.95, 2.20), (5.15, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.20, 2.20), (5.40, 2.40), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 2.00), (5.45, 2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, 1.45), (5.45, 1.65), stroke: 0.45pt + gray.darken(45%))
  line((5.30, 1.35), (5.45, 1.50), stroke: 0.45pt + gray.darken(45%))

  line((3.70, -2.40), (3.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((3.95, -2.40), (4.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.20, -2.40), (4.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.45, -2.40), (4.65, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.70, -2.40), (4.90, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((4.95, -2.40), (5.15, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.20, -2.40), (5.40, -2.20), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -2.15), (5.45, -1.95), stroke: 0.45pt + gray.darken(45%))
  line((5.25, -1.65), (5.45, -1.45), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Spingidisco B (sopra e sotto, inclinato a 135 gradi: dx = -dy)
  line((4.75, 2.15), (4.95, 1.95), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 2.07), (4.95, 1.70), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.82), (4.95, 1.45), stroke: 0.45pt + gray.darken(45%))
  line((4.58, 1.57), (4.80, 1.35), stroke: 0.45pt + gray.darken(45%))

  line((4.75, -1.35), (4.95, -1.55), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.43), (4.95, -1.80), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.68), (4.95, -2.05), stroke: 0.45pt + gray.darken(45%))
  line((4.58, -1.93), (4.80, -2.15), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio Mozzo D (sopra e sotto, inclinato a 45 gradi: dx = dy)
  line((4.25, 0.45), (4.45, 0.65), stroke: 0.45pt + gray.darken(45%))
  line((4.28, 0.28), (4.63, 0.63), stroke: 0.45pt + gray.darken(45%))
  line((4.48, 0.28), (4.63, 0.43), stroke: 0.45pt + gray.darken(45%))

  line((4.25, -0.47), (4.44, -0.28), stroke: 0.45pt + gray.darken(45%))
  line((4.28, -0.65), (4.63, -0.30), stroke: 0.45pt + gray.darken(45%))
  line((4.48, -0.65), (4.63, -0.50), stroke: 0.45pt + gray.darken(45%))

  // Tratteggio guarnizioni d'attrito
  line((4.30, 1.45), (4.40, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.65), (4.40, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 1.85), (4.40, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.30, 2.03), (4.40, 2.13), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.45), (4.58, 1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.65), (4.58, 1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 1.85), (4.58, 1.95), stroke: 0.45pt + gray.darken(55%))
  line((4.48, 2.03), (4.58, 2.13), stroke: 0.45pt + gray.darken(55%))

  line((4.30, -2.03), (4.40, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.85), (4.40, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.65), (4.40, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.30, -1.45), (4.40, -1.35), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -2.03), (4.58, -1.93), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.85), (4.58, -1.75), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.65), (4.58, -1.55), stroke: 0.45pt + gray.darken(55%))
  line((4.48, -1.45), (4.58, -1.35), stroke: 0.45pt + gray.darken(55%))

  // ==================== CONTORNI PRINCIPALI VISTA DESTRA ====================
  // Albero sinistro
  line((2.88, 0.28), (4.14, 0.28), (4.14, -0.28), (2.88, -0.28), stroke: 1pt)
  bezier((2.88, 0.28), (2.88, 0.00), (2.82, 0.18), (2.94, 0.10), stroke: 0.85pt)
  bezier((2.88, 0.00), (2.88, -0.28), (2.82, -0.10), (2.94, -0.18), stroke: 0.85pt)
  // Cava linguetta albero sinistro
  line((3.35, 0.05), (3.92, 0.05), stroke: 0.8pt)
  line((3.35, -0.05), (3.92, -0.05), stroke: 0.8pt)
  arc((3.35, 0.00), start: 90deg, stop: 270deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)
  arc((3.92, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Albero destro
  line((5.55, 0.28), (4.20, 0.28), (4.20, -0.28), (5.55, -0.28), stroke: 1pt)
  bezier((5.55, 0.28), (5.55, 0.00), (5.61, 0.18), (5.49, 0.10), stroke: 0.85pt)
  bezier((5.55, 0.00), (5.55, -0.28), (5.61, -0.10), (5.49, -0.18), stroke: 0.85pt)
  // Cava linguetta albero destro
  line((4.20, 0.05), (4.98, 0.05), stroke: 0.8pt)
  line((4.20, -0.05), (4.98, -0.05), stroke: 0.8pt)
  arc((4.98, 0.00), start: -90deg, stop: 90deg, radius: 0.05, anchor: "origin", stroke: 0.8pt)

  // Contorno Corpo A
  line((3.25, 0.28), (3.25, 0.85), (3.70, 0.85), (3.70, 2.20), (4.30, 2.20), (4.30, 1.35), (4.08, 1.35), (4.08, 0.28), close: true, stroke: 1pt)
  line((3.25, -0.28), (3.25, -0.85), (3.70, -0.85), (3.70, -2.20), (4.30, -2.20), (4.30, -1.35), (4.08, -1.35), (4.08, -0.28), close: true, stroke: 1pt)
  line((4.08, 0.28), (4.08, -0.28), stroke: 0.8pt)

  // Contorno Campana
  line((3.70, 2.20), (3.70, 2.40), (5.45, 2.40), (5.45, 1.88), (5.25, 1.88), (5.25, 2.20), close: true, stroke: 1pt)
  rect((5.25, 1.35), (5.45, 1.65), stroke: 1pt)
  line((3.70, -2.20), (3.70, -2.40), (5.45, -2.40), (5.45, -1.88), (5.25, -1.88), (5.25, -2.20), close: true, stroke: 1pt)
  rect((5.25, -1.65), (5.45, -1.35), stroke: 1pt)
  // Spigoli interni campana in vista
  line((5.25, 1.35), (5.25, 0.28), stroke: 0.8pt)
  line((5.45, 1.35), (5.45, 0.28), stroke: 0.8pt)
  line((5.25, -1.35), (5.25, -0.28), stroke: 0.8pt)
  line((5.45, -1.35), (5.45, -0.28), stroke: 0.8pt)

  // Contorno Disco e Mozzo D
  rect((4.25, 0.28), (4.63, 0.65), stroke: 1pt)
  rect((4.25, -0.65), (4.63, -0.28), stroke: 1pt)
  rect((4.40, 0.65), (4.48, 2.13), stroke: 0.9pt)
  rect((4.40, -2.13), (4.48, -0.65), stroke: 0.9pt)
  rect((4.30, 1.35), (4.40, 2.13), stroke: 0.9pt)
  rect((4.48, 1.35), (4.58, 2.13), stroke: 0.9pt)
  rect((4.30, -2.13), (4.40, -1.35), stroke: 0.9pt)
  rect((4.48, -2.13), (4.58, -1.35), stroke: 0.9pt)
  line((4.30, 1.35), (4.30, -1.35), stroke: 0.75pt)

  // Contorno Spingidisco B e perni di guida
  rect((4.58, 1.35), (4.95, 2.15), stroke: 1pt)
  rect((4.58, -2.15), (4.95, -1.35), stroke: 1pt)
  line((4.95, 1.35), (4.95, 0.28), stroke: 0.8pt)
  line((4.95, -1.35), (4.95, -0.28), stroke: 0.8pt)
  // Perni guida
  rect((4.95, 1.65), (5.60, 1.88), fill: white, stroke: 0.9pt)
  rect((4.95, -1.88), (5.60, -1.65), fill: white, stroke: 0.9pt)

  // Frecce forza molle spingidisco (punte stealth piene)
  line((5.25, 2.03), (4.97, 2.03), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, 1.48), (4.97, 1.48), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, -1.48), (4.97, -1.48), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)
  line((5.25, -2.03), (4.97, -2.03), mark: (end: "stealth", fill: black, scale: 0.78), stroke: 1pt)

  // ==================== ASSI DI SIMMETRIA ====================
  // Asse orizzontale principale
  line((-2.70, 0), (5.95, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale vista frontale
  line((0, -2.75), (0, 2.95), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Asse verticale mediano disco D
  line((4.44, -2.75), (4.44, 2.75), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  // Assi perni spingidisco
  line((4.80, 1.765), (5.75, 1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.80, -1.765), (5.75, -1.765), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // ==================== ETICHETTE E RICHIAMI ====================
  // Etichette componenti principali con fondino per massima leggibilità
  rect((3.84, 1.62), (4.16, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.00, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*A*])

  rect((4.61, 1.62), (4.92, 1.94), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.765, 1.78), text(size: 11.5pt, fill: rgb("#e60000"))[*B*])

  rect((4.28, 0.31), (4.60, 0.62), fill: white.transparentize(15%), stroke: none, radius: 1.5pt)
  content((4.44, 0.465), text(size: 11.5pt, fill: rgb("#e60000"))[*D*])

  // Richiamo "Campana"
  line((4.95, 2.32), (6.10, 2.68), stroke: 0.6pt)
  content((6.18, 2.70), text(size: 10pt)[_Campana_], anchor: "west")

  // Richiamo "Spingidisco"
  line((4.82, -1.55), (6.00, -2.35), stroke: 0.6pt)
  content((6.08, -2.38), text(size: 10pt)[_Spingidisco_], anchor: "west")
})
