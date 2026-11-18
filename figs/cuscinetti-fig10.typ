// Figura estratta da cuscinetti.typ (riga 970) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

let blue = rgb("#0b71be")
let lbl(body, fill: black) = box(fill: white, inset: (x: 1.5pt, y: 1pt), text(size: 8pt, fill: fill, body))
let axis-lbl(body, fill: black) = text(size: 8pt, fill: fill, body)

// Griglia orizzontale
line((0.00, 0.85), (5.21, 0.85), stroke: 1.4pt)
line((0.00, 1.63), (5.21, 1.63), stroke: 0.6pt)
line((0.00, 2.66), (5.21, 2.66), stroke: 0.6pt)
line((0.00, 3.45), (5.21, 3.45), stroke: 0.6pt)
line((0.00, 4.24), (5.21, 4.24), stroke: 0.6pt)
line((0.00, 5.25), (5.21, 5.25), stroke: 0.6pt)
line((0.00, 6.05), (5.21, 6.05), stroke: 0.6pt)
line((0.00, 6.84), (5.21, 6.84), stroke: 0.6pt)
line((0.00, 7.85), (5.21, 7.85), stroke: 0.8pt)

// Tacche asse Y
line((-0.08, 0.85), (0.00, 0.85), stroke: 0.8pt)
line((-0.08, 1.63), (0.00, 1.63), stroke: 0.8pt)
line((-0.08, 2.66), (0.00, 2.66), stroke: 0.8pt)
line((-0.08, 3.45), (0.00, 3.45), stroke: 0.8pt)
line((-0.08, 4.24), (0.00, 4.24), stroke: 0.8pt)
line((-0.08, 5.25), (0.00, 5.25), stroke: 0.8pt)
line((-0.08, 6.05), (0.00, 6.05), stroke: 0.8pt)
line((-0.08, 6.84), (0.00, 6.84), stroke: 0.8pt)
line((-0.08, 7.85), (0.00, 7.85), stroke: 0.8pt)

// Griglia verticale nera
line((0.52, -0.08), (0.52, 7.85), stroke: 0.6pt)
line((1.03, -0.08), (1.03, 7.85), stroke: 0.6pt)
line((1.73, -0.08), (1.73, 7.85), stroke: 0.6pt)
line((2.24, -0.08), (2.24, 7.85), stroke: 0.6pt)
line((2.77, -0.08), (2.77, 7.85), stroke: 0.6pt)
line((3.47, -0.08), (3.47, 7.85), stroke: 0.6pt)
line((3.99, -0.08), (3.99, 7.85), stroke: 0.6pt)
line((4.51, -0.08), (4.51, 7.85), stroke: 0.6pt)
line((5.21, -0.08), (5.21, 7.85), stroke: 0.8pt)

// Griglia verticale blu
line((0.14, -1.23), (0.14, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((0.61, -1.23), (0.61, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((1.18, -1.23), (1.18, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((1.86, -1.23), (1.86, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((2.38, -1.23), (2.38, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((2.92, -1.23), (2.92, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((3.60, -1.23), (3.60, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((4.12, -1.23), (4.12, 7.85), stroke: (paint: blue, thickness: 0.6pt))
line((4.64, -1.23), (4.64, 7.85), stroke: (paint: blue, thickness: 0.6pt))

// Assi principali
line((0.00, 7.85), (0.00, -0.08), stroke: 1.6pt)
line((0.00, 0.00), (5.21, 0.00), stroke: 1.6pt)
line((0.00, -0.60), (0.00, -1.15), (5.21, -1.15), stroke: (paint: blue, thickness: 1.6pt))

// Curve
arc((-5.64, 8.90), start: -48.8deg, stop: -7.0deg, radius: 8.57, anchor: "origin", stroke: 1pt)
arc((-7.16, 9.64), start: -45.8deg, stop: -10.0deg, radius: 10.27, anchor: "origin", stroke: 1pt)
arc((-4.51, 8.25), start: -53.7deg, stop: -3.0deg, radius: 7.62, anchor: "origin", stroke: 1pt)
arc((-3.50, 7.71), start: -58.8deg, stop: 1.2deg, radius: 6.75, anchor: "origin", stroke: 1pt)
arc((-3.43, 7.88), start: -60.6deg, stop: -0.2deg, radius: 6.98, anchor: "origin", stroke: 1pt)
arc((-2.49, 7.47), start: -66.7deg, stop: 3.5deg, radius: 6.30, anchor: "origin", stroke: 1pt)
arc((-2.33, 7.62), start: -69.1deg, stop: 2.0deg, radius: 6.52, anchor: "origin", stroke: 1pt)
arc((-2.25, 8.26), start: -71.9deg, stop: -3.2deg, radius: 7.24, anchor: "origin", stroke: 1pt)
arc((-0.64, 7.22), start: -83.9deg, stop: -13.6deg, radius: 6.02, anchor: "origin", stroke: 1pt)
arc((0.30, 8.52), start: -92.3deg, stop: -48.8deg, radius: 7.45, anchor: "origin", stroke: 1pt)
arc((0.42, 15.27), start: -91.7deg, stop: -70.5deg, radius: 14.36, anchor: "origin", stroke: 1pt)

// Etichette asse Y
content((0.00, 8.05), text(size: 9pt)[$a_("SKF")$], anchor: "south")
content((-0.12, 7.85), axis-lbl[50,0], anchor: "east")
content((-0.12, 6.84), axis-lbl[20,0], anchor: "east")
content((-0.12, 6.05), axis-lbl[10,0], anchor: "east")
content((-0.12, 5.25), axis-lbl[5,0], anchor: "east")
content((-0.12, 4.24), axis-lbl[2,0], anchor: "east")
content((-0.12, 3.45), axis-lbl[1,0], anchor: "east")
content((-0.12, 2.66), axis-lbl[0,5], anchor: "east")
content((-0.12, 1.63), axis-lbl[0,2], anchor: "east")
content((-0.12, 0.85), axis-lbl[0,1], anchor: "east")

// Etichette asse X nero
content((0.00, -0.12), lbl[0,005], anchor: "north")
content((0.52, -0.12), lbl[0,01], anchor: "north")
content((1.03, -0.12), lbl[0,02], anchor: "north")
content((1.73, -0.12), lbl[0,05], anchor: "north")
content((2.24, -0.12), lbl[0,1], anchor: "north")
content((2.77, -0.12), lbl[0,2], anchor: "north")
content((3.47, -0.12), lbl[0,5], anchor: "north")
content((3.99, -0.12), lbl[1,0], anchor: "north")
content((4.51, -0.12), lbl[2,0], anchor: "north")
content((5.21, -0.12), lbl[5,0], anchor: "north")

content((5.38, 0.00), axis-lbl[Altri cuscinetti \ standard SKF], anchor: "west")
content((5.21, -0.52), axis-lbl[$eta_c P_u \/ P$], anchor: "north-east")

// Etichette asse X blu
content((0.14, -1.27), axis-lbl(fill: blue)[0,005], anchor: "north")
content((0.61, -1.27), axis-lbl(fill: blue)[0,01], anchor: "north")
content((1.18, -1.27), axis-lbl(fill: blue)[0,02], anchor: "north")
content((1.86, -1.27), axis-lbl(fill: blue)[0,05], anchor: "north")
content((2.38, -1.27), axis-lbl(fill: blue)[0,1], anchor: "north")
content((2.92, -1.27), axis-lbl(fill: blue)[0,2], anchor: "north")
content((3.60, -1.27), axis-lbl(fill: blue)[0,5], anchor: "north")
content((4.12, -1.27), axis-lbl(fill: blue)[1,0], anchor: "north")
content((4.64, -1.27), axis-lbl(fill: blue)[2,0], anchor: "north")

content((5.38, -1.15), axis-lbl[Cuscinetti della classe \ SKF Explorer], anchor: "west")
content((5.21, -1.65), axis-lbl(fill: blue)[$eta_c P_u \/ P$], anchor: "north-east")

// Etichette curve kappa
content((1.98, 5.48), lbl[$kappa = 4$], anchor: "east")
content((2.24, 5.20), lbl[2], anchor: "east")
content((2.53, 4.95), lbl[1], anchor: "east")
content((2.76, 4.70), lbl[0,8], anchor: "east")
content((3.02, 4.45), lbl[0,6], anchor: "east")
content((3.24, 4.18), lbl[0,5], anchor: "east")
content((3.54, 3.82), lbl[0,4], anchor: "east")
content((3.84, 3.20), lbl[0,3], anchor: "east")
content((4.22, 2.08), lbl[0,2], anchor: "east")
content((4.30, 1.38), lbl[0,15], anchor: "south")
content((4.30, 0.90), lbl[0,1], anchor: "south")
})
