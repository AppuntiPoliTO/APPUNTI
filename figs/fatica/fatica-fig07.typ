// Figura estratta da fatica.typ (riga 355) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Superficie metallica piana a sinistra
  line((1.10, 2.00), (3.30, 2.00), stroke: 1.3pt)

  // Primo blocco di piani di scorrimento (inclinati a 45 gradi, pendenza 1:1)
  line((1.90, 0.60), (3.50, 2.20), stroke: 1.2pt)
  line((2.28, 0.80), (3.88, 2.40), stroke: 1.2pt)
  line((2.66, 1.00), (3.88, 2.22), stroke: 1.2pt)
  line((3.04, 1.20), (4.44, 2.60), stroke: 1.2pt)
  line((3.42, 1.40), (4.62, 2.60), stroke: 1.2pt)
  line((3.75, 1.55), (4.95, 2.75), stroke: 1.2pt)
  line((4.10, 1.72), (5.13, 2.75), stroke: 1.2pt)
  line((4.35, 1.78), (5.60, 3.04), stroke: 1.2pt)
  line((4.35, 1.61), (5.78, 3.04), stroke: 1.2pt)
  line((4.35, 1.43), (5.78, 2.86), stroke: 1.2pt)
  line((4.45, 1.35), (5.88, 2.78), stroke: 1.2pt)
  line((4.45, 1.17), (5.88, 2.60), stroke: 1.2pt)
  line((4.45, 0.99), (5.98, 2.52), stroke: 1.2pt)
  line((4.55, 0.91), (6.08, 2.44), stroke: 1.2pt)
  line((4.55, 0.73), (6.08, 2.26), stroke: 1.2pt)
  line((4.60, 0.60), (6.08, 2.08), stroke: 1.2pt)
  line((4.65, 0.47), (6.13, 1.95), stroke: 1.2pt)
  line((4.68, 0.32), (6.16, 1.80), stroke: 1.2pt)
  line((4.68, 0.14), (6.16, 1.62), stroke: 1.2pt)

  // Gradini orizzontali del primo blocco (superiori e laterali destri)
  line((3.50, 2.20), (3.68, 2.20), stroke: 1.3pt)
  line((4.62, 2.60), (4.80, 2.60), stroke: 1.3pt)
  line((4.95, 2.75), (5.13, 2.75), stroke: 1.3pt)
  line((5.60, 3.04), (5.78, 3.04), stroke: 1.3pt)
  line((5.60, 2.86), (5.78, 2.86), stroke: 1.3pt)
  line((5.80, 2.34), (5.98, 2.34), stroke: 1.3pt)
  line((5.90, 2.26), (6.08, 2.26), stroke: 1.3pt)
  line((5.90, 2.08), (6.08, 2.08), stroke: 1.3pt)
  line((5.90, 1.90), (6.08, 1.90), stroke: 1.3pt)
  line((5.95, 1.77), (6.13, 1.77), stroke: 1.3pt)
  line((5.98, 1.62), (6.16, 1.62), stroke: 1.3pt)

  // Secondo blocco di piani di scorrimento (destra)
  line((5.15, 0.00), (6.68, 1.53), stroke: 1.2pt)
  line((5.60, 0.27), (6.76, 1.43), stroke: 1.2pt)
  line((5.95, 0.44), (7.10, 1.59), stroke: 1.2pt)
  line((6.30, 0.61), (7.55, 1.86), stroke: 1.2pt)
  line((6.60, 0.73), (7.73, 1.86), stroke: 1.2pt)
  line((6.80, 0.75), (8.25, 2.20), stroke: 1.2pt)
  line((6.80, 0.57), (8.35, 2.12), stroke: 1.2pt)
  line((6.85, 0.44), (8.38, 1.97), stroke: 1.2pt)
  line((6.95, 0.36), (8.40, 1.81), stroke: 1.2pt)
  line((7.05, 0.28), (8.45, 1.68), stroke: 1.2pt)

  // Gradini orizzontali del secondo blocco
  line((6.30, 1.45), (6.50, 1.45), stroke: 1.3pt)
  line((6.58, 1.53), (6.76, 1.53), stroke: 1.3pt)
  line((7.37, 1.86), (7.55, 1.86), stroke: 1.3pt)
  line((8.07, 2.20), (8.25, 2.20), stroke: 1.3pt)
  line((8.17, 2.02), (8.35, 2.02), stroke: 1.3pt)
  line((8.20, 1.84), (8.38, 1.84), stroke: 1.3pt)
  line((8.22, 1.66), (8.40, 1.66), stroke: 1.3pt)
  line((8.35, 1.50), (8.55, 1.50), stroke: 1.3pt)

  // Quota dello spessore della banda di scorrimento (circa 0.1 micrometri)
  line((5.95, 3.04), (7.00, 3.04), stroke: 0.6pt)
  line((5.95, 2.86), (7.00, 2.86), stroke: 0.6pt)
  line((6.52, 3.50), (6.52, 3.04), mark: (end: ">", fill: black), stroke: 0.7pt)

  // Freccia indicatrice della superficie metallica (arancione)
  line((1.55, 2.62), (2.68, 2.15), mark: (end: ">", fill: orange), stroke: (paint: orange, thickness: 1.3pt))

  // Freccia doppia del carico ciclico Delta F (rossa)
  line((0.00, 0.10), (1.85, 0.10), mark: (start: ">", end: ">", fill: red), stroke: (paint: red, thickness: 1.5pt))

  // Etichette
  content((2.05, 3.45), text(size: 16pt)[Superficie])
  content((2.05, 2.90), text(size: 16pt)[metallica])
  content((7.40, 3.85), text(size: 15pt)[$approx 0.1 thin mu"m"$])
  content((0.92, 0.65), text(fill: red, size: 17pt)[$Delta "F"$])
})
