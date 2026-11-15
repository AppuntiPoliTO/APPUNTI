// Figura estratta da molle.typ (riga 922) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- PARTE SINISTRA: DIAGRAMMA DELLE TENSIONI ---
  // Contorno principale spesso
  line((1.0, 1.3), (0.0, 1.3), (0.0, -1.3), (-1.4, -1.3), stroke: 1.8pt)

  // Curva della tensione (arco di cerchio)
  arc((-3.345, 2.903), start: -65.17deg, stop: -20.25deg, radius: 4.631, anchor: "origin", stroke: 1pt)

  // Distribuzione lineare tratteggiata
  line((-1.1, -1.3), (1.1, 1.3), stroke: (dash: "dashed", thickness: 0.9pt))

  // Tratteggio orizzontale del diagramma
  line((0.0, 1.0), (0.86, 1.0), stroke: 0.8pt)
  line((0.0, 0.65), (0.68, 0.65), stroke: 0.8pt)
  line((0.0, 0.3), (0.47, 0.3), stroke: 0.8pt)
  line((0.0, -0.4), (-0.10, -0.4), stroke: 0.8pt)
  line((0.0, -0.7), (-0.42, -0.7), stroke: 0.8pt)
  line((0.0, -1.0), (-0.85, -1.0), stroke: 0.8pt)

  // Quota superiore f_{b,o}
  line((0.0, 1.45), (0.0, 1.95), stroke: 0.8pt)
  line((1.0, 1.45), (1.0, 1.95), stroke: 0.8pt)
  line((-0.05, 1.80), (1.05, 1.80), stroke: 0.8pt)
  line((-0.08, 1.72), (0.08, 1.88), stroke: 0.8pt)
  line((0.92, 1.72), (1.08, 1.88), stroke: 0.8pt)
  content((0.5, 1.88), [$f_("b,o")$], anchor: "south")

  // Quote inferiori f_b e f_{b,i}
  line((0.0, -1.45), (0.0, -2.55), stroke: 0.8pt)
  line((-1.1, -1.45), (-1.1, -2.05), stroke: 0.8pt)
  line((-1.4, -1.45), (-1.4, -2.55), stroke: 0.8pt)

  // Linea quota f_b
  line((-1.15, -1.90), (0.05, -1.90), stroke: 0.8pt)
  line((-1.18, -1.98), (-1.02, -1.82), stroke: 0.8pt)
  line((-0.08, -1.98), (0.08, -1.82), stroke: 0.8pt)
  content((-0.55, -1.86), [$f_"b"$], anchor: "south")

  // Linea quota f_{b,i}
  line((-1.45, -2.40), (0.05, -2.40), stroke: 0.8pt)
  line((-1.48, -2.48), (-1.32, -2.32), stroke: 0.8pt)
  line((-0.08, -2.48), (0.08, -2.32), stroke: 0.8pt)
  content((-0.70, -2.36), [$f_("b,i")$], anchor: "south")


  // --- ASSI DI COLLEGAMENTO (BARICENTRICO E NEUTRO) ---
  // Asse baricentrico (superiore, y = 0.0)
  line((-1.45, 0.0), (3.0, 0.0), stroke: (dash: "dash-dotted", thickness: 0.9pt))
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 23.0, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.9pt))

  // Asse neutro (inferiore, y = -0.30, piu marcato al centro)
  line((-0.25, -0.30), (3.35, -0.30), stroke: (dash: "dash-dotted", thickness: 1.4pt))
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 22.7, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.9pt))


  // --- PARTE DESTRA: CONCIO DI TRAVE CURVA ---
  // Estradosso e intradosso (archi spessi)
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 24.3, anchor: "origin", stroke: 2.2pt)
  arc((3.0, -23.0), start: 83.3deg, stop: 90.0deg, radius: 21.7, anchor: "origin", stroke: 2.2pt)

  // Sezione sinistra indeformata e deformata
  line((3.0, -1.3), (3.0, 1.3), stroke: (dash: "dashed", thickness: 0.9pt))
  line((2.15, -1.3), (4.36, 1.28), stroke: (dash: "dashed", thickness: 0.9pt))
  line((2.15, -1.3), (3.0, -1.3), stroke: (dash: "dashed", thickness: 0.9pt))

  // Sezione destra
  line((5.50, -1.60), (5.90, 1.80), stroke: (dash: "dashed", thickness: 0.9pt))

  // Quota superiore Delta l_o
  line((3.0, 1.40), (3.0, 2.35), stroke: 0.8pt)
  line((4.38, 1.85), (4.38, 2.35), stroke: 0.8pt)
  line((2.95, 2.20), (4.43, 2.20), stroke: 0.8pt)
  line((2.92, 2.12), (3.08, 2.28), stroke: 0.8pt)
  line((4.30, 2.12), (4.46, 2.28), stroke: 0.8pt)
  content((3.69, 2.25), [$Delta l_"o"$], anchor: "south")

  // Quota inferiore Delta l_i
  line((2.15, -1.45), (2.15, -2.05), stroke: 0.8pt)
  line((3.0, -1.45), (3.0, -2.05), stroke: 0.8pt)
  line((2.10, -1.90), (3.05, -1.90), stroke: 0.8pt)
  line((2.07, -1.98), (2.23, -1.82), stroke: 0.8pt)
  line((2.92, -1.98), (3.08, -1.82), stroke: 0.8pt)
  content((2.58, -1.85), [$Delta l_"i"$], anchor: "south")

  // Quota l_o
  line((4.25, 1.75), (3.05, 1.80), mark: (end: ">"), stroke: 0.7pt)
  line((4.75, 1.72), (5.84, 1.60), mark: (end: ">"), stroke: 0.7pt)
  content((4.52, 1.73), [$l_"o"$], anchor: "center")

  // Quota l_i
  line((4.05, -0.95), (3.05, -0.90), mark: (end: ">"), stroke: 0.7pt)
  line((4.55, -0.98), (5.52, -1.10), mark: (end: ">"), stroke: 0.7pt)
  content((4.32, -0.96), [$l_"i"$], anchor: "center")

  // Momenti flettenti M
  // Sinistra (orario)
  arc((2.65, -0.05), start: 130deg, stop: 245deg, radius: 0.42, anchor: "origin", mark: (start: ">"), stroke: 0.9pt)
  content((2.15, 0.30), [$M$], anchor: "east")

  // Destra (antiorario)
  arc((5.98, -0.15), start: -55deg, stop: 55deg, radius: 0.42, anchor: "origin", mark: (end: ">"), stroke: 0.9pt)
  content((6.45, -0.15), [$M$], anchor: "west")
})
