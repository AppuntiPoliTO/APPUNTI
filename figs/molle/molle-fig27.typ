// Figura estratta da molle.typ (riga 3347) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
import draw: *

// Parete d'incastro (interrotta dietro la mensola tra y = 2.04 e y = 3.69)
line((3.00, 3.69), (3.00, 6.32), (0.00, 4.70), (0.00, 0.00), (3.00, 1.62), (3.00, 2.04), stroke: 1.1pt)

// Mensola trapezia: faccia superiore, faccia laterale anteriore, faccia terminale
line((0.60, 3.70), (2.00, 4.46), (5.30, 1.92), (4.60, 1.54), close: true, stroke: 1.1pt)
line((0.60, 3.70), (0.60, 3.34), (4.60, 1.18), (4.60, 1.54), stroke: 1.1pt)
line((4.60, 1.18), (5.30, 1.56), (5.30, 1.92), stroke: 1.1pt)

// Punto di applicazione e forza concentrata F
circle((4.95, 1.73), radius: 0.06, fill: black, stroke: none)
line((4.95, 3.25), (4.95, 1.79), mark: (end: ">"), stroke: 1.2pt)
content((4.80, 2.95), [$F$], anchor: "east")

// Quota b_0 (larghezza all'incastro)
line((0.55, 3.73), (0.15, 3.94), stroke: 0.5pt)
line((1.95, 4.49), (1.55, 4.70), stroke: 0.5pt)
line((0.24, 3.89), (1.64, 4.65), mark: (start: ">", end: ">"), stroke: 0.5pt)
content((0.88, 4.35), [$b_0$], anchor: "south")

// Quota b_0' (larghezza all'estremita libera)
line((4.65, 1.15), (5.05, 0.94), stroke: 0.5pt)
line((5.35, 1.53), (5.75, 1.32), stroke: 0.5pt)
line((4.96, 0.99), (5.66, 1.37), mark: (start: ">", end: ">"), stroke: 0.5pt)
content((5.35, 0.95), [$b_0'$], anchor: "north")

// Quota h (spessore a x = 2.15)
line((2.15, 3.45), (2.15, 2.86), mark: (end: ">"), stroke: 0.5pt)
line((2.15, 1.90), (2.15, 2.50), mark: (end: ">"), stroke: 0.5pt)
content((2.00, 2.12), [$h$], anchor: "east")

// Quota l (lunghezza della mensola)
line((0.60, 3.26), (0.60, 1.96), stroke: 0.5pt)
line((4.60, 1.10), (4.60, -0.20), stroke: 0.5pt)
line((0.60, 2.08), (4.60, -0.08), mark: (start: ">", end: ">"), stroke: 0.5pt)
content((2.55, 0.85), [$l$], anchor: "north")

// Quota x e differenziale dif x lungo la mediana
line((4.95, 1.73), (3.64, 2.58), mark: (end: ">"), stroke: 0.5pt)
line((3.64, 2.58), (3.13, 2.91), stroke: 0.5pt)
line((2.58, 3.26), (3.13, 2.91), mark: (end: ">"), stroke: 0.5pt)
line((3.51, 2.51), (3.77, 2.65), stroke: 0.5pt)
line((3.00, 2.84), (3.26, 2.98), stroke: 0.5pt)
content((4.20, 2.92), [$x$], anchor: "south")
content((2.6, 3.6), [$dif x$], anchor: "east")
})
