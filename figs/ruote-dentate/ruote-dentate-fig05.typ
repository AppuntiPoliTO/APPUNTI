// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.85cm, {
  import draw: *

  // --- 1. DENTI DEL PIGNONE (RIEMPIMENTO ALLINEATO AI PROFILI) ---
  // Dente 1: Pignone in alto a sinistra (isolato)
  merge-path({
    bezier((-1.69, 1.44), (-1.95, 1.38), (-1.80, 1.36), (-1.88, 1.36))
    bezier((-1.95, 1.38), (-2.77, 1.62), (-2.30, 1.38), (-2.58, 1.48))
    bezier((-2.77, 1.62), (-2.65, 1.95), (-2.74, 1.75), (-2.70, 1.85))
    bezier((-2.65, 1.95), (-1.98, 2.25), (-2.42, 2.05), (-2.15, 2.15))
    bezier((-1.98, 2.25), (-1.92, 2.34), (-1.92, 2.28), (-1.90, 2.31))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((-1.69, 1.44), (-1.95, 1.38), (-1.80, 1.36), (-1.88, 1.36), stroke: 0.8pt)
  bezier((-1.95, 1.38), (-2.77, 1.62), (-2.30, 1.38), (-2.58, 1.48), stroke: 0.8pt)
  bezier((-2.77, 1.62), (-2.65, 1.95), (-2.74, 1.75), (-2.70, 1.85), stroke: 0.8pt)
  bezier((-2.65, 1.95), (-1.98, 2.25), (-2.42, 2.05), (-2.15, 2.15), stroke: 0.8pt)
  bezier((-1.98, 2.25), (-1.92, 2.34), (-1.92, 2.28), (-1.90, 2.31), stroke: 0.8pt)

  // Dente 2: Pignone in contatto in 'a' (-0.98, 0.36)
  merge-path({
    bezier((-0.56, 0.58), (-1.27, 0.14), (-0.75, 0.50), (-1.05, 0.32))
    bezier((-1.27, 0.14), (-1.58, 0.29), (-1.38, 0.19), (-1.48, 0.24))
    bezier((-1.58, 0.29), (-1.19, 0.90), (-1.45, 0.55), (-1.30, 0.78))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((-0.56, 0.58), (-1.27, 0.14), (-0.75, 0.50), (-1.05, 0.32), stroke: 0.8pt)
  bezier((-1.27, 0.14), (-1.58, 0.29), (-1.38, 0.19), (-1.48, 0.24), stroke: 0.8pt)
  bezier((-1.58, 0.29), (-1.19, 0.90), (-1.45, 0.55), (-1.30, 0.78), stroke: 0.8pt)

  // Dente 3: Pignone in contatto in 'b' (0.82, -0.30)
  merge-path({
    bezier((0.38, 0.54), (0.82, -0.30), (0.48, 0.25), (0.65, -0.05))
    bezier((0.82, -0.30), (1.13, -0.19), (0.92, -0.27), (1.03, -0.23))
    bezier((1.13, -0.19), (0.91, 0.72), (1.08, 0.15), (0.98, 0.48))
  }, close: true, fill: rgb(220, 220, 220), stroke: none)
  bezier((0.38, 0.54), (0.82, -0.30), (0.48, 0.25), (0.65, -0.05), stroke: 0.8pt)
  bezier((0.82, -0.30), (1.13, -0.19), (0.92, -0.27), (1.03, -0.23), stroke: 0.8pt)
  bezier((1.13, -0.19), (0.91, 0.72), (1.08, 0.15), (0.98, 0.48), stroke: 0.8pt)

  // --- 2. CIRCONFERENZE DEL PIGNONE (centro O1 = (0, 2.5)) ---
  arc((0, 2.5), start: 148deg, stop: 392deg, radius: 2.00, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((0, 2.5), start: 152deg, stop: 388deg, radius: 2.35, anchor: "origin", stroke: 0.7pt)
  arc((0, 2.5), start: 155deg, stop: 385deg, radius: 2.50, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.7pt))
  arc((0, 2.5), start: 158deg, stop: 382deg, radius: 2.92, anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // --- 3. ASSI, LINEE E RAGGI ---
  line((0, 3.3), (0, -0.85), stroke: (dash: "dash-dotted", thickness: 0.7pt))
  line((-3.2, 2.5), (3.2, 2.5), stroke: 0.6pt)
  line((-3.6, 0), (3.6, 0), stroke: 0.6pt)
  // Linea di pressione passante per a, P, b
  line((-3.8, 1.38), (3.8, -1.38), stroke: 0.8pt)
  // Raggi da O1 per gli estremi di contatto a e b
  line((0, 2.5), (-0.98, 0.36), stroke: 0.6pt)
  line((0, 2.5), (0.82, -0.30), stroke: 0.6pt)

  // --- 4. ARCHI DI QUOTA E FRECCE ---
  arc((0, 2.5), start: 245.5deg, stop: 270deg, radius: 1.45, anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  arc((0, 2.5), start: 270deg, stop: 286.3deg, radius: 1.45, anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  line((-0.30, 1.35), (-0.70, 1.72), stroke: 0.5pt)
  line((0.22, 1.35), (0.72, 1.72), stroke: 0.5pt)
  // Freccia di rotazione del Pignone
  arc((0, 2.5), start: 105deg, stop: 142deg, radius: 1.65, anchor: "origin", mark: (end: ">", fill: black, scale: 0.7), stroke: 0.6pt)

  // Richiami circonferenze Pignone
  line((3.20, 4.30), (1.68, 3.59), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.20, 3.90), (2.13, 3.49), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.20, 3.50), (2.40, 3.19), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  line((3.20, 3.10), (2.88, 2.90), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)
  // Richiamo Linea di pressione
  line((-3.55, 0.85), (-3.28, 1.19), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.6pt)

  // --- 5. PUNTI NOTEVOLI ED ETICHETTE ---
  circle((0, 2.5), radius: 0.05, fill: black, stroke: none)
  circle((0, 0), radius: 0.06, fill: black, stroke: none)
  circle((-0.98, 0.36), radius: 0.06, fill: black, stroke: none)
  circle((0.82, -0.30), radius: 0.06, fill: black, stroke: none)

  content((-0.25, 4.15), text(size: 7.5pt)[*Pignone*], anchor: "west")
  content((-0.25, 3.80), text(size: 7pt)[(conduttore)], anchor: "west")
  content((3.30, 4.30), text(size: 7pt)[Circonferenza di piede], anchor: "west")
  content((3.30, 3.90), text(size: 7pt)[Circonferenza di base], anchor: "west")
  content((3.30, 3.50), text(size: 7pt)[Circonferenza primitiva], anchor: "west")
  content((3.30, 3.10), text(size: 7pt)[Circonferenza di testa], anchor: "west")
  content((0.12, 2.76), [$O_1$], anchor: "west")
  content((-1.05, 2.15), text(size: 7pt)[Angolo di], anchor: "center")
  content((-1.08, 1.85), text(size: 7pt)[accesso], anchor: "center")
  content((1.05, 2.12), text(size: 7pt)[Angolo], anchor: "center")
  content((1.12, 1.82), text(size: 7pt)[di recesso], anchor: "center")
  content((-3.65, 0.65), text(size: 7pt)[Linea di pressione], anchor: "center")
  content((-0.80, 0.14), [$a$], anchor: "center")
  content((-0.10, -0.26), [$P$], anchor: "east")
  content((0.92, -0.52), [$b$], anchor: "west")
})
