// Figura estratta da fatica.typ (riga 2143) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.7cm, {
import draw: *

// Riempimenti base dei componenti (grigio chiaro)
circle((0, 6), radius: 1.2, fill: rgb("c0c0c0"), stroke: none)
circle((0, 0), radius: 3.6, fill: rgb("c0c0c0"), stroke: none)

// Aree di materiale ad alta tensione (> 80% sigma_a) in rosso trasparente
// Poligono superiore (R = 1.2, y_base = 6.96)
line((-0.72, 6.96), (0.72, 6.96), (0.41, 7.127), (0, 7.2), (-0.41, 7.127), close: true, fill: red.transparentize(50%), stroke: none)

// Poligono inferiore (R = 3.6, y_base = 2.88)
line((-2.16, 2.88), (2.16, 2.88), (1.52, 3.26), (0.93, 3.47), (0, 3.6), (-0.93, 3.47), (-1.52, 3.26), close: true, fill: red.transparentize(50%), stroke: none)

// Contorni netti dei componenti (disegnati sopra i riempimenti)
circle((0, 6), radius: 1.2, stroke: 1.2pt)
circle((0, 0), radius: 3.6, stroke: 1.2pt)

// Linea di proiezione verticale (allinea le intersezioni dell'80% di tensione, x = 2.8)
line((2.8, 6.96), (2.8, 2.9), stroke: (paint: gray, thickness: 0.6pt))

// --- DIAGRAMMA SUPERIORE ---
// Assi e linee di tensione massima
line((0, 4.8), (0, 7.2), stroke: (paint: red, thickness: 1.2pt))
line((0, 7.2), (3.5, 7.2), stroke: (paint: red, thickness: 1pt))
line((0, 4.8), (-3.5, 4.8), stroke: (paint: red, thickness: 1pt))

// Gradiente di tensione
line((-3.5, 4.8), (3.5, 7.2), stroke: (paint: green.darken(20%), thickness: 1pt))

// Linea 80% tensione
line((-0.71, 6.96), (2.81, 6.96), stroke: (paint: blue, thickness: 1.2pt))

// Etichette superiore
content((3.6, 7.2), [$sigma_a$], anchor: "south-west")
content((3.1, 6.96), [$80% sigma_a$], anchor: "north-west")


// --- DIAGRAMMA INFERIORE ---
// Assi e linee di tensione massima
line((0, -3.6), (0, 3.6), stroke: (paint: red, thickness: 1.2pt))
line((0, 3.6), (3.5, 3.6), stroke: (paint: red, thickness: 1pt))
line((0, -3.6), (-3.5, -3.6), stroke: (paint: red, thickness: 1pt))

// Gradiente di tensione
line((-3.5, -3.6), (3.5, 3.6), stroke: (paint: purple, thickness: 1pt))

// Linea 80% tensione
line((-2.15, 2.88), (2.81, 2.88), stroke: (paint: blue, thickness: 1.2pt))

// Etichette inferiore
content((3.6, 3.6), [$sigma_a$], anchor: "south-west")
content((3.1, 2.88), [$80% sigma_a$], anchor: "north-west")
})
