// Figura estratta da capitoli/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate.typ (riga 274) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.9cm, {
  import draw: *

  // Tratteggio blu sulla faccia obliqua
  line((0.02, 1.52), (1.15, 0.35), stroke: 0.5pt + c-aux)
  line((0.02, 1.05), (0.85, 0.20), stroke: 0.5pt + c-aux)
  line((0.02, 0.55), (0.45, 0.10), stroke: 0.5pt + c-aux)
  line((0.75, 1.25), (1.55, 0.42), stroke: 0.5pt + c-aux)
  line((1.45, 0.85), (1.95, 0.32), stroke: 0.5pt + c-aux)

  // Assi coordinati (neri)
  freccia((0.00, 0.00), (0.00, 3.25), sp: 0.9pt)
  freccia((0.00, 0.00), (4.05, 0.42), sp: 0.9pt)
  freccia((0.00, 0.00), (-2.12, -2.52), sp: 0.9pt)

  // Spigoli della faccia obliqua del tetraedro (neri)
  line((0.00, 2.00), (2.70, 0.28), (-1.62, -1.93), close: true, stroke: 1pt + c-geo)

  // Punto P_0 nell'origine e punto di applicazione sulla faccia obliqua
  circle((0.00, 0.00), radius: 0.08, fill: c-geo, stroke: none)
  circle((0.48, 0.18), radius: 0.05, fill: c-geo, stroke: none)

  // Vettori blu (tensioni e normale)
  // Versore n
  freccia((0.48, 0.18), (1.75, 0.08), col: c-norm, sp: 1.1pt)
  // Vettore T_n
  freccia((0.48, 0.18), (3.00, 0.96), col: c-forza, sp: 1.1pt)
  // Vettore T_-z
  freccia((1.10, 0.85), (1.10, 2.15), col: c-forza, sp: 1.1pt)
  line((1.10, 0.85), (1.35, 1.38), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  // Vettore T_-x
  freccia((-0.88, -0.45), (-1.98, -1.00), col: c-forza, sp: 1.1pt)
  // Vettore T_-y
  freccia((0.33, -0.80), (-0.52, -2.28), col: c-forza, sp: 1.1pt)

  // Linee di richiamo nere (curve a S)
  // Richiamo P_0
  bezier((-1.35, 1.05), (-0.08, 0.15), (-1.10, 1.45), (-0.55, 0.25), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  // Richiamo d Omega_x
  bezier((-1.40, 0.42), (-0.58, 0.00), (-1.15, 0.55), (-0.95, -0.10), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  // Richiamo d Omega_z
  bezier((2.50, 1.88), (1.62, 0.85), (2.30, 1.88), (2.15, 1.15), stroke: 0.6pt + c-aux)
  // Richiamo d Omega_y
  bezier((0.95, -0.58), (2.18, -1.25), (1.45, -0.45), (1.15, -1.55), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)

  // Etichette nere
  etichetta((0.35, 3.30), $y$)
  etichetta((-2.10, -2.80), $z$)
  etichetta((-1.50, 1.25), $P_0$)
  etichetta((-1.85, 0.50), $dif Omega_x$)
  etichetta((2.75, 2.05), $dif Omega_z$)
  etichetta((2.65, -1.25), $dif Omega_y$)

  // Etichette blu
  etichetta((1.20, -0.15), $arrow(n)$, col: c-norm)
  etichetta((3.35, 1.15), $arrow(sigma)_n$, col: c-forza)
  etichetta((1.50, 2.40), $arrow(sigma)_(-z)$, col: c-forza)
  etichetta((-2.10, -0.50), $arrow(sigma)_(-x)$, col: c-forza)
  etichetta((0.20, -2.40), $arrow(sigma)_(-y)$, col: c-forza)
})
