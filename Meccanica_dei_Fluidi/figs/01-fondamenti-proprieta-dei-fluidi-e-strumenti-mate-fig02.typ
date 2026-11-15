// Figura estratta da capitoli/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate.typ (riga 192) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.55cm, {
import draw: *

// Contorno chiuso del volume V
bezier((2.00, 4.35), (7.68, 2.78), (3.40, 5.00), (7.68, 3.80), stroke: 1pt + c-geo)
bezier((7.68, 2.78), (6.72, 0.72), (7.68, 2.00), (7.04, 1.12), stroke: 1pt + c-geo)
bezier((6.72, 0.72), (3.54, 0.00), (6.40, 0.32), (4.50, 0.00), stroke: 1pt + c-geo)
bezier((3.54, 0.00), (2.78, 0.90), (2.95, 0.00), (3.00, 0.50), stroke: 1pt + c-geo)
bezier((2.78, 0.90), (0.00, 2.38), (2.45, 1.50), (0.08, 1.50), stroke: 1pt + c-geo)
bezier((0.00, 2.38), (2.00, 4.35), (-0.12, 3.70), (1.00, 3.885), stroke: 1pt + c-geo)

// Etichetta del volume
etichetta((4.76, 3.55), $V$)
})
