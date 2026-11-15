// Figura estratta da capitoli/03-cinematica-dei-fluidi-e-bilancio-di-massa.typ (riga 198) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.6cm, {
  import draw: *

  // --- PARTE SINISTRA: PROFILO DI VELOCITÀ u(z) ---
  // Parete inferiore e linea superiore
  line((-1.28, 0.00), (1.72, 0.00), stroke: 1pt + c-geo)
  line((-1.40, 2.02), (1.88, 2.02), stroke: 1pt + c-geo)

  // Tratteggio parete inferiore
  line((-0.90, -0.05), (-1.10, -0.35), stroke: 0.55pt + c-geo)
  line((-0.62, -0.05), (-0.78, -0.30), stroke: 0.55pt + c-geo)
  line((-0.28, -0.05), (-0.47, -0.32), stroke: 0.55pt + c-geo)
  line(( 0.08, -0.05), (-0.11, -0.32), stroke: 0.55pt + c-geo)
  line(( 0.45, -0.05), ( 0.25, -0.32), stroke: 0.55pt + c-geo)
  line(( 0.84, -0.05), ( 0.65, -0.25), stroke: 0.55pt + c-geo)
  line(( 1.25, -0.06), ( 1.03, -0.28), stroke: 0.55pt + c-geo)
  line(( 1.56, -0.10), ( 1.38, -0.26), stroke: 0.55pt + c-geo)

  // Asse verticale z
  line((0.00, 0.00), (0.00, 2.12), mark: (end: "stealth", fill: c-geo), stroke: 0.9pt + c-geo)

  // Profilo lineare u(z)
  line((0.00, 0.00), (1.36, 2.02), stroke: 1.2pt + c-vel)

  // Linee orizzontali interne al profilo di velocità
  line((0.04, 0.42), (0.24, 0.42), stroke: 1pt + c-vel)
  line((0.04, 0.87), (0.58, 0.87), stroke: 1pt + c-vel)
  line((0.05, 1.39), (0.93, 1.39), stroke: 1pt + c-vel)
  line((0.04, 1.77), (1.15, 1.77), stroke: 1pt + c-vel)

  // Etichette
  content((-0.25, 2.30), [$z$])
  content((1.58, 1.22), text(c-vel)[$u(z)$])

  // --- PARTE DESTRA: TRE VOLUMI IN DEFORMAZIONE (GRIGIO) ---
  // Volume 1 (sinistra)
  bezier((2.51, 0.25), (2.52, 0.78), (2.50, 0.45), (2.50, 0.62), stroke: 1pt + c-aux)
  bezier((2.52, 0.78), (2.85, 1.48), (2.54, 1.02), (2.72, 1.38), stroke: 1pt + c-aux)
  bezier((2.85, 1.48), (3.42, 1.66), (3.02, 1.60), (3.28, 1.68), stroke: 1pt + c-aux)
  bezier((3.42, 1.66), (3.69, 1.05), (3.52, 1.64), (3.75, 1.35), stroke: 1pt + c-aux)
  bezier((3.69, 1.05), (3.12, 0.06), (3.63, 0.65), (3.28, 0.22), stroke: 1pt + c-aux)
  bezier((3.12, 0.06), (2.55, 0.33), (2.92, -0.14), (2.42, 0.08), stroke: 1pt + c-aux)

  // Volume 2 (centro)
  bezier((3.70, 0.22), (3.95, 0.86), (3.78, 0.42), (3.85, 0.68), stroke: 1pt + c-aux)
  bezier((3.95, 0.86), (5.02, 1.48), (4.12, 1.18), (4.65, 1.48), stroke: 1pt + c-aux)
  bezier((5.02, 1.48), (5.16, 0.92), (5.20, 1.48), (5.21, 1.12), stroke: 1pt + c-aux)
  bezier((5.16, 0.92), (4.72, 0.31), (5.08, 0.72), (4.85, 0.45), stroke: 1pt + c-aux)
  bezier((4.72, 0.31), (3.70, 0.22), (4.35, 0.12), (3.60, 0.05), stroke: 1pt + c-aux)

  // Volume 3 (destra)
  bezier((5.21, 0.25), (5.82, 0.62), (5.35, 0.42), (5.65, 0.52), stroke: 1pt + c-aux)
  bezier((5.82, 0.62), (6.68, 1.32), (6.02, 0.74), (6.32, 1.20), stroke: 1pt + c-aux)
  bezier((6.68, 1.32), (7.55, 1.18), (7.05, 1.44), (7.42, 1.35), stroke: 1pt + c-aux)
  bezier((7.55, 1.18), (7.45, 0.45), (7.62, 1.00), (7.75, 0.62), stroke: 1pt + c-aux)
  bezier((7.45, 0.45), (6.80, 0.12), (7.25, 0.35), (7.02, 0.22), stroke: 1pt + c-aux)
  bezier((6.80, 0.12), (5.21, 0.25), (6.25, -0.15), (5.12, 0.05), stroke: 1pt + c-aux)
})
