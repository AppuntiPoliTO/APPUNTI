// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 166) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.8cm, {
  import draw: *

  // Contorno della superficie S (volume V)
  bezier((1.92, 2.95), (1.92, 1.15), (2.38, 2.35), (2.38, 1.75), stroke: 1pt + c-geo)
  bezier((1.92, 1.15), (4.45, 1.50), (1.60, 0.45), (4.10, 0.75), stroke: 1pt + c-geo)
  bezier((4.45, 1.50), (4.35, 3.30), (4.65, 1.95), (4.55, 2.85), stroke: 1pt + c-geo)
  bezier((4.35, 3.30), (1.92, 2.95), (4.10, 4.25), (2.30, 4.10), stroke: 1pt + c-geo)

  // Linea di corrente 1 (in alto a sinistra) + frecce di direzione
  bezier((0.0, 3.38), (3.65, 4.45), (1.2, 3.80), (2.5, 4.18), stroke: 0.8pt + c-vel)
  line((0.75, 3.64), (0.90, 3.69), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((1.80, 3.96), (1.95, 4.01), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((2.98, 4.28), (3.13, 4.32), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)

  // Linea di corrente 2 (medio-alta) + frecce di direzione
  bezier((0.28, 2.32), (4.52, 3.58), (1.6, 2.82), (3.1, 3.25), stroke: 0.8pt + c-vel)
  line((1.12, 2.62), (1.27, 2.68), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((2.20, 2.98), (2.35, 3.03), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((3.45, 3.32), (3.60, 3.36), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)

  // Linea di corrente 3 (medio-bassa) + frecce di direzione
  bezier((0.68, 1.28), (6.55, 2.86), (2.5, 1.95), (4.7, 2.55), stroke: 0.8pt + c-vel)
  line((2.00, 1.74), (2.15, 1.79), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((2.98, 2.04), (3.13, 2.09), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((4.22, 2.38), (4.37, 2.42), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((5.62, 2.68), (5.77, 2.72), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)

  // Linea di corrente 4 (bassa) + frecce di direzione
  bezier((1.02, 0.35), (7.40, 1.62), (3.0, 0.82), (5.4, 1.32), stroke: 0.8pt + c-vel)
  line((1.55, 0.47), (1.70, 0.51), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((3.45, 0.89), (3.60, 0.93), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)
  line((5.55, 1.31), (5.70, 1.34), mark: (end: "stealth", fill: c-vel), stroke: 0.8pt + c-vel)

  // Indicatore ed etichetta S
  line((1.08, 2.08), (2.18, 2.40), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((0.55, 1.85), [$S$], anchor: "east")

  // Indicatore ed etichetta V (in alto)
  bezier((4.78, 4.30), (3.88, 3.02), (4.35, 4.10), (4.05, 3.55), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((4.90, 4.50), [$V$], anchor: "west")

  // Vettore normale n
  line((4.39, 3.12), (4.90, 3.35), mark: (end: "stealth", fill: c-norm), stroke: 1.1pt + c-norm)
  content((4.95, 3.52), text(c-norm)[$arrow(n)$], anchor: "west")

  // Vettore velocità locale u
  line((4.48, 1.82), (5.05, 1.94), mark: (end: "stealth", fill: c-vel), stroke: 1.1pt + c-vel)
  content((5.25, 2.05), text(c-vel)[$arrow(u)$], anchor: "west")

  // Campo di velocità u(x; t)
  content((6.60, 3.80), text(c-vel)[$arrow(u)(arrow(x) ; t)$], anchor: "west")

  // Indicatore ed etichetta "Volume V" (in basso)
  bezier((4.15, 0.12), (3.45, 0.52), (3.75, 0.15), (3.55, 0.30), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((4.65, 0.35), [Volume $V$], anchor: "west")
})
