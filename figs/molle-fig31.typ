// Figura estratta da molle.typ (riga 3845) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.4cm, {
import draw: *

// ==========================================
// VETTORE GRAVITA' g (A SINISTRA)
// ==========================================
line((-1.40, 2.75), (-1.40, 1.35), stroke: 2.6pt)
line((-1.56, 1.42), (-1.24, 1.42), (-1.40, 1.05), close: true, fill: black, stroke: none)
content((-1.62, 2.05), [$g$], anchor: "east")

// ==========================================
// COLONNA SINISTRA (x = 0.00): MASSA IN ALTO + MOLLA SCARICA
// ==========================================

// Massa m alla quota iniziale (base in y = 3.20)
rect((-0.24, 3.20), (0.24, 3.68), fill: rgb(35, 195, 255), stroke: 0.6pt)
content((0.55, 3.40), [$m$], anchor: "west")

// Molla scarica (da y = 0.25 a y = 1.60)
line((0.00, 0.25), (-0.12, 0.38), (0.12, 0.63), (-0.12, 0.88), (0.12, 1.13), (-0.12, 1.38), (0.12, 1.50), (0.00, 1.60), stroke: 0.6pt)

// Basamento a mattoncini sinistro (da y = 0.00 a y = 0.25)
rect((-0.36, 0.00), (0.36, 0.25), stroke: 0.7pt)
line((-0.36, 0.11), (0.36, 0.11), stroke: 0.7pt)
line((-0.36, 0.21), (0.36, 0.21), stroke: 0.7pt)
// Giunti verticali fila inferiore
line((-0.22, 0.00), (-0.22, 0.11), stroke: 0.7pt)
line((0.00, 0.00), (0.00, 0.11), stroke: 0.7pt)
line((0.22, 0.00), (0.22, 0.11), stroke: 0.7pt)
// Giunti verticali fila centrale
line((-0.11, 0.11), (-0.11, 0.21), stroke: 0.7pt)
line((0.11, 0.11), (0.11, 0.21), stroke: 0.7pt)
line((0.30, 0.11), (0.30, 0.21), stroke: 0.7pt)
// Giunti verticali fila superiore
line((-0.22, 0.21), (-0.22, 0.25), stroke: 0.7pt)
line((0.00, 0.21), (0.00, 0.25), stroke: 0.7pt)
line((0.22, 0.21), (0.22, 0.25), stroke: 0.7pt)

// ==========================================
// COLONNA DESTRA (x = 1.25): MASSA ARRESTATA + MOLLA COMPRESSA
// ==========================================

// Massa nella posizione di massima compressione (base in y = 1.25)
rect((1.01, 1.25), (1.49, 1.73), fill: rgb(35, 195, 255), stroke: 0.6pt)
content((1.72, 1.25), [$(v=0)$], anchor: "west")

// Molla compressa (da y = 0.25 a y = 1.25)
line((1.25, 0.25), (1.07, 0.35), (1.43, 0.53), (1.07, 0.71), (1.43, 0.89), (1.07, 1.07), (1.43, 1.18), (1.25, 1.25), stroke: 0.6pt)

// Basamento a mattoncini destro (da y = 0.00 a y = 0.25)
rect((0.89, 0.00), (1.61, 0.25), stroke: 0.7pt)
line((0.89, 0.11), (1.61, 0.11), stroke: 0.7pt)
line((0.89, 0.21), (1.61, 0.21), stroke: 0.7pt)
// Giunti verticali fila inferiore
line((1.03, 0.00), (1.03, 0.11), stroke: 0.7pt)
line((1.25, 0.00), (1.25, 0.11), stroke: 0.7pt)
line((1.47, 0.00), (1.47, 0.11), stroke: 0.7pt)
// Giunti verticali fila centrale
line((1.14, 0.11), (1.14, 0.21), stroke: 0.7pt)
line((1.36, 0.11), (1.36, 0.21), stroke: 0.7pt)
line((1.55, 0.11), (1.55, 0.21), stroke: 0.7pt)
// Giunti verticali fila superiore
line((1.03, 0.21), (1.03, 0.25), stroke: 0.7pt)
line((1.25, 0.21), (1.25, 0.25), stroke: 0.7pt)
line((1.47, 0.21), (1.47, 0.25), stroke: 0.7pt)

// ==========================================
// QUOTE E LINEE DI RIFERIMENTO (h e f)
// ==========================================

// Linee orizzontali di riferimento
line((-0.68, 3.20), (-0.24, 3.20), stroke: 0.5pt)
line((-0.68, 1.60), (0.00, 1.60), stroke: 0.5pt)
line((-0.68, 1.25), (1.01, 1.25), stroke: 0.5pt)

// Quota h (tra y = 1.60 e y = 3.20, ascissa x = -0.45)
line((-0.45, 1.70), (-0.45, 3.10), stroke: 0.5pt)
line((-0.50, 3.06), (-0.40, 3.06), (-0.45, 3.19), close: true, fill: black, stroke: none)
line((-0.50, 1.74), (-0.40, 1.74), (-0.45, 1.61), close: true, fill: black, stroke: none)
content((-0.68, 2.38), [$h$], anchor: "east")

// Quota f (sotto y = 1.25, ascissa x = -0.45)
line((-0.45, 0.82), (-0.45, 1.15), stroke: 0.5pt)
line((-0.50, 1.11), (-0.40, 1.11), (-0.45, 1.24), close: true, fill: black, stroke: none)
content((-0.68, 1.02), [$f$], anchor: "east")
})
