
#let circ = sym.degree

#canvas(length: 1.5cm, {
  import draw: *

  // ==========================================
  // GRIGLIA E INTESTAZIONI DEI PANNELLI
  // ==========================================
  // Divisori verticali tra le 3 colonne
  line((3.80, 0.10), (3.80, 8.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(150)))
  line((7.60, 0.10), (7.60, 8.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(150)))
  // Divisore orizzontale tra Statico (sopra) e Fatica (sotto)
  line((0.10, 3.85), (11.30, 3.85), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(150)))

  // Titoli delle 3 colonne
  content((1.90, 7.95), text(size: 7pt)[*TRAZIONE*], anchor: "center")
  content((1.90, 7.65), text(size: 7pt)[(Provino liscio)], anchor: "center")

  content((5.70, 7.95), text(size: 7pt)[*TORSIONE*], anchor: "center")
  content((5.70, 7.65), text(size: 7pt)[(Sezione circolare liscia)], anchor: "center")

  content((9.50, 7.95), text(size: 7pt)[*TORSIONE CON INTAGLIO*], anchor: "center")
  content((9.50, 7.65), text(size: 7pt)[(Sezione intagliata)], anchor: "center")


  // ==========================================
  // PANNELLO 1: TRAZIONE (x_c = 1.90)
  // ==========================================

  // --- 1A. Caso Statico (in alto) ---
  content((0.20, 7.25), text(size: 7pt)[*Caso Statico* ($F$ cost.)], anchor: "west")

  // Metà superiore provino con strizione simmetrica e cono a 45°
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((1.45, 6.62), (1.45, 6.26))
    bezier((1.45, 6.26), (1.62, 5.95), (1.45, 6.10), (1.56, 6.03))
    line((1.62, 5.95), (1.76, 5.81))
    arc((1.90, 5.81), start: 180deg, stop: 360deg, radius: (0.14, 0.04), anchor: "origin")
    line((2.04, 5.81), (2.18, 5.95))
    bezier((2.18, 5.95), (2.35, 6.26), (2.24, 6.03), (2.35, 6.10))
    line((2.35, 6.26), (2.35, 6.62))
  })
  // Ombreggiatura del labbro conico a 45°
  merge-path(close: true, fill: luma(215), stroke: none, {
    line((1.62, 5.95), (1.76, 5.81))
    arc((1.90, 5.81), start: 180deg, stop: 360deg, radius: (0.14, 0.04), anchor: "origin")
    line((2.04, 5.81), (2.18, 5.95))
    arc((1.90, 5.95), start: 360deg, stop: 180deg, radius: (0.28, 0.07), anchor: "origin")
  })
  // Contorni metà superiore
  circle((1.90, 6.62), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((1.45, 6.62), (1.45, 6.26), stroke: 1pt)
  line((2.35, 6.62), (2.35, 6.26), stroke: 1pt)
  bezier((1.45, 6.26), (1.62, 5.95), (1.45, 6.10), (1.56, 6.03), stroke: 1pt)
  bezier((2.35, 6.26), (2.18, 5.95), (2.35, 6.10), (2.24, 6.03), stroke: 1pt)
  line((1.62, 5.95), (1.76, 5.81), stroke: 1pt)
  line((2.18, 5.95), (2.04, 5.81), stroke: 1pt)
  arc((1.90, 5.95), start: 180deg, stop: 360deg, radius: (0.28, 0.07), anchor: "origin", stroke: 0.6pt)
  arc((1.90, 5.95), start: 0deg, stop: 180deg, radius: (0.28, 0.07), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt, paint: luma(130)))
  arc((1.90, 5.81), start: 180deg, stop: 360deg, radius: (0.14, 0.04), anchor: "origin", stroke: 1pt)

  // Metà inferiore provino con strizione simmetrica e coppa a 45°
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((1.62, 5.52), (1.62, 5.52))
    bezier((1.62, 5.52), (1.45, 5.18), (1.56, 5.40), (1.45, 5.34))
    line((1.45, 5.18), (1.45, 4.78))
    arc((1.90, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((2.35, 4.78), (2.35, 5.18))
    bezier((2.35, 5.18), (2.18, 5.52), (2.35, 5.34), (2.24, 5.40))
  })
  // Coppa incavata (labbro a 45° e fondo fibroso centrale)
  circle((1.90, 5.52), radius: (0.28, 0.07), fill: luma(205), stroke: 1pt)
  circle((1.90, 5.49), radius: (0.14, 0.035), fill: luma(145), stroke: 0.6pt)
  line((1.64, 5.51), (1.76, 5.49), stroke: 0.45pt)
  line((2.16, 5.51), (2.04, 5.49), stroke: 0.45pt)
  // Contorni metà inferiore
  bezier((1.62, 5.52), (1.45, 5.18), (1.56, 5.40), (1.45, 5.34), stroke: 1pt)
  bezier((2.18, 5.52), (2.35, 5.18), (2.24, 5.40), (2.35, 5.34), stroke: 1pt)
  line((1.45, 5.18), (1.45, 4.78), stroke: 1pt)
  line((2.35, 5.18), (2.35, 4.78), stroke: 1pt)
  arc((1.90, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Frecce F
  line((1.90, 6.62), (1.90, 7.12), mark: (end: ">", fill: black, scale: 0.6), stroke: 0.9pt)
  content((2.02, 6.92), text(size: 7pt)[$F$], anchor: "west")

  line((1.90, 4.67), (1.90, 4.24), mark: (end: ">", fill: black, scale: 0.6), stroke: 0.9pt)
  content((2.02, 4.44), text(size: 7pt)[$F$], anchor: "west")

  // Indicazione Strizione e 45°
  line((1.18, 5.95), (1.55, 5.95), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((1.14, 5.95), text(size: 7pt)[Strizione], anchor: "east")

  line((2.38, 5.80), (2.13, 5.87), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((2.42, 5.80), text(size: 7pt)[$45^circ$ ($tau_"max"$)], anchor: "west")

  // Didascalia 1A
  content((1.90, 4.05), text(size: 7pt)[*Scorrimento a $45^circ$ (coppa-cono)*], anchor: "center")


  // --- 1B. Caso a Fatica (in basso) ---
  content((0.20, 3.55), text(size: 7pt)[*Caso a Fatica* ($F'(t)$)], anchor: "west")

  // Metà superiore provino (nessuna strizione, taglio netto a 90°)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((1.45, 2.92), (1.45, 2.24))
    arc((1.90, 2.24), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((2.35, 2.24), (2.35, 2.92))
  })
  circle((1.90, 2.92), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((1.45, 2.92), (1.45, 2.24), stroke: 1pt)
  line((2.35, 2.92), (2.35, 2.24), stroke: 1pt)
  arc((1.90, 2.24), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  arc((1.90, 2.24), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(120)))

  // Metà inferiore provino (superficie piana a 90° con linee di spiaggia e zona di schianto)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((1.45, 1.84), (1.45, 1.16))
    arc((1.90, 1.16), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((2.35, 1.16), (2.35, 1.84))
  })
  circle((1.90, 1.84), radius: (0.45, 0.11), fill: luma(226), stroke: none)
  // Zona di rottura finale di schianto (crescente scuro a sinistra)
  merge-path(close: true, fill: luma(145), stroke: none, {
    arc((1.90, 1.84), start: 115deg, stop: 245deg, radius: (0.45, 0.11), anchor: "origin")
    bezier((1.71, 1.74), (1.71, 1.94), (1.84, 1.80), (1.84, 1.88))
  })
  // Linee di spiaggia concentriche dalla zona di innesco a destra
  bezier((2.16, 1.92), (2.16, 1.76), (2.06, 1.87), (2.06, 1.81), stroke: 0.5pt)
  bezier((1.98, 1.94), (1.98, 1.74), (1.88, 1.88), (1.88, 1.80), stroke: 0.5pt)
  circle((1.90, 1.84), radius: (0.45, 0.11), stroke: 1pt)
  line((1.45, 1.84), (1.45, 1.16), stroke: 1pt)
  line((2.35, 1.84), (2.35, 1.16), stroke: 1pt)
  arc((1.90, 1.16), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Frecce F'(t)
  line((1.90, 2.92), (1.90, 3.42), mark: (end: ">", fill: black, scale: 0.6), stroke: 0.9pt)
  content((2.02, 3.22), text(size: 7pt)[$F'(t)$], anchor: "west")

  line((1.90, 1.05), (1.90, 0.62), mark: (end: ">", fill: black, scale: 0.6), stroke: 0.9pt)
  content((2.02, 0.82), text(size: 7pt)[$F'(t)$], anchor: "west")

  // Indicazioni 90° e assenza di strizione
  line((2.40, 2.02), (2.22, 1.91), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((2.44, 2.04), text(size: 7pt)[$90^circ$ ($sigma_"max"$)], anchor: "west")
  content((1.36, 2.04), text(size: 7pt)[No strizione], anchor: "east")

  // Didascalia 1B
  content((1.90, 0.35), text(size: 7pt)[*Decoesione netta a $90^circ$ (fragile)*], anchor: "center")


  // ==========================================
  // PANNELLO 2: TORSIONE SEZIONE LISCIA (x_c = 5.70)
  // ==========================================

  // --- 2A. Caso Statico (in alto) ---
  content((4.00, 7.25), text(size: 7pt)[*Caso Statico* ($M_t$ cost.)], anchor: "west")

  // Asse tratteggiato (solo nei tratti visibili fuori dal provino)
  line((5.70, 7.12), (5.70, 6.62), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((5.70, 5.77), (5.70, 5.59), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((5.70, 4.67), (5.70, 4.30), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))

  // Frecce di torsione statica opposte
  arc((5.70, 6.90), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (end: ">", fill: black, scale: 0.55), stroke: 0.8pt)
  arc((5.70, 4.48), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", fill: black, scale: 0.55), stroke: 0.8pt)

  // Metà superiore provino
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((5.25, 6.62), (5.25, 5.88))
    arc((5.70, 5.88), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((6.15, 5.88), (6.15, 6.62))
  })
  circle((5.70, 6.62), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((5.25, 6.62), (5.25, 5.88), stroke: 1pt)
  line((6.15, 6.62), (6.15, 5.88), stroke: 1pt)
  arc((5.70, 5.88), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  arc((5.70, 5.88), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(120)))

  // Metà inferiore provino (recisione piana a 90° con tracce plastiche circolari)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((5.25, 5.48), (5.25, 4.78))
    arc((5.70, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((6.15, 4.78), (6.15, 5.48))
  })
  circle((5.70, 5.48), radius: (0.45, 0.11), fill: luma(215), stroke: 1pt)
  circle((5.70, 5.48), radius: (0.31, 0.075), stroke: 0.45pt)
  circle((5.70, 5.48), radius: (0.16, 0.04), stroke: 0.45pt)
  circle((5.70, 5.48), radius: (0.05, 0.015), fill: luma(70), stroke: 0.4pt)
  line((5.25, 5.48), (5.25, 4.78), stroke: 1pt)
  line((6.15, 5.48), (6.15, 4.78), stroke: 1pt)
  arc((5.70, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((6.24, 5.66), (6.08, 5.55), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((6.28, 5.68), text(size: 7pt)[$90^circ$ ($tau_"max"$)], anchor: "west")

  // Didascalia 2A
  content((5.70, 4.05), text(size: 7pt)[*Recisione piana netta a $90^circ$*], anchor: "center")


  // --- 2B. Caso a Fatica (in basso) - ELICA A 45° ("BECCO DI FLAUTO" / "X") ---
  content((4.00, 3.55), text(size: 7pt)[*Caso a Fatica* ($M_t (t)$)], anchor: "west")

  // Asse tratteggiato (solo nei tratti visibili)
  line((5.70, 3.44), (5.70, 2.96), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((5.70, 2.28), (5.70, 2.05), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((5.70, 1.01), (5.70, 0.62), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((5.70, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((5.70, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // --- Troncone Superiore (taglio a 45° + ramo coniugato a +45° sulla parete) ---
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((5.25, 2.96), (5.25, 2.64))
    bezier((5.25, 2.64), (6.15, 2.08), (5.48, 2.34), (5.86, 2.10))
    line((6.15, 2.08), (6.15, 2.96))
  })
  circle((5.70, 2.96), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((5.25, 2.96), (5.25, 2.64), stroke: 1pt)
  line((6.15, 2.96), (6.15, 2.08), stroke: 1pt)
  // Bordo frontale e posteriore del taglio elicoidale a -45°
  bezier((5.25, 2.64), (6.15, 2.08), (5.48, 2.34), (5.86, 2.10), stroke: 1.1pt)
  bezier((5.25, 2.64), (6.15, 2.08), (5.54, 2.62), (5.92, 2.38), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(125)))
  // Ramo coniugato a +45° sulla superficie cilindrica superiore (forma la ramificazione a "X")
  bezier((5.67, 2.26), (6.06, 2.60), (5.80, 2.38), (5.94, 2.50), stroke: (dash: "densely-dashed", thickness: 1.1pt))

  // --- Troncone Inferiore (superficie ellittica pulita a "becco di flauto" a 45°) ---
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((5.25, 2.22), (5.25, 1.12))
    arc((5.70, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((6.15, 1.12), (6.15, 1.66))
    bezier((6.15, 1.66), (5.25, 2.22), (5.86, 1.68), (5.48, 1.92))
  })
  // Superficie elicoidale inclinata a 45° (ellisse inclinata chiusa con merge-path)
  merge-path(close: true, fill: luma(210), stroke: 1pt, {
    bezier((5.25, 2.22), (6.15, 1.66), (5.48, 1.92), (5.86, 1.68))
    bezier((6.15, 1.66), (5.25, 2.22), (5.92, 1.96), (5.54, 2.20))
  })
  // Striature di propagazione sulla faccia inclinata a 45°
  bezier((5.44, 2.13), (5.52, 1.98), (5.46, 2.05), (5.49, 2.01), stroke: (thickness: 0.45pt, paint: luma(90)))
  bezier((5.65, 2.03), (5.74, 1.85), (5.68, 1.94), (5.71, 1.89), stroke: (thickness: 0.45pt, paint: luma(90)))
  bezier((5.86, 1.90), (5.94, 1.74), (5.89, 1.82), (5.92, 1.77), stroke: (thickness: 0.45pt, paint: luma(90)))
  // Prosecuzione del ramo coniugato a +45° sulla parete cilindrica inferiore
  bezier((5.67, 1.84), (5.32, 1.56), (5.54, 1.74), (5.42, 1.64), stroke: (dash: "densely-dashed", thickness: 1.1pt))
  // Pareti verticali e base del troncone inferiore
  line((5.25, 2.22), (5.25, 1.12), stroke: 1pt)
  line((6.15, 1.66), (6.15, 1.12), stroke: 1pt)
  arc((5.70, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Richiami esplicativi per "X" e "Superficie a 45°"
  line((4.95, 2.48), (5.68, 2.34), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((4.90, 2.50), text(size: 7pt)[Cricca a "X"], anchor: "east")
  content((4.90, 2.26), text(size: 7pt)[($plus.minus 45^circ$)], anchor: "east")

  line((6.34, 1.96), (5.90, 1.84), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((6.38, 2.02), text(size: 7pt)[Superficie a $45^circ$], anchor: "west")
  content((6.38, 1.78), text(size: 7pt)[($sigma_"max" = tau_"max"$)], anchor: "west")

  // Didascalia 2B
  content((5.70, 0.35), text(size: 7pt)[*Elica a $45^circ$ ("becco di flauto" / "X")*], anchor: "center")


  // ==========================================
  // PANNELLO 3: TORSIONE CON INTAGLIO (x_c = 9.50)
  // ==========================================

  // --- 3A. Caso Statico (in alto) ---
  content((7.80, 7.25), text(size: 7pt)[*Caso Statico* ($M_t$ cost.)], anchor: "west")

  // Asse tratteggiato
  line((9.50, 7.12), (9.50, 6.62), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((9.50, 5.79), (9.50, 5.62), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((9.50, 4.67), (9.50, 4.30), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))

  // Frecce di torsione statica opposte
  arc((9.50, 6.90), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (end: ">", fill: black, scale: 0.55), stroke: 0.8pt)
  arc((9.50, 4.48), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", fill: black, scale: 0.55), stroke: 0.8pt)

  // Metà superiore provino intagliato
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 6.62), (9.05, 6.06))
    bezier((9.05, 6.06), (9.20, 5.88), (9.07, 5.96), (9.14, 5.90))
    arc((9.50, 5.88), start: 180deg, stop: 360deg, radius: (0.30, 0.075), anchor: "origin")
    bezier((9.80, 5.88), (9.95, 6.06), (9.86, 5.90), (9.93, 5.96))
    line((9.95, 6.06), (9.95, 6.62))
  })
  circle((9.50, 6.62), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 6.62), (9.05, 6.06), stroke: 1pt)
  line((9.95, 6.62), (9.95, 6.06), stroke: 1pt)
  arc((9.50, 6.06), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 6.06), (9.20, 5.88), (9.07, 5.96), (9.14, 5.90), stroke: 1pt)
  bezier((9.95, 6.06), (9.80, 5.88), (9.93, 5.96), (9.86, 5.90), stroke: 1pt)
  arc((9.50, 5.88), start: 180deg, stop: 360deg, radius: (0.30, 0.075), anchor: "origin", stroke: 1pt)
  arc((9.50, 5.88), start: 0deg, stop: 180deg, radius: (0.30, 0.075), anchor: "origin", stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(125)))

  // Metà inferiore provino intagliato (gola simmetrica + rottura piana a 90°)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 5.54), (9.05, 5.36), (9.14, 5.46), (9.07, 5.42))
    line((9.05, 5.36), (9.05, 4.78))
    arc((9.50, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 4.78), (9.95, 5.36))
    bezier((9.95, 5.36), (9.80, 5.54), (9.93, 5.42), (9.86, 5.46))
  })
  // Spallamento posteriore dell'intaglio
  arc((9.50, 5.36), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie piana di rottura nella gola
  circle((9.50, 5.54), radius: (0.30, 0.075), fill: luma(180), stroke: 1pt)
  circle((9.50, 5.54), radius: (0.17, 0.042), stroke: 0.45pt)
  circle((9.50, 5.54), radius: (0.05, 0.015), fill: luma(70), stroke: 0.4pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 5.54), (9.05, 5.36), (9.14, 5.46), (9.07, 5.42), stroke: 1pt)
  bezier((9.80, 5.54), (9.95, 5.36), (9.86, 5.46), (9.93, 5.42), stroke: 1pt)
  arc((9.50, 5.36), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 5.36), (9.05, 4.78), stroke: 1pt)
  line((9.95, 5.36), (9.95, 4.78), stroke: 1pt)
  arc((9.50, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 5.66), (9.82, 5.56), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 5.68), text(size: 7pt)[Gola a $90^circ$], anchor: "west")

  // Didascalia 3A
  content((9.50, 4.05), text(size: 7pt)[*Recisione piana a $90^circ$ nella gola*], anchor: "center")


  // --- 3B. Caso a Fatica (in basso) ---
  content((7.80, 3.55), text(size: 7pt)[*Caso a Fatica* ($M_t (t)$)], anchor: "west")

  // Asse tratteggiato
  line((9.50, 3.44), (9.50, 2.94), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((9.50, 2.08), (9.50, 1.94), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))
  line((9.50, 1.01), (9.50, 0.62), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
}) 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
 0.6pt, paint: luma(90)))

  // Frecce di torsione alternata (doppia punta)
  arc((9.50, 3.22), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)
  arc((9.50, 0.82), start: 140deg, stop: 400deg, radius: (0.34, 0.09), anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.5), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica (creste a 45° nella gola)
  merge-path(close: true, fill: luma(246), stroke: none, {
    line((9.05, 2.94), (9.05, 2.38))
    bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22))
    line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20))
    bezier((9.80, 2.20), (9.95, 2.38), (9.86, 2.22), (9.93, 2.28))
    line((9.95, 2.38), (9.95, 2.94))
  })
  circle((9.50, 2.94), radius: (0.45, 0.11), fill: luma(236), stroke: 1pt)
  line((9.05, 2.94), (9.05, 2.38), stroke: 1pt)
  line((9.95, 2.94), (9.95, 2.38), stroke: 1pt)
  arc((9.50, 2.38), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  bezier((9.05, 2.38), (9.20, 2.20), (9.07, 2.28), (9.14, 2.22), stroke: 1pt)
  bezier((9.95, 2.38), (9.80, 2.20), (9.93, 2.28), (9.86, 2.22), stroke: 1pt)
  // Creste a denti di sega a 45°
  line((9.20, 2.20), (9.30, 2.10), (9.40, 2.20), (9.50, 2.10), (9.60, 2.20), (9.70, 2.10), (9.80, 2.20), stroke: 1pt)

  // Metà inferiore provino intagliato a fatica (gola simmetrica + frattura a raggiera)
  merge-path(close: true, fill: luma(246), stroke: none, {
    bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72))
    line((9.05, 1.66), (9.05, 1.12))
    arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin")
    line((9.95, 1.12), (9.95, 1.66))
    bezier((9.95, 1.66), (9.80, 1.84), (9.93, 1.72), (9.86, 1.76))
  })
  arc((9.50, 1.66), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  // Superficie di rottura nella gola con sfaccettature radiali ("a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.075), fill: luma(222), stroke: none)
  line((9.50, 1.84), (9.24, 1.88), (9.36, 1.91), close: true, fill: luma(155), stroke: none)
  line((9.50, 1.84), (9.55, 1.914), (9.74, 1.885), close: true, fill: luma(170), stroke: none)
  line((9.50, 1.84), (9.76, 1.80), (9.58, 1.768), close: true, fill: luma(145), stroke: none)
  line((9.50, 1.84), (9.38, 1.772), (9.22, 1.81), close: true, fill: luma(165), stroke: none)
  line((9.24, 1.88), (9.76, 1.80), stroke: 0.5pt)
  line((9.36, 1.91), (9.58, 1.768), stroke: 0.5pt)
  line((9.55, 1.914), (9.38, 1.772), stroke: 0.5pt)
  line((9.74, 1.885), (9.22, 1.81), stroke: 0.5pt)
  circle((9.50, 1.84), radius: (0.30, 0.075), stroke: 1pt)
  // Raccordi e pareti metà inferiore
  bezier((9.20, 1.84), (9.05, 1.66), (9.14, 1.76), (9.07, 1.72), stroke: 1pt)
  bezier((9.80, 1.84), (9.95, 1.66), (9.86, 1.76), (9.93, 1.72), stroke: 1pt)
  arc((9.50, 1.66), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 0.7pt)
  line((9.05, 1.66), (9.05, 1.12), stroke: 1pt)
  line((9.95, 1.66), (9.95, 1.12), stroke: 1pt)
  arc((9.50, 1.12), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  line((10.04, 2.00), (9.76, 2.12), mark: (end: ">", fill: black, scale: 0.45), stroke: 0.6pt)
  content((10.08, 2.00), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
