// Figura estratta da ruote dentate.typ (riga 556) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // --- 1. DENTI DEL PIGNONE (GRIGIO CHIARO) ---
  // Dente 1: Pignone in alto a sinistra (isolato)
  line(
    (-1.69, 1.44), (-1.95, 1.38), (-2.25, 1.38), (-2.55, 1.48), (-2.77, 1.62),
    (-2.65, 1.95), (-2.38, 2.06), (-2.10, 2.18), (-1.92, 2.34),
    (-1.65, 2.00), (-1.58, 1.72),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((-1.69, 1.44), (-1.95, 1.38), (-1.80, 1.36), (-1.88, 1.36), stroke: 0.8pt)
  bezier((-1.95, 1.38), (-2.77, 1.62), (-2.30, 1.38), (-2.58, 1.48), stroke: 0.8pt)
  bezier((-2.77, 1.62), (-2.65, 1.95), (-2.74, 1.75), (-2.70, 1.85), stroke: 0.8pt)
  bezier((-2.65, 1.95), (-1.98, 2.25), (-2.42, 2.05), (-2.15, 2.15), stroke: 0.8pt)
  bezier((-1.98, 2.25), (-1.92, 2.34), (-1.92, 2.28), (-1.90, 2.31), stroke: 0.8pt)

  // Dente 2: Pignone in contatto in 'a' (-0.98, 0.36)
  line(
    (-0.56, 0.58), (-0.75, 0.48), (-0.98, 0.36), (-1.27, 0.14),
    (-1.58, 0.29), (-1.45, 0.56), (-1.28, 0.78), (-1.19, 0.90),
    (-0.85, 0.95), (-0.65, 0.78),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((-0.56, 0.58), (-1.27, 0.14), (-0.75, 0.50), (-1.05, 0.32), stroke: 0.8pt)
  bezier((-1.27, 0.14), (-1.58, 0.29), (-1.38, 0.19), (-1.48, 0.24), stroke: 0.8pt)
  bezier((-1.58, 0.29), (-1.19, 0.90), (-1.45, 0.55), (-1.30, 0.78), stroke: 0.8pt)

  // Dente 3: Pignone in contatto in 'b' (0.82, -0.30)
  line(
    (0.38, 0.54), (0.48, 0.25), (0.65, -0.05), (0.82, -0.30),
    (1.13, -0.19), (1.08, 0.15), (0.98, 0.45), (0.91, 0.72),
    (0.65, 0.78), (0.45, 0.68),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((0.38, 0.54), (0.82, -0.30), (0.48, 0.25), (0.65, -0.05), stroke: 0.8pt)
  bezier((0.82, -0.30), (1.13, -0.19), (0.92, -0.27), (1.03, -0.23), stroke: 0.8pt)
  bezier((1.13, -0.19), (0.91, 0.72), (1.08, 0.15), (0.98, 0.48), stroke: 0.8pt)

  // --- 2. CIRCONFERENZE DEL PIGNONE (centro O1 = (0, 2.5)) ---
  arc((0, 2.5), start: 148deg, stop: 392deg, radius: 2.00, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((0, 2.5), start: 152deg, stop: 388deg, radius: 2.35, anchor: "origin", stroke: 0.7pt)
  arc((0, 2.5), start: 155deg, stop: 385deg, radius: 2.50, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))
  arc((0, 2.5), start: 158deg, stop: 382deg, radius: 2.92, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // --- 3. ASSI, LINEE E RAGGI ---
  // Asse verticale per O1 e P
  line((0, 3.3), (0, -1.0), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  // Retta orizzontale per O1
  line((-3.2, 2.5), (3.2, 2.5), stroke: 0.6pt)
  // Retta orizzontale tangente in P
  line((-3.8, 0), (3.8, 0), stroke: 0.6pt)
  // Linea di pressione passante per a, P, b
  line((-4.5, 1.64), (4.5, -1.64), stroke: 0.8pt)
  // Raggi da O1 per gli estremi di contatto a e b
  line((0, 2.5), (-1.18, -0.09), stroke: 0.6pt)
  line((0, 2.5), (0.82, -0.30), stroke: 0.6pt)

  // --- 4. ARCHI DI QUOTA E FRECCE ---
  arc((0, 2.5), start: 245.5deg, stop: 270deg, radius: 1.40, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.6pt)
  arc((0, 2.5), start: 270deg, stop: 286.3deg, radius: 1.40, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-0.25, 1.35), (-0.50, 1.80), stroke: 0.5pt)
  line((0.20, 1.35), (0.45, 1.80), stroke: 0.5pt)
  // Freccia di rotazione del Pignone
  arc((0, 2.5), start: 102deg, stop: 142deg, radius: 1.65, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)

  // Richiami circonferenze Pignone
  line((3.15, 4.25), (1.68, 3.59), mark: (end: ">"), stroke: 0.6pt)
  line((3.15, 3.85), (2.13, 3.49), mark: (end: ">"), stroke: 0.6pt)
  line((3.15, 3.45), (2.40, 3.19), mark: (end: ">"), stroke: 0.6pt)
  line((3.15, 3.05), (2.89, 2.91), mark: (end: ">"), stroke: 0.6pt)
  // Richiamo Linea di pressione
  line((-3.95, 0.90), (-3.68, 1.34), mark: (end: ">"), stroke: 0.6pt)

  // --- 5. PUNTI NOTEVOLI ED ETICHETTE ---
  circle((0, 2.5), radius: 0.05, fill: black, stroke: none)
  circle((0, 0), radius: 0.07, fill: black, stroke: none)
  circle((-0.98, 0.36), radius: 0.07, fill: black, stroke: none)
  circle((0.82, -0.30), radius: 0.07, fill: black, stroke: none)

  content((-0.30, 4.15), text(size: 7pt)[*Pignone*], anchor: "west")
  content((-0.30, 3.80), text(size: 7pt)[(conduttore)], anchor: "west")
  content((3.25, 4.25), text(size: 7pt)[Circonferenza di piede], anchor: "west")
  content((3.25, 3.85), text(size: 7pt)[Circonferenza di base], anchor: "west")
  content((3.25, 3.45), text(size: 7pt)[Circonferenza primitiva], anchor: "west")
  content((3.25, 3.05), text(size: 7pt)[Circonferenza di testa], anchor: "west")
  content((0.10, 2.80), [$O_1$], anchor: "west")
  content((-0.85, 2.28), text(size: 7pt)[Angolo di], anchor: "center")
  content((-0.90, 1.95), text(size: 7pt)[accesso], anchor: "center")
  content((0.95, 2.22), text(size: 7pt)[Angolo], anchor: "center")
  content((1.05, 1.90), text(size: 7pt)[di recesso], anchor: "center")
  content((-4.35, 0.72), text(size: 7pt)[Linea di pressione], anchor: "center")
  content((-0.8, 0.22), [$a$], anchor: "east")
  content((-0.08, -0.25), [$P$], anchor: "east")
  content((0.95, -0.55), [$b$], anchor: "west")
})
