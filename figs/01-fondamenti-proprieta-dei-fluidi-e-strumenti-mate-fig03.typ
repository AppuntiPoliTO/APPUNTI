// Figura estratta da capitoli/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate.typ (riga 223) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.8cm, {
  import draw: *

  // Superficie di sezione Omega (ellisse in prospettiva)
  circle((3.58, 1.925), radius: (0.50, 1.925), stroke: 1pt + c-geo)

  // Contorno della porzione sinistra del volume (chiuso esattamente sui vertici della sezione)
  bezier((3.58, 3.85), (0.00, 2.13), (2.75, 4.30), (0.00, 2.95), stroke: 1pt + c-geo)
  bezier((0.00, 2.13), (2.29, 0.20), (0.00, 1.45), (1.95, 1.15), stroke: 1pt + c-geo)
  bezier((2.29, 0.20), (3.58, 0.00), (2.42, -0.02), (3.10, -0.05), stroke: 1pt + c-geo)

  // Punto P_0 sulla sezione
  circle((3.85, 2.08), radius: 0.09, fill: c-geo, stroke: none)

  // Freccia che indica il punto P_0
  freccia((5.23, 4.72), (3.96, 2.25), col: c-aux, sp: 0.6pt)

  // Versore normale n
  freccia((3.85, 2.08), (5.01, 2.08), col: c-norm, sp: 1.1pt)

  // Vettore forza/flusso F (tratto più leggero come nell'immagine)
  freccia((3.98, 2.18), (5.80, 3.29), col: c-forza, sp: 1.1pt)

  // Freccia curva che indica la superficie di sezione Omega
  bezier((4.24, -0.45), (3.60, 0.80), (3.85, -0.10), (3.85, 0.45), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)

  // Etichette
  etichetta((5.55, 5.05), $P_0$)
  etichetta((6.15, 3.50), $arrow(F)$, col: c-forza)
  etichetta((5.30, 2.08), $arrow(n)$, col: c-norm)
  etichetta((4.45, -0.70), $Omega$)
})
