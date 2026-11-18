// Figura estratta da ruote dentate.typ (riga 81) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.25cm, {

import draw: *

// 1. RIEMPIMENTI GRIGI DEI CORPI A e B (stroke: none, i contorni esatti sono disegnati al passo 2)
// Riempimento corpo B
line(
  (0.67, 0.09), (-0.01, 5.24), (-0.08, 5.48), (-0.24, 5.66), (-0.46, 5.76),
  (-0.70, 5.76), (-0.94, 5.65), (-1.12, 5.45), (-1.21, 5.22), (-1.23, 5.06),
  (-0.67, -0.09), (-0.60, -0.35), (-0.42, -0.55), (-0.18, -0.66), (0.08, -0.67),
  (0.34, -0.58), (0.54, -0.39), (0.65, -0.15),
  close: true, fill: luma(220), stroke: none
)

// Riempimento corpo A
line(
  (-0.07, 7.35), (0.28, 7.30), (0.58, 7.12), (0.78, 6.84), (0.85, 6.50),
  (0.78, 6.16), (0.58, 5.88), (0.28, 5.70), (0.00, 5.65), (-0.30, 5.70),
  (-0.48, 5.82), (-0.65, 6.02), (-0.78, 6.15), (-0.92, 6.18), (-1.06, 6.12),
  (-1.16, 5.95), (-1.21, 5.65), (-1.22, 5.05), (-1.30, 4.72), (-1.45, 4.44),
  (-1.68, 4.25), (-1.95, 4.17), (-2.22, 4.20), (-2.48, 4.36), (-2.68, 4.62),
  (-2.81, 4.98), (-2.86, 5.40), (-2.82, 5.82), (-2.66, 6.25), (-2.38, 6.62),
  (-1.96, 6.94), (-1.42, 7.17), (-0.78, 7.31),
  close: true, fill: luma(220), stroke: none
)

// 2. CONTORNI DEI CORPI E FORI DEI PERNI
// Contorno Corpo B
arc((0, 0), start: 188deg, stop: 368deg, radius: 0.68, anchor: "origin", stroke: 0.8pt)
line((0.67, 0.09), (-0.01, 5.24), stroke: 0.8pt)
arc((-0.62, 5.15), start: 8deg, stop: 188deg, radius: 0.62, anchor: "origin", stroke: 0.8pt)
line((-1.23, 5.06), (-0.67, -0.09), stroke: 0.8pt)
circle((0, 0), radius: 0.32, stroke: 0.8pt)

// Contorno Corpo A
// Testa circolare attorno a O_A
arc((0, 6.50), start: 235deg, stop: 455deg, radius: 0.85, anchor: "origin", stroke: 0.8pt)
// Gola interna (da sotto O_A fino alla sommità della gola)
bezier((-0.49, 5.80), (-0.92, 6.18), (-0.65, 5.95), (-0.78, 6.18), stroke: 0.8pt)
// Parete interna della gola fino al punto di contatto C(-1.22, 5.05)
bezier((-0.92, 6.18), (-1.22, 5.05), (-1.18, 6.18), (-1.22, 5.65), stroke: 0.8pt)
// Dal punto C(-1.22, 5.05) al fondo del lobo inferiore (-2.05, 4.18)
bezier((-1.22, 5.05), (-2.05, 4.18), (-1.26, 4.60), (-1.62, 4.18), stroke: 0.8pt)
// Dal fondo del lobo (-2.05, 4.18) al fianco estremo sinistro (-2.86, 5.40)
bezier((-2.05, 4.18), (-2.86, 5.40), (-2.52, 4.18), (-2.86, 4.75), stroke: 0.8pt)
// Dal fianco sinistro (-2.86, 5.40) alla sommità della testa (-0.07, 7.35)
bezier((-2.86, 5.40), (-0.07, 7.35), (-2.86, 6.65), (-1.45, 7.35), stroke: 0.8pt)
// Foro del perno O_A
circle((0, 6.50), radius: 0.32, stroke: 0.8pt)

// 3. ASSI, CIRCONFERENZE PRIMITIVE E RETTA D'AZIONE
// Asse verticale dei centri O_A - O_B
line((0, -0.95), (0, 7.60), stroke: 0.6pt)

// Crocini orizzontali sui perni O_A e O_B (tratteggiati lunghi)
line((-0.80, 6.50), (-0.18, 6.50), stroke: 0.6pt)
line((-0.10, 6.50), (0.10, 6.50), stroke: 0.6pt)
line((0.18, 6.50), (0.80, 6.50), stroke: 0.6pt)

line((-0.80, 0), (-0.18, 0), stroke: 0.6pt)
line((-0.10, 0), (0.10, 0), stroke: 0.6pt)
line((0.18, 0), (0.80, 0), stroke: 0.6pt)

// Circonferenza primitiva A (centro (0, 6.50), raggio 1.80, punto-tratto)
arc((0, 6.50), start: 184deg, stop: 326deg, radius: 1.80, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))

// Circonferenza primitiva B (centro (0, 0), raggio 4.70, punto-tratto)
arc((0, 0), start: 46deg, stop: 122deg, radius: 4.70, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))

// Retta d'azione a - b (passante per C(-1.22, 5.05) e P(0, 4.70), punto-tratto)
line((-3.30, 5.65), (1.12, 4.38), stroke: (dash: "dash-dotted", thickness: 0.7pt))
line((1.42, 4.29), (2.75, 3.91), stroke: (dash: "dash-dotted", thickness: 0.7pt))

// 4. VETTORI RAGGIO, FRECCE DI ROTAZIONE E PUNTI C, P
// Raggio r_A da (0, 6.50) a (1.42, 5.39)
line((0, 6.50), (0.68, 5.97), stroke: 0.7pt)
line((1.02, 5.70), (1.42, 5.39), mark: (end: "stealth", fill: black, scale: 0.8), stroke: 0.7pt)

// Raggio r_B da (0, 0) a (3.02, 3.60)
line((0, 0), (1.28, 1.53), stroke: 0.7pt)
line((1.62, 1.93), (3.02, 3.60), mark: (end: "stealth", fill: black, scale: 0.8), stroke: 0.7pt)

// Freccia di rotazione superiore (antioraria)
arc((0, 6.50), start: 22deg, stop: 68deg, radius: 1.12, anchor: "origin", mark: (end: "stealth", fill: black, scale: 0.9), stroke: 0.7pt)

// Freccia di rotazione inferiore (oraria)
arc((0, 0), start: 210deg, stop: 252deg, radius: 0.98, anchor: "origin", mark: (start: "stealth", fill: black, scale: 0.9), stroke: 0.7pt)

// Punti C e P
circle((-1.22, 5.05), radius: 0.07, fill: black, stroke: none)
circle((0, 4.70), radius: 0.07, fill: black, stroke: none)

// 5. ETICHETTE
content((-0.60, 6.92), [A])
content((0.35, 6.92), [O])
content((0.86, 5.86), [r_A])

content((-3.28, 6), [a])
content((-1.42, 4.88), [C])
content((-0.20, 4.46), [P])
content((1.27, 4.35), [b])

content((1.45, 1.72), [r_B])
content((-0.42, 0.48), [B])
content((0.40, -0.35), [O])
})
