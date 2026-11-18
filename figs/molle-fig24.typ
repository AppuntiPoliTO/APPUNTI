// Figura estratta da molle.typ (riga 3074) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.7cm, {
import draw: *

// 1. Facce visibili della trave (riempimento bianco)
line((0.76, 4.39), (2.535, 5.385), (7.075, 2.425), (5.30, 1.43), close: true, fill: white, stroke: none)
line((0.76, 4.39), (5.30, 1.43), (5.30, 0.98), (0.76, 3.94), close: true, fill: white, stroke: none)
line((5.30, 1.43), (7.075, 2.425), (7.075, 1.975), (5.30, 0.98), close: true, fill: white, stroke: none)

// 2. Contorno della parete verticale (parti visibili)
line((3.725, 4.609), (3.725, 7.628), (0.00, 5.54), (0.00, 0.00), (3.658, 2.050), stroke: (thickness: 1pt, paint: black))

// 3. Contorno della trave a sbalzo
line((0.76, 4.39), (2.535, 5.385), (7.075, 2.425), (5.30, 1.43), close: true, stroke: (thickness: 1pt, paint: black))
line((0.76, 4.39), (0.76, 3.94), (5.30, 0.98), (5.30, 1.43), stroke: (thickness: 1pt, paint: black))
line((5.30, 0.98), (7.075, 1.975), (7.075, 2.425), stroke: (thickness: 1pt, paint: black))

// 4. Linee di riferimento e quote
// Quota l
line((2.535, 5.54), (2.535, 6.98), stroke: (thickness: 0.6pt, paint: black))
line((7.075, 2.58), (7.075, 4.02), stroke: (thickness: 0.6pt, paint: black))
line((2.535, 6.83), (7.075, 3.87), mark: (start: ">", end: ">"), stroke: (thickness: 0.6pt, paint: black))

// Quota b_0
line((1.85, 3.68), (3.625, 4.675), mark: (start: ">", end: ">"), stroke: (thickness: 0.6pt, paint: black))

// Quota h
line((2.68, 3.85), (2.68, 3.14), mark: (end: ">"), stroke: (thickness: 0.6pt, paint: black))
line((2.68, 2.00), (2.68, 2.69), mark: (end: ">"), stroke: (thickness: 0.6pt, paint: black))

// Coordinate x e dx lungo la linea d'asse
line((6.188, 1.928), (4.554, 2.994), mark: (end: ">"), stroke: (thickness: 0.6pt, paint: black))
line((3.963, 3.378), (4.554, 2.994), mark: (start: ">", end: ">"), stroke: (thickness: 0.6pt, paint: black))
line((4.42, 2.92), (4.68, 3.07), stroke: (thickness: 0.6pt, paint: black))

// 5. Forza F e punto di applicazione
circle((6.188, 1.928), radius: 0.065, fill: black, stroke: none)
line((6.188, 3.76), (6.188, 2.26), stroke: (thickness: 1.2pt, paint: black))
line((6.06, 2.26), (6.316, 2.26), (6.188, 1.96), close: true, fill: black, stroke: none)

// 6. Etichette
content((4.95, 5.65), [$l$], anchor: "center")
content((2.45, 4.45), [$b_0$], anchor: "center")
content((2.32, 2.25), [$h$], anchor: "center")
content((4.05, 3.68), [$d x$], anchor: "center")
content((5.55, 2.70), [$x$], anchor: "center")
content((5.85, 3.6), [$F$], anchor: "center")
})
