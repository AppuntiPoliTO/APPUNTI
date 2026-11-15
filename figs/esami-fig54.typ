// Figura estratta da esami.typ (riga 3726) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.65cm, {
  import draw: *

  // ==========================================
  // PANNELLO 1: SFORZO NORMALE (N)
  // ==========================================
  line((0, 0), (0, 2.4), (1.6, 2.4), (1.6, 0.8), stroke: 1pt)
  circle((0, 1.6), radius: 0.05, fill: white, stroke: 0.8pt)

  // N = +3.75 kN su AB e BC (a sinistra)
  rect((-0.38, 0), (0, 1.6), stroke: 0.6pt)
  rect((-0.38, 1.6), (0, 2.4), stroke: 0.6pt)
  line((-0.38, 0.4), (0, 0.4), stroke: 0.6pt)
  line((-0.38, 0.8), (0, 0.8), stroke: 0.6pt)
  line((-0.38, 1.2), (0, 1.2), stroke: 0.6pt)
  line((-0.38, 2.0), (0, 2.0), stroke: 0.6pt)

  // N = -6 kN su CD (sotto il traverso)
  rect((0, 2.05), (1.6, 2.4), stroke: 0.6pt)
  line((0.4, 2.05), (0.4, 2.4), stroke: 0.6pt)
  line((0.8, 2.05), (0.8, 2.4), stroke: 0.6pt)
  line((1.2, 2.05), (1.2, 2.4), stroke: 0.6pt)

  // N = +1.25 kN su DE (a destra)
  rect((1.6, 0.8), (1.88, 2.4), stroke: 0.6pt)
  line((1.6, 1.2), (1.88, 1.2), stroke: 0.6pt)
  line((1.6, 1.6), (1.88, 1.6), stroke: 0.6pt)
  line((1.6, 2.0), (1.88, 2.0), stroke: 0.6pt)

  // Etichette Pannello 1
  content((0.5, 3.0), text(size: 7pt)[*(N)*], anchor: "south")
  content((-0.42, 2.0), text(size: 7pt)[$3,75 "kN"$], anchor: "east")
  content((0, -0.15), text(size: 7pt)[$3,75 "kN"$], anchor: "north")
  content((0.8, 1.95), text(size: 7pt)[$-6 "kN"$], anchor: "north")
  content((1.75, 0.68), text(size: 7pt)[$1,25 "kN"$], anchor: "north")
  content((-0.19, 0.6), text(size: 7pt)[$+$], anchor: "center")
  content((-0.19, 1.8), text(size: 7pt)[$+$], anchor: "center")
  content((0.8, 2.22), text(size: 7pt)[$-$], anchor: "center")
  content((1.74, 1.5), text(size: 7pt)[$+$], anchor: "center")

  // ==========================================
  // PANNELLO 2: TAGLIO (T)
  // ==========================================
  line((4.2, 0), (4.2, 2.4), (5.8, 2.4), (5.8, 0.8), stroke: 1pt)
  circle((4.2, 1.6), radius: 0.05, fill: white, stroke: 0.8pt)

  // T su AB (da +3 kN in A a -3 kN in B) e su BC (da -3 kN in B a -6 kN in C)
  line((4.2, 0), (3.85, 0), (4.55, 1.6), (4.85, 2.4), (4.2, 2.4), stroke: 0.6pt)
  line((4.2, 1.6), (4.55, 1.6), stroke: 0.6pt)

  // T = -3.75 kN su CD
  rect((4.2, 2.08), (5.8, 2.4), stroke: 0.6pt)

  // T = +6 kN su DE
  rect((5.8, 0.8), (6.25, 2.4), stroke: 0.6pt)

  // Etichette Pannello 2
  content((4.7, 3.0), text(size: 7pt)[*(T)*], anchor: "south")
  content((4.1, -0.15), text(size: 7pt)[$3 "kN"$], anchor: "north")
  content((4.62, 1.55), text(size: 7pt)[$-3 "kN"$], anchor: "west")
  content((4.5, 2.52), text(size: 7pt)[$-6 "kN"$], anchor: "south")
  content((5.2, 1.98), text(size: 7pt)[$-3,75 "kN"$], anchor: "north")
  content((6.05, 0.68), text(size: 7pt)[$6 "kN"$], anchor: "north")
  content((4.08, 0.3), text(size: 7pt)[$+$], anchor: "center")
  content((4.38, 1.35), text(size: 7pt)[$-$], anchor: "center")
  content((4.42, 1.95), text(size: 7pt)[$-$], anchor: "center")
  content((5.0, 2.24), text(size: 7pt)[$-$], anchor: "center")
  content((6.02, 1.6), text(size: 7pt)[$+$], anchor: "center")

  // ==========================================
  // PANNELLO 3: MOMENTO FLETTENTE (M)
  // ==========================================
  line((8.4, 0), (8.4, 2.4), (10.0, 2.4), (10.0, 0.8), stroke: 1pt)
  circle((8.4, 1.6), radius: 0.05, fill: white, stroke: 0.8pt)

  // Parabola su AB (max 1.5 kNm in mezzeria) e su BC (fino a -4.5 kNm in C)
  bezier((8.4, 0), (8.4, 1.6), (8.68, 0.5), (8.68, 1.1), stroke: 0.6pt)
  bezier((8.4, 1.6), (7.95, 2.4), (8.28, 1.85), (8.12, 2.15), stroke: 0.6pt)
  line((7.95, 2.4), (8.4, 2.4), stroke: 0.6pt)

  // Trapezio su CD (da -4.5 kNm in C a -12 kNm in D)
  line((8.4, 2.4), (8.4, 2.75), (10.0, 3.15), (10.0, 2.4), stroke: 0.6pt)
  line((8.8, 2.4), (8.8, 2.85), stroke: 0.6pt)
  line((9.2, 2.4), (9.2, 2.95), stroke: 0.6pt)
  line((9.6, 2.4), (9.6, 3.05), stroke: 0.6pt)

  // Triangolo su DE (da 0 in E a -12 kNm in D)
  line((10.0, 0.8), (10.65, 2.4), (10.0, 2.4), stroke: 0.6pt)
  line((10.0, 1.2), (10.16, 1.2), stroke: 0.6pt)
  line((10.0, 1.6), (10.32, 1.6), stroke: 0.6pt)
  line((10.0, 2.0), (10.48, 2.0), stroke: 0.6pt)

  // Etichette Pannello 3
  content((8.9, 3.15), text(size: 7pt)[*(M)*], anchor: "south")
  content((8.65, 0.8), text(size: 7pt)[$1,5$], anchor: "west")
  content((7.9, 2.4), text(size: 7pt)[$-4,5$], anchor: "east")
  content((8.35, 2.82), text(size: 7pt)[$-4,5$], anchor: "south")
  content((10.0, 3.22), text(size: 7pt)[$-12$], anchor: "south")
  content((10.7, 2.45), text(size: 7pt)[$-12$], anchor: "west")
  content((9.35, 2.65), text(size: 7pt)[$-$], anchor: "center")
})
