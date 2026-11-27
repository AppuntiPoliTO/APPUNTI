// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.85cm, {
  import draw: *

  // --- 1. DENTI DELLA RUOTA (RIEMPIMENTO ALLINEATO AI PROFILI) ---
  // Dente 4: Ruota in basso a sinistra (isolato)
  merge-path({
    bezier((-3.26, -1.90), (-3.42, -1.78), (-3.35, -1.86), (-3.38, -1.82))
    bezier((-3.42, -1.78), (-3.85, -1.32), (-3.62, -1.62), (-3.75, -1.46))
    bezier((-3.85, -1.32), (-3.63, -1.10), (-3.78, -1.24), (-3.70, -1.17))
    bezier((-3.63, -1.10), (-2.98, -1.48), (-3.42, -1.26), (-3.18, -1.40))
    bezier((-2.98, -1.48), (-2.84, -1.47), (-2.92, -1.50), (-2.88, -1.49))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((-3.26, -1.90), (-3.42, -1.78), (-3.35, -1.86), (-3.38, -1.82), stroke: 0.8pt)
  bezier((-3.42, -1.78), (-3.85, -1.32), (-3.62, -1.62), (-3.75, -1.46), stroke: 0.8pt)
  bezier((-3.85, -1.32), (-3.63, -1.10), (-3.78, -1.24), (-3.70, -1.17), stroke: 0.8pt)
  bezier((-3.63, -1.10), (-2.98, -1.48), (-3.42, -1.26), (-3.18, -1.40), stroke: 0.8pt)
  bezier((-2.98, -1.48), (-2.84, -1.47), (-2.92, -1.50), (-2.88, -1.49), stroke: 0.8pt)

  // Dente 5: Ruota in contatto in 'a' (-0.98, 0.36)
  merge-path({
    bezier((-1.31, -0.70), (-0.98, 0.36), (-1.22, -0.35), (-1.12, 0.02))
    bezier((-0.98, 0.36), (-0.74, 0.40), (-0.90, 0.38), (-0.82, 0.39))
    bezier((-0.74, 0.40), (-0.72, -0.55), (-0.68, 0.05), (-0.68, -0.28))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((-1.31, -0.70), (-0.98, 0.36), (-1.22, -0.35), (-1.12, 0.02), stroke: 0.8pt)
  bezier((-0.98, 0.36), (-0.74, 0.40), (-0.90, 0.38), (-0.82, 0.39), stroke: 0.8pt)
  bezier((-0.74, 0.40), (-0.72, -0.55), (-0.68, 0.05), (-0.68, -0.28), stroke: 0.8pt)

  // Dente 6: Ruota in contatto in 'b' (0.82, -0.30)
  merge-path({
    bezier((0.55, -0.53), (1.13, 0.33), (0.72, -0.42), (0.98, -0.02))
    bezier((1.13, 0.33), (1.37, 0.27), (1.21, 0.31), (1.29, 0.29))
    bezier((1.37, 0.27), (1.11, -0.64), (1.30, -0.05), (1.20, -0.38))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((0.55, -0.53), (1.13, 0.33), (0.72, -0.42), (0.98, -0.02), stroke: 0.8pt)
  bezier((1.13, 0.33), (1.37, 0.27), (1.21, 0.31), (1.29, 0.29), stroke: 0.8pt)
  bezier((1.37, 0.27), (1.11, -0.64), (1.30, -0.05), (1.20, -0.38), stroke: 0.8pt)

  // --- 2. CIRCONFERENZE DELLA RUOTA (centro O2 = (0, -5.0)) ---
  arc((0, -5.0), start: 22deg, stop: 158deg, radius: 4.50, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((0, -5.0), start: 20deg, stop: 160deg, radius: 4.70, anchor: "origin", stroke: 0.7pt)
  arc((0, -5.0), start: 18deg, stop: 162deg, radius: 5.00, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))
  arc((0, -5.0), start: 16deg, stop: 164deg, radius: 5.45, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // --- 3. ASSI, LINEE E RAGGI ---
  line((0, 0.8), (0, -5.4), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  line((-3.6, 0), (3.6, 0), stroke: 0.6pt)
  line((-0.8, -5.0), (0.8, -5.0), stroke: 0.6pt)
  // Linea di pressione passante per a, P, b
  line((-3.8, 1.38), (4.6, -1.67), stroke: 0.8pt)
  // Raggi da O2 per gli estremi di contatto a e b
  line((0, -5.0), (-0.98, 0.36), stroke: 0.6pt)
  line((0, -5.0), (0.82, -0.30), stroke: 0.6pt)

  // --- 4. ARCHI DI QUOTA E FRECCE ---
  arc((0, -5.0), start: 90deg, stop: 100.4deg, radius: 3.65, anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  arc((0, -5.0), start: 80.1deg, stop: 90deg, radius: 3.65, anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  line((-0.34, -1.52), (-1.15, -1.92), stroke: 0.5pt)
  line((0.32, -1.52), (1.05, -1.85), stroke: 0.5pt)
  // Freccia di rotazione della Ruota
  arc((0, -5.0), start: 132deg, stop: 148deg, radius: 3.90, anchor: "origin", mark: (start: ">", fill: black, scale: 0.7), stroke: 0.6pt)

  // Richiami circonferenze Ruota
  line((3.25, -2.40), (4.29, -1.64), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.25, -2.80), (4.10, -2.13), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.25, -3.20), (3.99, -2.51), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.25, -3.60), (3.97, -2.89), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  // Richiamo Linea di pressione
  line((-3.55, 0.85), (-3.28, 1.19), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)

  // Quota pulita Segmento di ingranamento (parallela ad a-b)
  line((-0.98, 0.36), (-0.63, 1.32), stroke: 0.5pt)
  line((0.82, -0.30), (1.17, 0.66), stroke: 0.5pt)
  line((-0.68, 1.18), (1.12, 0.52), mark: (start: ">", end: ">", fill: black, scale: 0.6), stroke: 0.6pt)
  line((0.22, 0.85), (0.65, 1.18), stroke: 0.5pt)

  // --- 5. PUNTI NOTEVOLI ED ETICHETTE ---
  circle((0, 0), radius: 0.06, fill: black, stroke: none)
  circle((-0.98, 0.36), radius: 0.06, fill: black, stroke: none)
  circle((0.82, -0.30), radius: 0.06, fill: black, stroke: none)
  circle((0, -5.0), radius: 0.06, fill: black, stroke: none)

  content((-3.65, 0.65), text(size: 7pt)[Linea di pressione], anchor: "center")
  content((-1.12, 0.52), [$a$], anchor: "east")
  content((-0.10, -0.24), [$P$], anchor: "east")
  content((1.40, -0.20), [$b$], anchor: "west")
  content((0.72, 1.22), text(size: 7pt)[Segmento di ingranamento], anchor: "west")
  content((-1.80, -1.95), text(size: 7pt)[Angolo di], anchor: "center")
  content((-1.85, -2.25), text(size: 7pt)[accesso], anchor: "center")
  content((1.65, -1.72), text(size: 7pt)[Angolo], anchor: "center")
  content((1.72, -2.02), text(size: 7pt)[di recesso], anchor: "center")
  content((-3.75, -3.65), text(size: 7.5pt)[*Ruota*], anchor: "center")
  content((-3.75, -4.00), text(size: 7pt)[(condotta)], anchor: "center")
  content((3.18, -2.40), text(size: 7pt)[Circonferenza di testa], anchor: "east")
  content((3.18, -2.80), text(size: 7pt)[Circonferenza primitiva], anchor: "east")
  content((3.18, -3.20), text(size: 7pt)[Circonferenza di base], anchor: "east")
  content((3.18, -3.60), text(size: 7pt)[Circonferenza di piede], anchor: "east")
  content((0.12, -5.24), [$O_2$], anchor: "west")
})
