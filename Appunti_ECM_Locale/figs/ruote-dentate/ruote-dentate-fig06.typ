// Figura estratta da ruote dentate.typ (riga 656) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- 1. DENTI DELLA RUOTA (GRIGIO CHIARO) ---
  // Dente 4: Ruota in basso a sinistra (isolato)
  line(
    (-3.26, -1.90), (-3.45, -1.78), (-3.68, -1.55), (-3.85, -1.32),
    (-3.63, -1.10), (-3.32, -1.30), (-3.05, -1.48), (-2.84, -1.47),
    (-2.72, -1.75), (-2.95, -2.02),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((-3.26, -1.90), (-3.42, -1.78), (-3.35, -1.86), (-3.38, -1.82), stroke: 0.8pt)
  bezier((-3.42, -1.78), (-3.85, -1.32), (-3.62, -1.62), (-3.75, -1.46), stroke: 0.8pt)
  bezier((-3.85, -1.32), (-3.63, -1.10), (-3.78, -1.24), (-3.70, -1.17), stroke: 0.8pt)
  bezier((-3.63, -1.10), (-2.98, -1.48), (-3.42, -1.26), (-3.18, -1.40), stroke: 0.8pt)
  bezier((-2.98, -1.48), (-2.84, -1.47), (-2.92, -1.50), (-2.88, -1.49), stroke: 0.8pt)

  // Dente 5: Ruota in contatto in 'a' (-0.98, 0.36)
  line(
    (-1.31, -0.70), (-1.22, -0.35), (-1.12, 0.02), (-0.98, 0.36),
    (-0.74, 0.40), (-0.68, 0.05), (-0.68, -0.30), (-0.72, -0.55),
    (-0.95, -0.78), (-1.18, -0.82),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((-1.31, -0.70), (-0.98, 0.36), (-1.22, -0.35), (-1.12, 0.02), stroke: 0.8pt)
  bezier((-0.98, 0.36), (-0.74, 0.40), (-0.90, 0.38), (-0.82, 0.39), stroke: 0.8pt)
  bezier((-0.74, 0.40), (-0.72, -0.55), (-0.68, 0.05), (-0.68, -0.28), stroke: 0.8pt)

  // Dente 6: Ruota in contatto in 'b' (0.82, -0.30)
  line(
    (0.55, -0.53), (0.65, -0.42), (0.82, -0.30), (1.13, 0.33),
    (1.37, 0.27), (1.28, -0.10), (1.18, -0.42), (1.11, -0.64),
    (0.88, -0.72), (0.68, -0.66),
    close: true, fill: rgb(215, 215, 215), stroke: none
  )
  bezier((0.55, -0.53), (1.13, 0.33), (0.72, -0.42), (0.98, -0.02), stroke: 0.8pt)
  bezier((1.13, 0.33), (1.37, 0.27), (1.21, 0.31), (1.29, 0.29), stroke: 0.8pt)
  bezier((1.37, 0.27), (1.11, -0.64), (1.30, -0.05), (1.20, -0.38), stroke: 0.8pt)

  // --- 2. CIRCONFERENZE DELLA RUOTA (centro O2 = (0, -5.0)) ---
  arc((0, -5.0), start: 22deg, stop: 158deg, radius: 4.50, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((0, -5.0), start: 20deg, stop: 160deg, radius: 4.70, anchor: "origin", stroke: 0.7pt)
  arc((0, -5.0), start: 18deg, stop: 162deg, radius: 5.00, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))
  arc((0, -5.0), start: 16deg, stop: 164deg, radius: 5.45, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // --- 3. ASSI, LINEE E RAGGI ---
  // Asse verticale per P e O2
  line((0, 1.0), (0, -5.5), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  // Retta orizzontale tangente in P
  line((-3.8, 0), (3.8, 0), stroke: 0.6pt)
  // Retta orizzontale per O2
  line((-0.8, -5.0), (0.8, -5.0), stroke: 0.6pt)
  // Linea di pressione passante per a, P, b
  line((-4.5, 1.64), (5.2, -1.89), stroke: 0.8pt)
  // Raggi da O2 per gli estremi di contatto a e b
  line((0, -5.0), (-0.98, 0.36), stroke: 0.6pt)
  line((0, -5.0), (0.88, -0.05), stroke: 0.6pt)

  // --- 4. ARCHI DI QUOTA E FRECCE ---
  arc((0, -5.0), start: 90deg, stop: 100.4deg, radius: 3.65, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.6pt)
  arc((0, -5.0), start: 80.3deg, stop: 90deg, radius: 3.65, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-0.35, -1.55), (-1.15, -1.95), stroke: 0.5pt)
  line((0.35, -1.55), (1.10, -1.95), stroke: 0.5pt)
  // Freccia di rotazione della Ruota
  arc((0, -5.0), start: 132deg, stop: 148deg, radius: 3.90, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)

  // Richiami circonferenze Ruota
  line((3.25, -2.40), (4.29, -1.64), mark: (end: ">"), stroke: 0.6pt)
  line((3.25, -2.80), (4.10, -2.13), mark: (end: ">"), stroke: 0.6pt)
  line((3.25, -3.20), (3.99, -2.51), mark: (end: ">"), stroke: 0.6pt)
  line((3.25, -3.60), (3.97, -2.89), mark: (end: ">"), stroke: 0.6pt)
  // Richiamo Linea di pressione
  line((-3.95, 0.90), (-3.68, 1.34), mark: (end: ">"), stroke: 0.6pt)
  // Frecce per Segmento di ingranamento
  line((-2.40, -4.50), (-1.05, 0.15), mark: (end: ">"), stroke: 0.8pt)
  line((-2.40, -4.50), (0.68, -0.45), mark: (end: ">"), stroke: 0.8pt)

  // --- 5. PUNTI NOTEVOLI ED ETICHETTE ---
  circle((0, 0), radius: 0.07, fill: black, stroke: none)
  circle((-0.98, 0.36), radius: 0.07, fill: black, stroke: none)
  circle((0.82, -0.30), radius: 0.07, fill: black, stroke: none)
  circle((0, -5.0), radius: 0.07, fill: black, stroke: none)

  content((-4.35, 0.72), text(size: 7pt)[Linea di pressione], anchor: "center")
  content((-1, 0.62), [$a$], anchor: "east")
  content((-0.08, -0.25), [$P$], anchor: "east")
  content((0.95, -0.15), [$b$], anchor: "west")
  content((-1.80, -1.95), text(size: 7pt)[Angolo di], anchor: "center")
  content((-1.90, -2.28), text(size: 7pt)[accesso], anchor: "center")
  content((1.60, -1.65), text(size: 7pt)[Angolo], anchor: "center")
  content((1.75, -1.98), text(size: 7pt)[di recesso], anchor: "center")
  content((-3.75, -3.65), text(size: 7pt)[*Ruota*], anchor: "center")
  content((-3.75, -4.00), text(size: 7pt)[(condotta)], anchor: "center")
  content((3.18, -2.40), text(size: 7pt)[Circonferenza di testa], anchor: "east")
  content((3.18, -2.80), text(size: 7pt)[Circonferenza primitiva], anchor: "east")
  content((3.18, -3.20), text(size: 7pt)[Circonferenza di base], anchor: "east")
  content((3.18, -3.60), text(size: 7pt)[Circonferenza di piede], anchor: "east")
  content((-2.90, -5.00), text(size: 7pt)[Segmento di ingranamento], anchor: "center")
  content((0.10, -5.25), [$O_2$], anchor: "west")
})
