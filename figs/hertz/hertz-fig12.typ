// Figura estratta da hertz.typ (riga 679) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- GUSCIO SUPERIORE ---
  // Arco frontale
  arc((-1.62, 0.56), start: 180deg, stop: 360deg, radius: 1.15, anchor: "origin", stroke: 1.5pt)
  // Bordi longitudinali superiori
  line((-2.77, 0.56), (0.15, 1.72), stroke: 1.5pt)
  line((-0.47, 0.56), (2.45, 1.72), stroke: 1.5pt)
  // Arco posteriore (metà sinistra tratteggiata, metà destra piena)
  arc((1.30, 1.72), start: 180deg, stop: 270deg, radius: 1.15, anchor: "origin", stroke: (dash: "dashed", thickness: 1.5pt))
  arc((1.30, 1.72), start: 270deg, stop: 360deg, radius: 1.15, anchor: "origin", stroke: 1.5pt)

  // --- LINEA DI CONTATTO CENTRALE ---
  line((-1.62, -0.59), (1.30, 0.57), stroke: 1.5pt)

  // --- GUSCIO INFERIORE ---
  // Arco frontale
  arc((-1.62, -1.74), start: 0deg, stop: 180deg, radius: 1.15, anchor: "origin", stroke: 1.5pt)
  // Bordo longitudinale destro
  line((-0.47, -1.74), (2.45, -0.58), stroke: 1.5pt)
  // Bordo longitudinale sinistro (visibile all'esterno, tratteggiato all'interno)
  line((-2.77, -1.74), (-0.91, -1.00), stroke: 1.5pt)
  line((-0.91, -1.00), (0.15, -0.58), stroke: (dash: "dashed", thickness: 1.5pt))
  // Arco posteriore (metà destra piena, metà sinistra tratteggiata)
  arc((1.30, -0.58), start: 0deg, stop: 90deg, radius: 1.15, anchor: "origin", stroke: 1.5pt)
  arc((1.30, -0.58), start: 90deg, stop: 180deg, radius: 1.15, anchor: "origin", stroke: (dash: "dashed", thickness: 1.5pt))

  // --- ASSI CARTESIANI ---
  // Asse x
  line((0, 0), (-3.30, -1.16), mark: (end: ">", size: 0.25), stroke: 1.1pt)
  // Asse y
  line((0, 0), (3.00, -0.25), mark: (end: ">", size: 0.25), stroke: 1.1pt)
  // Asse z
  line((0, 0), (0, 2.55), mark: (end: ">", size: 0.25), stroke: 1.1pt)

  // --- VETTORI FORZA F ---
  // Forza superiore (verso il basso)
  line((-1.62, 2.05), (-1.62, 0.42), mark: (end: ">", fill: black, size: 0.35), stroke: 2.4pt)
  // Forza inferiore (verso l'alto)
  line((-1.62, -2.35), (-1.62, -0.82), mark: (end: ">", fill: black, size: 0.35), stroke: 2.4pt)

  // --- ETICHETTE ---
  content((-1.20, 1.85), [#text(size: 16pt)[F]])
  content((-1.20, -2.05), [#text(size: 16pt)[F]])
  content((0.42, 2.35), [#text(size: 16pt)[z]])
  content((-3.40, -0.68), [#text(size: 16pt)[x]])
  content((3.20, -0.68), [#text(size: 16pt)[y]])
})
