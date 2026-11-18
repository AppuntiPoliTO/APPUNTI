// Figura estratta da ruote dentate.typ (riga 455) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// --- RIEMPIMENTI (Supporto cerniera in O) ---
rect((-0.35, -0.36), (0.35, -0.22), fill: luma(200), stroke: none)

// --- CIRCONFERENZE (BASE E PRIMITIVA) ---
// Circonferenza di base (continua, r_B = 2.90)
arc((0.00, 0.00), start: -6.9deg, stop: 186.9deg, radius: 2.90, anchor: "origin", stroke: 0.8pt + black)

// Circonferenza primitiva (tratteggiata a tratti lunghi, r = 3.20)
arc((0.00, 0.00), start: -6.3deg, stop: 186.3deg, radius: 3.20, anchor: "origin", stroke: (dash: (14pt, 4pt), thickness: 0.8pt, paint: black))

// --- ASSI DI SIMMETRIA (con tratto-punto come nell'immagine) ---
// Asse orizzontale per O
line((-3.80, 0.00), (-1.40, 0.00), stroke: 0.7pt + black)
line((-1.30, 0.00), (-1.18, 0.00), stroke: 0.7pt + black)
line((-1.08, 0.00), ( 1.25, 0.00), stroke: 0.7pt + black)
line(( 1.35, 0.00), ( 1.47, 0.00), stroke: 0.7pt + black)
line(( 1.57, 0.00), ( 3.75, 0.00), stroke: 0.7pt + black)

// Asse verticale per O e P
line((0.00, -0.62), (0.00, 1.18), stroke: 0.7pt + black)
line((0.00, 1.28), (0.00, 1.40), stroke: 0.7pt + black)
line((0.00, 1.50), (0.00, 3.88), stroke: 0.7pt + black)

// --- SUPPORTO CERNIERA IN O ---
line((-0.35, -0.22), (0.35, -0.22), stroke: 1.4pt + black)
line((-0.16, -0.22), (-0.16, 0.00), stroke: 1.2pt + black)
line(( 0.16, -0.22), ( 0.16, 0.00), stroke: 1.2pt + black)
arc((0.00, 0.00), start: 0.0deg, stop: 180.0deg, radius: 0.16, anchor: "origin", stroke: 1.2pt + black)
circle((0.00, 0.00), radius: 0.08, stroke: 1.2pt + black)

// --- TANGENTE ORIZZONTALE E LINEA DI PRESSIONE ---
// Retta orizzontale tangente in P(0, 3.20)
line((-3.45, 3.20), (3.45, 3.20), stroke: 0.8pt + black)

// Linea di pressione passante per P(0, 3.20) e tangente in T(1.23, 2.63)
line((-1.77, 4.02), (3.76, 1.45), stroke: 0.8pt + black)

// --- RAGGI r E r_B E QUOTE ANGOLARI ---
// Raggio r (con interruzione per la lettera r)
line((0.00, 0.00), (-0.98, 0.77), stroke: 0.7pt + black)
line((-1.32, 1.03), (-2.52, 1.97), mark: (end: ">"), stroke: 0.7pt + black)

// Raggio r_B (da O a T=(1.23, 2.63), perpendicolare alla linea di pressione, con interruzione per r_B)
line((0.00, 0.00), (0.64, 1.37), stroke: 0.7pt + black)
line((0.86, 1.84), (1.23, 2.63), stroke: 0.7pt + black)

// Arco angolo phi in alto a sinistra (centro P=(0, 3.20), raggio 1.75)
arc((0.00, 3.20), start: 155.0deg, stop: 180.0deg, radius: 1.75, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.7pt + black)

// Frecce di indicazione per le etichette di destra
// Freccia "Circonferenza primitiva"
line((2.65, 2.75), (2.06, 2.45), mark: (end: ">"), stroke: 0.7pt + black)
// Freccia "Linea di pressione"
line((3.35, 2.15), (2.90, 1.85), mark: (end: ">"), stroke: 0.7pt + black)
// Freccia "Circonferenza di base"
line((2.38, 0.42), (2.87, 0.42), mark: (end: ">"), stroke: 0.7pt + black)

// --- ETICHETTE ---
content((-1.95, 3.62), [$phi$])
content(( 0.14, 1.), [$phi$])
content(( 0.16, 3.42), [P])
content((-0.52, -0.25), [O])
content((-1.15, 0.90), [r])
content(( 0.76, 1.58), [r_B])

content((2.75, 2.82), [Circonferenza primitiva], anchor: "west")
content((3.45, 2.22), [Linea di pressione], anchor: "west")
content((2.30, 0.44), text(size: 9pt)[Circonferenza \ di base], anchor: "east")
})
