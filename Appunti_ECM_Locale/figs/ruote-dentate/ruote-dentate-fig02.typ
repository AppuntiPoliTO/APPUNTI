// Figura estratta da ruote dentate.typ (riga 226) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// 1. RIEMPIMENTO E CONTORNO SOTTILE DEL DISCO A
circle((0, 0), radius: 2.50, fill: luma(220), stroke: 0.7pt)

// 2. SETTORE ANULARE B
line((-0.85, 2.35), (-1.44, 3.95), stroke: 0.7pt)
line((-2.21, 1.17), (-3.71, 1.97), stroke: 0.7pt)
arc((0, 0), start: 110deg, stop: 152deg, radius: 4.20, anchor: "origin", stroke: 0.7pt)

// 3. ASSI DI CENTRO CON CROCINO IN O
line((-2.85, 0), (-0.16, 0), stroke: 0.6pt)
line((-0.07, 0), (0.07, 0), stroke: 0.6pt)
line((0.16, 0), (2.85, 0), stroke: 0.6pt)

line((0, -2.85), (0, -0.16), stroke: 0.6pt)
line((0, -0.07), (0, 0.07), stroke: 0.6pt)
line((0, 0.16), (0, 2.85), stroke: 0.6pt)

// 4. CURVE IN GRASSETTO (FILO f-e-d ED EVOLVENTE a-b-c)
// Filo avvolto sul disco da f(-125deg) a e(86deg)
arc((0, 0), start: -125deg, stop: 86deg, radius: 2.50, anchor: "origin", stroke: 1.6pt)

// Filo teso rettilineo da e(0.17, 2.49) a d(-4.07, 2.79)
line((0.17, 2.49), (-4.07, 2.79), stroke: 1.6pt)

// Evolvente a - b - c
bezier((-2.02, 1.47), (-2.35, 2.67), (-2.28, 1.82), (-2.38, 2.25), stroke: 1.6pt)
bezier((-2.35, 2.67), (-2.11, 3.63), (-2.32, 3.00), (-2.22, 3.32), stroke: 1.6pt)

// 5. PUNTI NOTEVOLI (b, e, f)
circle((-2.35, 2.67), radius: 0.07, fill: black, stroke: none)
circle((0.17, 2.49), radius: 0.07, fill: black, stroke: none)
circle((-1.43, -2.05), radius: 0.07, fill: black, stroke: none)

// 6. ETICHETTE
content((0.26, 0.25), [O])
content((1.00, -1.05), [A])
content((-3.95, 1.80), [B])

content((-1.88, 1.32), [a])
content((-2.12, 2.92), [b])
content((-2.16, 3.88), [c])
content((-4.32, 2.80), [d])
content((0.20, 2.78), [e])
content((-1.55, -2.35), [f])
})
