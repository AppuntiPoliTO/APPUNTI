// Figura estratta da ruote dentate.typ (riga 313) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// --- ASSI E LINEE DI CENTRO ---
// Asse verticale passante per O1, P, O2 (con piccoli spazi attorno alle croci dei centri)
line((0.00, 3.85), (0.00, 1.92), stroke: 0.7pt + black)
line((0.00, 1.68), (0.00, -3.18), stroke: 0.7pt + black)
line((0.00, -3.42), (0.00, -4.15), stroke: 0.7pt + black)

// Crocetta centro O1 (0, 1.80) e linea orizzontale
line((-0.07, 1.80), (0.07, 1.80), stroke: 0.7pt + black)
line((0.00, 1.73), (0.00, 1.87), stroke: 0.7pt + black)
line((-2.10, 1.80), (-0.15, 1.80), stroke: 0.7pt + black)
line((0.15, 1.80), (2.10, 1.80), stroke: 0.7pt + black)

// Crocetta centro O2 (0, -3.30) e linea orizzontale
line((-0.07, -3.30), (0.07, -3.30), stroke: 0.7pt + black)
line((0.00, -3.37), (0.00, -3.23), stroke: 0.7pt + black)
line((-3.50, -3.30), (-0.15, -3.30), stroke: 0.7pt + black)
line((0.15, -3.30), (3.55, -3.30), stroke: 0.7pt + black)

// Piccola tacca di riferimento sul margine sinistro presente nell'immagine
line((-4.95, -1.55), (-4.68, -1.55), stroke: 0.7pt + black)

// --- RUOTA 1 (SUPERIORE) ---
// Circonferenza di base 1 (continua, r = 1.56)
circle((0.00, 1.80), radius: 1.56, stroke: 0.8pt + black)

// Circonferenza primitiva 1 (tratteggiata a tratti lunghi, r = 1.80)
circle((0.00, 1.80), radius: 1.80, stroke: (dash: (12pt, 4pt), thickness: 0.8pt, paint: black))

// --- RUOTA 2 (INFERIORE) ---
// Circonferenza di base 2 (arco continuo, r = 2.86, tagliato in basso come nell'immagine)
arc((0.00, -3.30), start: -7.6deg, stop: 187.6deg, radius: 2.86, anchor: "origin", stroke: 0.8pt + black)

// Circonferenza primitiva 2 (arco tratteggiato a tratti lunghi, r = 3.30)
arc((0.00, -3.30), start: -6.6deg, stop: 186.6deg, radius: 3.30, anchor: "origin", stroke: (dash: (12pt, 4pt), thickness: 0.8pt, paint: black))

// --- RETTA D'AZIONE E RAGGI AI PUNTI DI TANGENZA ---
// Raggio O1 -> a
line((0.04, 1.73), (0.78, 0.45), stroke: 0.7pt + black)
// Raggio O2 -> b
line((-0.04, -3.23), (-1.43, -0.82), stroke: 0.7pt + black)
// Segmento retta d'azione a -> b passante per P(0,0) e g(-0.66, -0.38)
line((0.78, 0.45), (-1.43, -0.82), stroke: 0.7pt + black)

// Pallini neri nei punti di tangenza a e b
circle((0.78, 0.45), radius: 0.06, fill: black, stroke: none)
circle((-1.43, -0.82), radius: 0.06, fill: black, stroke: none)

// --- PROFILI CONIUGATI DEI DENTI (c-d ed e-f, tratto spesso) ---
// Curva c-d (passante per g)
arc((0.28, -0.04), start: 156.6deg, stop: 226.4deg, radius: 0.98, anchor: "origin", stroke: 1.6pt + black)
// Curva e-f (tangente a c-d in g)
arc((-1.96, -1.13), start: 22.0deg, stop: 82.0deg, radius: 1.50, anchor: "origin", stroke: 1.6pt + black)

// --- FRECCE DI ROTAZIONE E DI INDICAZIONE ---
// Freccia di rotazione Ruota 1 (oraria)
arc((0.00, 1.80), start: 8.0deg, stop: 48.0deg, radius: 2.35, anchor: "origin", mark: (start: ">"), stroke: 0.7pt + black)
// Freccia di rotazione Ruota 2 (antioraria)
arc((0.00, -3.30), start: 28.0deg, stop: 52.0deg, radius: 3.90, anchor: "origin", mark: (end: ">"), stroke: 0.7pt + black)

// Frecce etichette Ruota 1
line((-1.55, 3.65), (-0.88, 3.12), mark: (end: ">"), stroke: 0.7pt + black)
line((-1.78, 3.10), (-1.44, 2.86), mark: (end: ">"), stroke: 0.7pt + black)

// Frecce etichette Ruota 2
line((-3.02, -0.62), (-2.64, -1.24), mark: (end: ">"), stroke: 0.7pt + black)
line((-1.80, -2.02), (-2.26, -1.62), mark: (end: ">"), stroke: 0.7pt + black)

// --- ETICHETTE ---
// Etichette Ruota 1
content((-1.65, 3.70), [Circonferenza di base], anchor: "east")
content((-1.90, 3.18), [Circonferenza], anchor: "east")
content((-1.80, 2.82), [primitiva], anchor: "east")
content((-0.65, 2.45), [Ruota 1])
content((0.30, 2.08), [O_1])

// Etichette Ruota 2
content((-3.10, -0.15), [Circonferenza], anchor: "east")
content((-3.00, -0.52), [primitiva], anchor: "east")
content((-0.95, -2.22), [Circonferenza], anchor: "east")
content((-0.65, -2.58), [di base], anchor: "east")
content((1.18, -2.62), [Ruota 2])
content((0.32, -3.58), [O_2])

// Etichette punti a, b, c, d, e, f, g, P
content((0.84, 0.70), [a])
content((-1.48, -1.12), [b])
content((-0.56, 0.52), [c])
content((-0.18, -0.76), [d])
content((-0.65, -0.70), [e])
content((-1.92, 0.32), [f])
content((-0.88, -0.35), [g])
content((0.20, -0.22), [P])

// Didascalia in basso a sinistra

})
