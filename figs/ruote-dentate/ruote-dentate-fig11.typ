// Figura estratta da ruote dentate.typ (riga 1586) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. CONTORNO DELLA FASCIA DENTATA (bordo superiore, inferiore e fratture laterali)
  // Bordo superiore e inferiore (stroke: 1.2pt)
  line((-2.95, 1.48), (2.50, 1.48), stroke: 1.2pt)
  line((-2.95, 0.00), (2.50, 0.00), stroke: 1.2pt)

  // Frattura sinistra (x ~ -2.95, da y = 0 a y = 1.48)
  bezier((-2.95, 0.00), (-2.92, 0.50), (-3.02, 0.18), (-2.88, 0.35), stroke: 1.2pt)
  bezier((-2.92, 0.50), (-3.00, 1.00), (-2.96, 0.68), (-3.05, 0.85), stroke: 1.2pt)
  bezier((-3.00, 1.00), (-2.95, 1.48), (-2.92, 1.18), (-2.98, 1.32), stroke: 1.2pt)

  // Frattura destra (x ~ 2.50, da y = 0 a y = 1.48)
  bezier((2.50, 0.00), (2.42, 0.50), (2.52, 0.18), (2.38, 0.35), stroke: 1.2pt)
  bezier((2.42, 0.50), (2.48, 1.00), (2.46, 0.68), (2.52, 0.85), stroke: 1.2pt)
  bezier((2.48, 1.00), (2.50, 1.48), (2.42, 1.18), (2.52, 1.32), stroke: 1.2pt)

  // 2. TRACCE DEI DENTI ELICOIDALI (inclinate di 30deg rispetto alla verticale: dx = -0.854 su dy = 1.48)
  // Coppia 1 (estrema sinistra, parziale)
  line((-2.22, 0.00), (-2.96, 1.28), stroke: 0.5pt)
  line((-2.12, 0.00), (-2.97, 1.48), stroke: 0.5pt)

  // Coppia 2
  line((-1.48, 0.00), (-2.33, 1.48), stroke: 0.5pt)
  line((-1.38, 0.00), (-2.23, 1.48), stroke: 0.5pt)

  // Coppia 3
  line((-0.74, 0.00), (-1.59, 1.48), stroke: 0.5pt)
  line((-0.64, 0.00), (-1.49, 1.48), stroke: 0.5pt)

  // Coppia 4 (passante per a = (0, 0))
  line((0.00, 0.00), (-0.85, 1.48), stroke: 0.5pt)
  line((0.10, 0.00), (-0.75, 1.48), stroke: 0.5pt)

  // Coppia 5 (intermedia tra a e c)
  line((0.74, 0.00), (-0.11, 1.48), stroke: 0.5pt)
  line((0.84, 0.00), (-0.01, 1.48), stroke: 0.5pt)

  // Coppia 6 (passante per c = (1.48, 0))
  line((1.48, 0.00), (0.63, 1.48), stroke: 0.5pt)
  line((1.58, 0.00), (0.73, 1.48), stroke: 0.5pt)

  // Coppia 7
  line((2.22, 0.00), (1.37, 1.48), stroke: 0.5pt)
  line((2.32, 0.00), (1.47, 1.48), stroke: 0.5pt)

  // Coppia 8 (estrema destra, parziale)
  line((2.46, 0.87), (2.11, 1.48), stroke: 0.5pt)
  line((2.47, 1.03), (2.21, 1.48), stroke: 0.5pt)

  // 3. ASSI, SEZIONI A-A E B-B, E PROLUNGAMENTI DEL TRIANGOLO DEI PASSI
  // Linea di sezione orizzontale A (tratto-punto)
  line((-3.25, 0.68), (4.10, 0.68), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.10, 0.68), (4.10, 1.15), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Linea verticale per a - d (tratto-punto nella fascia, continua fuori)
  line((0.00, -1.05), (0.00, 0.00), stroke: 0.5pt)
  line((0.00, 0.00), (0.00, 1.48), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0.00, 1.48), (0.00, 2.95), stroke: 0.5pt)

  // Linea di sezione B-B (inclinata a 30deg rispetto all'orizzontale)
  line((-2.35, -1.36), (-0.60, -0.35), stroke: 0.5pt)
  line((-0.60, -0.35), (1.85, 1.07), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((1.85, 1.07), (4.10, 2.37), stroke: 0.5pt)
  // Frecce alle estremita della sezione B-B
  line((-2.35, -1.36), (-2.12, -1.76), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((4.10, 2.37), (4.33, 1.97), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Prolungamento della traccia per "a" in alto a sinistra (per quota p_n, fino a b)
  line((-0.85, 1.48), (-1.62, 2.81), stroke: 0.5pt)

  // Prolungamento della traccia per "c" in alto a sinistra (passa per d = (0, 2.56)) e in basso a destra
  line((0.63, 1.48), (-0.52, 3.46), stroke: 0.5pt)
  line((1.48, 0.00), (1.68, -0.35), stroke: 0.5pt)

  // Segmento normale a-e (perpendicolare alle tracce dei denti, da (0,0) a (1.11, 0.64))
  line((0.00, 0.00), (1.11, 0.64), stroke: 0.5pt)

  // 4. QUOTE (p_n, p_t, p_x) E ARCHI DELL'ANGOLO D'ELICA (psi)
  // Quota p_n (in alto a sinistra, inclinata a 30deg tra le due tracce prolungate)
  line((-1.15, 2.68), (-1.53, 2.46), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((-0.78, 2.90), (-0.42, 3.10), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Quota p_t (in basso, tra x = 0 e x = 1.48)
  line((1.48, 0.25), (1.48, -1.05), stroke: 0.5pt)
  line((0.48, -0.82), (0.00, -0.82), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((1.00, -0.82), (1.48, -0.82), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Quota p_x (a destra, tra y = 0.00 e y = 2.56)
  line((-0.20, 2.56), (3.42, 2.56), stroke: 0.5pt)
  line((2.70, 0.00), (3.42, 0.00), stroke: 0.5pt)
  line((3.05, 1.55), (3.05, 2.56), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((3.05, 1.00), (3.05, 0.00), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Arco superiore per psi (centro d = (0, 2.56), R = 0.85, tra 270deg e 300deg)
  arc((0.00, 2.56), start: 248deg, stop: 270deg, radius: 0.85, anchor: "origin", mark: (end: ">", fill: black), stroke: 0.5pt)
  arc((0.00, 2.56), start: 300deg, stop: 325deg, radius: 0.85, anchor: "origin", mark: (start: ">", fill: black), stroke: 0.5pt)

  // Arco inferiore per psi (centro a = (0, 0), R = 1.00, tra 0deg e 30deg)
  arc((0.00, 0.00), start: -24deg, stop: 0deg, radius: 1.00, anchor: "origin", mark: (end: ">", fill: black), stroke: 0.5pt)
  arc((0.00, 0.00), start: 30deg, stop: 52deg, radius: 1.00, anchor: "origin", mark: (start: ">", fill: black), stroke: 0.5pt)

  // 5. ETICHETTE (tutte con text(size: 7pt))
  content((-1.68, 2.95), text(size: 7pt)[$b$], anchor: "center")
  content((-0.95, 2.80), text(size: 7pt)[$p_n$], anchor: "center")
  content((0.18, 2.90), text(size: 7pt)[$d$], anchor: "center")
  content((0.78, 2.28), text(size: 7pt)[$psi$], anchor: "center")

  content((-0.20, -0.18), text(size: 7pt)[$a$], anchor: "center")
  content((1.75, -0.18), text(size: 7pt)[$c$], anchor: "center")
  content((1.78, 0.72), text(size: 7pt)[$e$], anchor: "center")

  content((0.82, -0.45), text(size: 7pt)[$psi$], anchor: "center")
  content((0.74, -0.82), text(size: 7pt)[$p_t$], anchor: "center")

  content((3.08, 1.28), text(size: 7pt)[$p_x$], anchor: "center")
  content((4.10, 1.38), text(size: 7pt)[$A$], anchor: "center")
  content((4.48, 1.85), text(size: 7pt)[$B$], anchor: "center")
  content((-1.98, -1.85), text(size: 7pt)[$B$], anchor: "center")
})
