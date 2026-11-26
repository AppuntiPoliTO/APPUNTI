// Figura estratta da cuscinetti.typ (riga 1148) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  import draw: *

  // Gradini orizzontali di riferimento (continui sottili)
  line((0.00, 3.93), (0.44, 3.93), stroke: 0.5pt)
  line((0.44, 2.42), (2.36, 2.42), stroke: 0.5pt)
  line((2.36, 1.29), (5.04, 1.29), stroke: 0.5pt)
  line((5.04, 0.36), (6.89, 0.36), stroke: 0.5pt)

  // Linee verticali tratteggiate dei gradini
  line((0.44, 3.93), (0.44, 0.00), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.36, 2.42), (2.36, 0.00), stroke: (dash: "dashed", thickness: 0.5pt))
  line((5.04, 1.29), (5.04, 0.00), stroke: (dash: "dashed", thickness: 0.5pt))
  line((6.89, 0.42), (6.89, 0.06), stroke: 0.5pt)

  // Linea di richiamo "intervallo di lavoro utile"
  line((1.58, 3.53), (1.20, 2.22), stroke: 0.5pt)

  // Curva blu continua (raccordi di Bezier nei flessi + tratti rettilinei sui plateau)
  bezier((0.00, 3.95), (0.44, 3.25), (0.44, 3.95), (0.44, 3.65), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  bezier((0.44, 3.25), (1.25, 2.42), (0.44, 2.55), (0.75, 2.46), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  bezier((1.25, 2.42), (2.36, 1.90), (2.15, 2.35), (2.32, 2.25), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  bezier((2.36, 1.90), (3.15, 1.31), (2.40, 1.35), (2.65, 1.31), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  line((3.15, 1.31), (4.35, 1.29), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  bezier((4.35, 1.29), (4.98, 0.82), (4.78, 1.29), (4.90, 1.08), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  bezier((4.98, 0.82), (5.65, 0.36), (5.06, 0.56), (5.20, 0.38), stroke: (paint: blue.darken(20%), thickness: 1.5pt))
  line((5.65, 0.36), (6.89, 0.29), stroke: (paint: blue.darken(20%), thickness: 1.5pt))

  // Assi cartesiani principali
  line((0.00, 4.42), (0.00, 0.00), (7.38, 0.00), stroke: 1.2pt)

  // Freccia verticale a sinistra dell'asse P
  line((-0.29, 3.60), (-0.29, 4.40), mark: (end: ">"), stroke: 0.6pt)

  // Etichette (tutte con text(size: 7pt))
  content((-0.42, 3.98), text(size: 7pt)[P], anchor: "east")
  content((0.40, 4.22), text(size: 7pt)[$"P"_1$], anchor: "center")
  content((2.22, 2.75), text(size: 7pt)[$"P"_2$], anchor: "center")
  content((4.82, 1.62), text(size: 7pt)[$"P"_3$], anchor: "center")
  content((6.68, 0.68), text(size: 7pt)[$"P"_4$], anchor: "center")
  content((1.55, 3.70), text(size: 7pt)[intervallo di lavoro utile], anchor: "west")
})
