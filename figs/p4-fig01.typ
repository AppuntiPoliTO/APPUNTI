// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // =========================================================
  // 1. CAMPANA ESTERNA (OUTER RACE) - RIEMPIMENTO SEZIONE
  // =========================================================
  // Sezione superiore
  line(
    (-2.40, 0.54), (-2.40, 1.18), (-2.05, 1.18), (-2.05, 1.28),
    (-1.82, 1.28), (-0.95, 2.15), (0.18, 2.15), (0.38, 2.08),
    (0.86, 2.08), (1.02, 2.15), (1.16, 2.00), (1.16, 1.46),
    (0.75, 1.72), (0.30, 1.84), (-0.28, 1.74), (-0.84, 1.46),
    (-1.32, 1.06), (-1.62, 0.56), (-1.70, 0.00), (-2.40, 0.00),
    close: true, fill: luma(230), stroke: none
  )
  // Sezione inferiore (simmetrica)
  line(
    (-2.40, -0.54), (-2.40, -1.18), (-2.05, -1.18), (-2.05, -1.28),
    (-1.82, -1.28), (-0.95, -2.15), (0.18, -2.15), (0.38, -2.08),
    (0.86, -2.08), (1.02, -2.15), (1.16, -2.00), (1.16, -1.46),
    (0.75, -1.72), (0.30, -1.84), (-0.28, -1.74), (-0.84, -1.46),
    (-1.32, -1.06), (-1.62, -0.56), (-1.70, 0.00), (-2.40, 0.00),
    close: true, fill: luma(230), stroke: none
  )

  // Cavita interna bianca (pulisce il fondo)
  line(
    (-1.70, 0.00), (-1.62, 0.56), (-1.32, 1.06), (-0.84, 1.46),
    (-0.28, 1.74), (0.30, 1.84), (0.75, 1.72), (1.16, 1.46),
    (1.16, -1.46), (0.75, -1.72), (0.30, -1.84), (-0.28, -1.74),
    (-0.84, -1.46), (-1.32, -1.06), (-1.62, -0.56),
    close: true, fill: white, stroke: none
  )

  // Linee di vista interna della cavita (piste non sezionate sullo sfondo)
  bezier((-1.32, -1.06), (-1.32, 1.06), (-1.04, -0.52), (-1.04, 0.52), stroke: 0.7pt)
  bezier((-1.14, -1.22), (-1.14, 1.22), (-0.86, -0.60), (-0.86, 0.60), stroke: (paint: luma(120), thickness: 0.5pt))

  // =========================================================
  // 2. GABBIA SFERICA (CAGE) - CENTRATA IN O, INCLINATA DI alpha/2
  // =========================================================
  // Quadrante superiore sinistro (95 deg .. 122 deg)
  line(
    (-0.83, 1.32), (-0.52, 1.48), (-0.14, 1.55),
    (-0.10, 1.18), (-0.38, 1.12), (-0.63, 1.00),
    close: true, fill: luma(206), stroke: 0.9pt
  )
  // Quadrante superiore destro (38 deg .. 61 deg)
  line(
    (0.75, 1.36), (1.02, 1.18), (1.23, 0.96),
    (0.93, 0.73), (0.76, 0.90), (0.57, 1.03),
    close: true, fill: luma(206), stroke: 0.9pt
  )
  // Quadrante inferiore sinistro (218 deg .. 241 deg)
  line(
    (-1.23, -0.96), (-1.02, -1.18), (-0.75, -1.36),
    (-0.57, -1.03), (-0.76, -0.90), (-0.93, -0.73),
    close: true, fill: luma(206), stroke: 0.9pt
  )
  // Quadrante inferiore destro (275 deg .. 302 deg)
  line(
    (0.14, -1.55), (0.52, -1.48), (0.83, -1.32),
    (0.63, -1.00), (0.38, -1.12), (0.10, -1.18),
    close: true, fill: luma(206), stroke: 0.9pt
  )

  // =========================================================
  // 3. MOZZO INTERNO (INNER RACE) - COASSIALE ALL'ALBERO (-24 deg)
  // =========================================================
  // Sezione superiore del mozzo
  line(
    (-0.44, 0.74), (-0.25, 1.15), (0.04, 1.08), (0.30, 1.00),
    (0.68, 0.84), (1.04, 0.52), (0.89, 0.15),
    close: true, fill: luma(220), stroke: 0.95pt
  )
  // Sezione inferiore del mozzo (simmetrica rispetto a O)
  line(
    (-0.89, -0.15), (-1.04, -0.52), (-0.68, -0.84), (-0.30, -1.00),
    (-0.04, -1.08), (0.25, -1.15), (0.44, -0.74),
    close: true, fill: luma(220), stroke: 0.95pt
  )

  // =========================================================
  // 4. ALBERO INCLINATO (-24 deg)
  // =========================================================
  // Parte sezionata (interna al mozzo)
  line((-0.67, 0.85), (1.18, 0.02), (0.78, -0.89), (-1.07, -0.07), close: true, fill: luma(242), stroke: none)
  // Parte in vista (esterna)
  line((1.18, 0.02), (3.03, -0.80), (2.63, -1.72), (0.78, -0.89), close: true, fill: white, stroke: none)
  // Contorni albero
  line((-0.67, 0.85), (3.03, -0.80), stroke: 1.1pt)
  line((-1.07, -0.07), (2.63, -1.72), stroke: 1.1pt)
  line((-0.67, 0.85), (-1.07, -0.07), stroke: 1.1pt)
  // Accoppiamento scanalato albero-mozzo (linee interne)
  line((-0.44, 0.74), (0.89, 0.15), stroke: 0.75pt)
  line((-0.89, -0.15), (0.44, -0.74), stroke: 0.75pt)
  // Linea di transizione sezione/vista
  bezier((1.18, 0.02), (0.78, -0.89), (1.06, -0.32), (0.90, -0.58), stroke: (dash: "dashed", thickness: 0.55pt))
  // Taglio di interruzione destro dell'albero
  line((3.03, -0.80), (2.86, -1.20), (2.94, -1.26), (2.76, -1.32), (2.63, -1.72), stroke: 0.7pt)

  // Anelli elastici di arresto (Seeger) in cava sull'albero
  line((0.65, 0.17), (0.78, 0.11), (0.86, 0.29), (0.73, 0.35), close: true, fill: luma(50), stroke: 0.7pt)
  line((0.22, -0.78), (0.35, -0.84), (0.43, -0.66), (0.30, -0.60), close: true, fill: luma(50), stroke: 0.7pt)

  // =========================================================
  // 5. CONTORNI DEFINITIVI DELLA CAMPANA E PISTE SFERICHE
  // =========================================================
  // Profilo esterno superiore e inferiore
  line(
    (-2.40, 0.54), (-2.40, 1.18), (-2.05, 1.18), (-2.05, 1.28),
    (-1.82, 1.28), (-0.95, 2.15), (0.18, 2.15), (0.38, 2.08),
    (0.86, 2.08), (1.02, 2.15), (1.16, 2.00), (1.16, 1.18),
    stroke: 1.15pt
  )
  line(
    (-2.40, -0.54), (-2.40, -1.18), (-2.05, -1.18), (-2.05, -1.28),
    (-1.82, -1.28), (-0.95, -2.15), (0.18, -2.15), (0.38, -2.08),
    (0.86, -2.08), (1.02, -2.15), (1.16, -2.00), (1.16, -1.18),
    stroke: 1.15pt
  )
  // Spallamento verticale sinistro
  line((-2.05, 1.18), (-2.05, -1.18), stroke: 0.8pt)
  line((-2.40, 0.54), (-2.40, -0.54), stroke: 0.65pt)

  // Contorno interno della campana (piste esterne raccordate)
  bezier((-1.70, 0.00), (-0.84, 1.46), (-1.68, 0.65), (-1.36, 1.14), stroke: 1.05pt)
  bezier((-0.84, 1.46), (0.30, 1.84), (-0.45, 1.68), (-0.05, 1.84), stroke: 1.05pt)
  bezier((0.30, 1.84), (1.16, 1.46), (0.68, 1.84), (0.98, 1.66), stroke: 1.05pt)

  bezier((-1.70, 0.00), (-0.84, -1.46), (-1.68, -0.65), (-1.36, -1.14), stroke: 1.05pt)
  bezier((-0.84, -1.46), (0.30, -1.84), (-0.45, -1.68), (-0.05, -1.84), stroke: 1.05pt)
  bezier((0.30, -1.84), (1.16, -1.46), (0.68, -1.84), (0.98, -1.66), stroke: 1.05pt)

  // =========================================================
  // 6. ALBERO SCANALATO SINISTRO (INPUT SHAFT)
  // =========================================================
  line((-4.50, 0.58), (-3.02, 0.58), (-2.90, 0.54), (-2.40, 0.54), stroke: 1.1pt)
  line((-4.50, -0.58), (-3.02, -0.58), (-2.90, -0.54), (-2.40, -0.54), stroke: 1.1pt)
  // Denti della scanalatura
  line((-4.50, 0.48), (-2.96, 0.48), stroke: 0.75pt)
  line((-4.50, 0.36), (-2.94, 0.36), stroke: 0.75pt)
  line((-4.50, 0.24), (-2.93, 0.24), stroke: 0.75pt)
  line((-4.50, 0.12), (-2.92, 0.12), stroke: 0.75pt)
  line((-4.50, -0.12), (-2.92, -0.12), stroke: 0.75pt)
  line((-4.50, -0.24), (-2.93, -0.24), stroke: 0.75pt)
  line((-4.50, -0.36), (-2.94, -0.36), stroke: 0.75pt)
  line((-4.50, -0.48), (-2.96, -0.48), stroke: 0.75pt)
  // Fine scanalatura e taglio sinistro
  line((-2.92, 0.54), (-2.92, -0.54), stroke: 0.7pt)
  line((-4.50, 0.58), (-4.50, -0.58), stroke: 0.8pt)

  // =========================================================
  // 7. SFERE (SUPERIORE E INFERIORE)
  // =========================================================
  circle((0.30, 1.42), radius: 0.42, fill: white, stroke: 1.15pt)
  circle((-0.30, -1.42), radius: 0.42, fill: white, stroke: 1.15pt)
  // Piccoli riflessi/centri sfera per chiarezza tecnica
  circle((0.30, 1.42), radius: 0.03, fill: black, stroke: none)
  circle((-0.30, -1.42), radius: 0.03, fill: black, stroke: none)

  // =========================================================
  // 8. ASSI, GEOMETRIA OMOCINETICA E QUOTE
  // =========================================================
  // Asse orizzontale campana
  line((-4.75, 0.00), (4.35, 0.00), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  // Asse inclinato albero (-24 deg)
  line((-1.15, 0.51), (3.95, -1.76), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  // Piano omocinetico delle sfere (inclinato di alpha/2 = 12 deg)
  line((-0.44, -2.06), (0.44, 2.06), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Raggi di curvatura uguali dal centro sfera superiore ai centri A e B
  line((0.30, 1.42), (-0.26, 0.11), stroke: 0.55pt)
  line((0.30, 1.42), (0.28, 0.00), stroke: 0.55pt)

  // Punti caratteristici A (pista interna), O (centro giunto), B (pista esterna)
  circle((-0.26, 0.11), radius: 0.048, fill: black, stroke: none)
  circle((0.00, 0.00), radius: 0.048, fill: black, stroke: none)
  circle((0.28, 0.00), radius: 0.048, fill: black, stroke: none)

  // Linee di richiamo ed etichette A, B, O
  line((-0.26, 0.11), (2.35, 0.36), stroke: 0.5pt)
  circle((2.55, 0.36), radius: 0.21, fill: white, stroke: 0.65pt)
  content((2.55, 0.36), text(size: 8pt)[A], anchor: "center")

  line((0.28, 0.00), (2.95, -0.18), stroke: 0.5pt)
  circle((3.15, -0.18), radius: 0.21, fill: white, stroke: 0.65pt)
  content((3.15, -0.18), text(size: 8pt)[B], anchor: "center")

  line((0.00, 0.00), (-1.42, -2.36), (-1.82, -2.36), stroke: 0.5pt)
  content((-1.62, -2.30), text(size: 8.5pt)[*O*], anchor: "south")

  // Quota angolo di lavoro alpha
  arc((0.00, 0.00), start: -24deg, stop: 0deg, radius: 4.00, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.65pt)
  content((4.14, -0.84), text(size: 9pt)[$alpha$], anchor: "west")
})
