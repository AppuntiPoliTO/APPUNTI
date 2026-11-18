// Figura estratta da fatica.typ (riga 1473) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let circ = sym.degree

#canvas(length: 1.5cm, {
  import draw: *

  // ==========================================
  // GRIGLIA E INTESTAZIONI DEI PANNELLI
  // ==========================================
  // Divisori verticali tra le 3 colonne
  line((3.80, 0.10), (3.80, 8.10), stroke: (dash: "dashed", thickness: 0.7pt))
  line((7.60, 0.10), (7.60, 8.10), stroke: (dash: "dashed", thickness: 0.7pt))
  // Divisore orizzontale tra Statico (sopra) e Fatica (sotto)
  line((0.10, 3.85), (11.30, 3.85), stroke: (dash: "dashed", thickness: 0.6pt))

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

  // Frecce F
  line((1.90, 6.62), (1.90, 7.12), mark: (end: ">"), stroke: 0.9pt)
  content((2.02, 6.92), text(size: 7pt)[$F$], anchor: "west")

  line((1.90, 4.78), (1.90, 4.28), mark: (end: ">"), stroke: 0.9pt)
  content((2.02, 4.48), text(size: 7pt)[$F$], anchor: "west")

  // Metà superiore provino con strizione
  circle((1.90, 6.62), radius: (0.45, 0.11), stroke: 1pt)
  line((1.45, 6.62), (1.45, 6.20), stroke: 1pt)
  line((2.35, 6.62), (2.35, 6.20), stroke: 1pt)
  // Collo di strizione superiore
  bezier((1.45, 6.20), (1.62, 5.86), (1.45, 6.02), (1.58, 5.95), stroke: 1pt)
  bezier((2.35, 6.20), (2.18, 5.62), (2.35, 5.95), (2.22, 5.76), stroke: 1pt)
  // Cono/labbro a 45° superiore
  line((1.62, 5.86), (2.18, 5.62), stroke: 1pt)
  bezier((1.62, 5.86), (2.18, 5.62), (1.80, 5.82), (2.02, 5.75), stroke: (dash: "dashed", thickness: 0.7pt))

  // Metà inferiore provino con strizione ("coppa e cono" / 45°)
  line((1.62, 5.52), (1.90, 5.44), (2.18, 5.28), (1.90, 5.34), close: true, fill: black.transparentize(70%), stroke: none)
  line((1.62, 5.52), (2.18, 5.28), stroke: 1pt)
  bezier((1.62, 5.52), (2.18, 5.28), (1.80, 5.48), (2.02, 5.40), stroke: 0.8pt)
  bezier((1.62, 5.52), (2.18, 5.28), (1.78, 5.36), (2.00, 5.28), stroke: 0.8pt)
  // Collo di strizione inferiore
  bezier((1.62, 5.52), (1.45, 5.12), (1.58, 5.36), (1.45, 5.28), stroke: 1pt)
  bezier((2.18, 5.28), (2.35, 5.12), (2.22, 5.20), (2.35, 5.20), stroke: 1pt)
  line((1.45, 5.12), (1.45, 4.78), stroke: 1pt)
  line((2.35, 5.12), (2.35, 4.78), stroke: 1pt)
  arc((1.90, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Indicazione Strizione e 45°
  line((1.20, 5.72), (1.56, 5.72), mark: (end: ">"), stroke: 0.6pt)
  content((1.16, 5.72), text(size: 7pt)[Strizione], anchor: "east")
  content((2.42, 5.45), text(size: 7pt)[$45^circ$ ($tau_"max"$)], anchor: "west")

  // Didascalia 1A
  content((1.90, 4.05), text(size: 7pt)[*Scorrimento a $45^circ$ (coppa-cono)*], anchor: "center")


  // --- 1B. Caso a Fatica (in basso) ---
  content((0.20, 3.55), text(size: 7pt)[*Caso a Fatica* ($F'(t)$)], anchor: "west")

  // Frecce F'(t)
  line((1.90, 2.92), (1.90, 3.42), mark: (end: ">"), stroke: 0.9pt)
  content((2.02, 3.22), text(size: 7pt)[$F'(t)$], anchor: "west")

  line((1.90, 1.15), (1.90, 0.65), mark: (end: ">"), stroke: 0.9pt)
  content((2.02, 0.85), text(size: 7pt)[$F'(t)$], anchor: "west")

  // Metà superiore provino (nessuna strizione, taglio a 90°)
  circle((1.90, 2.92), radius: (0.45, 0.11), stroke: 1pt)
  line((1.45, 2.92), (1.45, 2.22), stroke: 1pt)
  line((2.35, 2.92), (2.35, 2.22), stroke: 1pt)
  arc((1.90, 2.22), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  arc((1.90, 2.22), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // Metà inferiore provino (superficie piana a 90° con linee di spiaggia e zona di schianto)
  circle((1.90, 1.85), radius: (0.45, 0.11), fill: black.transparentize(82%), stroke: 1pt)
  // Zona di rottura finale di schianto (più scura)
  line((1.46, 1.85), (1.65, 1.94), (2.15, 1.76), (1.75, 1.74), close: true, fill: black.transparentize(45%), stroke: none)
  line((1.55, 1.88), (2.20, 1.80), stroke: 0.6pt)
  line((1.65, 1.92), (2.28, 1.84), stroke: 0.6pt)
  line((1.45, 1.85), (1.45, 1.15), stroke: 1pt)
  line((2.35, 1.85), (2.35, 1.15), stroke: 1pt)
  arc((1.90, 1.15), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Indicazioni 90° e assenza di strizione
  content((2.45, 2.02), text(size: 7pt)[$90^circ$ ($sigma_"max"$)], anchor: "west")
  content((1.38, 2.02), text(size: 7pt)[No strizione], anchor: "east")

  // Didascalia 1B
  content((1.90, 0.35), text(size: 7pt)[*Decoesione netta a $90^circ$ (fragile)*], anchor: "center")


  // ==========================================
  // PANNELLO 2: TORSIONE SEZIONE LISCIA (x_c = 5.70)
  // ==========================================

  // --- 2A. Caso Statico (in alto) ---
  content((4.00, 7.25), text(size: 7pt)[*Caso Statico* ($M_t$ cost.)], anchor: "west")

  // Asse tratteggiato e frecce di torsione
  line((5.70, 7.10), (5.70, 4.35), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((5.70, 6.88), start: 100deg, stop: 390deg, radius: (0.32, 0.09), anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  arc((5.70, 4.52), start: 0deg, stop: 220deg, radius: (0.32, 0.09), anchor: "origin", mark: (start: ">"), stroke: 0.8pt)

  // Metà superiore provino
  circle((5.70, 6.62), radius: (0.45, 0.11), stroke: 1pt)
  line((5.25, 6.62), (5.25, 5.88), stroke: 1pt)
  line((6.15, 6.62), (6.15, 5.88), stroke: 1pt)
  arc((5.70, 5.88), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  arc((5.70, 5.88), start: 0deg, stop: 180deg, radius: (0.45, 0.11), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))

  // Metà inferiore provino (recisione piana a 90° con tracce plastiche circolari)
  circle((5.70, 5.48), radius: (0.45, 0.11), fill: black.transparentize(82%), stroke: 1pt)
  circle((5.70, 5.48), radius: (0.28, 0.07), stroke: 0.5pt)
  circle((5.70, 5.48), radius: (0.10, 0.03), fill: black, stroke: 0.5pt)
  line((5.25, 5.48), (5.25, 4.78), stroke: 1pt)
  line((6.15, 5.48), (6.15, 4.78), stroke: 1pt)
  arc((5.70, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  content((6.25, 5.68), text(size: 7pt)[$90^circ$ ($tau_"max"$)], anchor: "west")

  // Didascalia 2A
  content((5.70, 4.05), text(size: 7pt)[*Recisione piana netta a $90^circ$*], anchor: "center")


  // --- 2B. Caso a Fatica (in basso) - MIGLIORATO ("BECCO DI FLAUTO" / "X") ---
  content((4.00, 3.55), text(size: 7pt)[*Caso a Fatica* ($M_t (t)$)], anchor: "west")

  // Asse tratteggiato e frecce di torsione alternata (doppia punta)
  line((5.70, 3.42), (5.70, 0.65), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((5.70, 3.20), start: 110deg, stop: 420deg, radius: (0.32, 0.09), anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  arc((5.70, 0.85), start: 140deg, stop: 430deg, radius: (0.32, 0.09), anchor: "origin", mark: (end: ">"), stroke: 0.8pt)

  // --- Troncone Superiore (mostra il lembo a 45° e l'incrocio a "X") ---
  circle((5.70, 2.95), radius: (0.45, 0.11), stroke: 1pt)
  // Parete sinistra (corta, fino all'innesco dell'elica a y = 2.52)
  line((5.25, 2.95), (5.25, 2.52), stroke: 1pt)
  // Parete destra (lunga, scende fino alla punta del becco di flauto a y = 1.82)
  line((6.15, 2.95), (6.15, 1.82), stroke: 1pt)
  // Taglio elicoidale frontale a -45° (da alto-sx a basso-dx)
  bezier((5.25, 2.52), (6.15, 1.82), (5.50, 2.38), (5.92, 1.95), stroke: 1.2pt)
  // Bordo posteriore dell'elica (tratteggiato dietro il cilindro)
  bezier((5.25, 2.52), (6.15, 1.82), (5.55, 2.15), (5.90, 1.85), stroke: (dash: "dashed", thickness: 0.7pt))
  // Ramo coniugato a +45° sulla superficie cilindrica (forma la ramificazione a "X")
  bezier((5.38, 1.98), (6.08, 2.52), (5.58, 2.12), (5.88, 2.38), stroke: (dash: "densely-dotted", thickness: 1.2pt))

  // --- Troncone Inferiore (separato sotto, mostra la superficie a "becco di flauto") ---
  // Superficie elicoidale inclinata a 45° (campita in grigio per dare tridimensionalità)
  line((5.25, 2.12), (5.65, 1.95), (6.15, 1.42), (5.65, 1.68), close: true, fill: black.transparentize(72%), stroke: none)
  // Bordo anteriore del taglio a 45°
  bezier((5.25, 2.12), (6.15, 1.42), (5.50, 1.90), (5.92, 1.52), stroke: 1.1pt)
  // Bordo posteriore della sezione a becco di flauto (curva ad arco che chiude il becco)
  bezier((5.25, 2.12), (6.15, 1.42), (5.65, 2.02), (6.00, 1.68), stroke: 1pt)
  // Striature di propagazione sulla faccia inclinata a 45°
  line((5.42, 1.98), (5.62, 2.00), stroke: 0.5pt)
  line((5.58, 1.84), (5.80, 1.86), stroke: 0.5pt)
  line((5.76, 1.70), (5.96, 1.72), stroke: 0.5pt)
  // Pareti verticali e base del troncone inferiore
  line((5.25, 2.12), (5.25, 1.15), stroke: 1pt)
  line((6.15, 1.42), (6.15, 1.15), stroke: 1pt)
  arc((5.70, 1.15), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  // Richiami esplicativi chiari per "X" e "Becco di flauto a 45°"
  line((4.95, 2.35), (5.62, 2.22), mark: (end: ">"), stroke: 0.6pt)
  content((4.92, 2.38), text(size: 7pt)[Cricca a "X"], anchor: "east")
  content((4.92, 2.12), text(size: 7pt)[($plus.minus 45^circ$)], anchor: "east")

  line((6.42, 1.75), (5.88, 1.75), mark: (end: ">"), stroke: 0.6pt)
  content((6.45, 1.85), text(size: 7pt)[Superficie a $45^circ$], anchor: "west")
  content((6.45, 1.60), text(size: 7pt)[($sigma_"max" = tau_"max"$)], anchor: "west")

  // Didascalia 2B
  content((5.70, 0.35), text(size: 7pt)[*Elica a $45^circ$ ("becco di flauto" / "X")*], anchor: "center")


  // ==========================================
  // PANNELLO 3: TORSIONE CON INTAGLIO (x_c = 9.50)
  // ==========================================

  // --- 3A. Caso Statico (in alto) ---
  content((7.80, 7.25), text(size: 7pt)[*Caso Statico* ($M_t$ cost.)], anchor: "west")

  // Asse tratteggiato e frecce di torsione
  line((9.50, 7.10), (9.50, 4.35), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((9.50, 6.88), start: 140deg, stop: 440deg, radius: (0.32, 0.09), anchor: "origin", mark: (end: ">"), stroke: 0.8pt)
  arc((9.50, 4.52), start: 30deg, stop: 250deg, radius: (0.32, 0.09), anchor: "origin", mark: (end: ">"), stroke: 0.8pt)

  // Metà superiore provino intagliato
  circle((9.50, 6.62), radius: (0.45, 0.11), stroke: 1pt)
  line((9.05, 6.62), (9.05, 6.02), stroke: 1pt)
  line((9.95, 6.62), (9.95, 6.02), stroke: 1pt)
  arc((9.50, 6.02), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  // Gola dell'intaglio superiore
  bezier((9.05, 6.02), (9.20, 5.86), (9.07, 5.93), (9.15, 5.88), stroke: 1pt)
  bezier((9.95, 6.02), (9.80, 5.86), (9.93, 5.93), (9.85, 5.88), stroke: 1pt)
  arc((9.50, 5.86), start: 180deg, stop: 360deg, radius: (0.30, 0.08), anchor: "origin", stroke: 1pt)

  // Metà inferiore provino intagliato (rottura piana nella gola)
  circle((9.50, 5.42), radius: (0.45, 0.11), stroke: 1pt)
  line((9.20, 5.42), (9.20, 5.54), stroke: 1pt)
  line((9.80, 5.42), (9.80, 5.54), stroke: 1pt)
  arc((9.50, 5.42), start: 180deg, stop: 360deg, radius: (0.30, 0.08), anchor: "origin", stroke: 0.8pt)
  circle((9.50, 5.54), radius: (0.30, 0.08), fill: black.transparentize(55%), stroke: 1pt)
  line((9.05, 5.42), (9.05, 4.78), stroke: 1pt)
  line((9.95, 5.42), (9.95, 4.78), stroke: 1pt)
  arc((9.50, 4.78), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  content((10.02, 5.65), text(size: 7pt)[Gola a $90^circ$], anchor: "west")

  // Didascalia 3A
  content((9.50, 4.05), text(size: 7pt)[*Recisione piana a $90^circ$ nella gola*], anchor: "center")


  // --- 3B. Caso a Fatica (in basso) ---
  content((7.80, 3.55), text(size: 7pt)[*Caso a Fatica* ($M_t (t)$)], anchor: "west")

  // Asse tratteggiato e frecce di torsione alternata
  line((9.50, 3.42), (9.50, 0.65), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((9.50, 3.20), start: 100deg, stop: 440deg, radius: (0.32, 0.09), anchor: "origin", mark: (start: ">"), stroke: 0.8pt)
  arc((9.50, 0.85), start: 100deg, stop: 440deg, radius: (0.32, 0.09), anchor: "origin", mark: ( end: ">"), stroke: 0.8pt)

  // Metà superiore provino intagliato a fatica
  circle((9.50, 2.92), radius: (0.45, 0.11), stroke: 1pt)
  line((9.05, 2.92), (9.05, 2.32), stroke: 1pt)
  line((9.95, 2.92), (9.95, 2.32), stroke: 1pt)
  arc((9.50, 2.32), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)
  // Gola intaglio con creste multiple a denti di sega (micro-piani a 45° confinati nell'intaglio)
  bezier((9.05, 2.32), (9.20, 2.15), (9.07, 2.22), (9.15, 2.17), stroke: 1pt)
  bezier((9.95, 2.32), (9.80, 2.15), (9.93, 2.22), (9.85, 2.17), stroke: 1pt)
  line((9.20, 2.15), (9.32, 2.07), (9.45, 2.16), (9.58, 2.07), (9.70, 2.16), (9.80, 2.12), stroke: 0.9pt)

  // Metà inferiore provino intagliato a fatica
  circle((9.50, 1.72), radius: (0.45, 0.11), stroke: 1pt)
  line((9.20, 1.72), (9.20, 1.84), stroke: 1pt)
  line((9.80, 1.72), (9.80, 1.84), stroke: 1pt)
  arc((9.50, 1.72), start: 180deg, stop: 360deg, radius: (0.30, 0.08), anchor: "origin", stroke: 0.8pt)
  // Superficie di rottura nella gola con cricche radiali/lamellari ("aspetto a raggiera")
  circle((9.50, 1.84), radius: (0.30, 0.08), fill: black.transparentize(80%), stroke: 1pt)
  line((9.20, 1.84), (9.50, 1.92), (9.55, 1.76), (9.30, 1.78), close: true, fill: black.transparentize(40%), stroke: none)
  line((9.50, 1.84), (9.75, 1.88), stroke: 0.6pt)
  line((9.50, 1.84), (9.78, 1.82), stroke: 0.6pt)
  line((9.50, 1.84), (9.68, 1.78), stroke: 0.6pt)
  line((9.05, 1.72), (9.05, 1.15), stroke: 1pt)
  line((9.95, 1.72), (9.95, 1.15), stroke: 1pt)
  arc((9.50, 1.15), start: 180deg, stop: 360deg, radius: (0.45, 0.11), anchor: "origin", stroke: 1pt)

  content((10.02, 1.95), text(size: 7pt)[Creste a $45^circ$], anchor: "west")

  // Didascalia 3B
  content((9.50, 0.35), text(size: 7pt)[*Frattura frastagliata nella gola*], anchor: "center")
})
