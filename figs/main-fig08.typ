// Figura estratta da main.typ (riga 611) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Riempimento e contorno della sezione a L
  line((0, 0), (-3, 0), (-3, 1), (-1.5, 1), (-1.5, 3), (0, 3), close: true, fill: rgb(195, 214, 238), stroke: 1.4pt)

  // Separazione interna tratteggiata tra A1 e A2
  line((-1.5, 1), (0, 1), stroke: (dash: "dashed", thickness: 1pt))

  // Assi cartesiani z e y
  line((0, 0), (-4.2, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((-4.2, -0.35), text(size: 7pt)[$z$])
  content((0.35, 4.1), text(size: 7pt)[$y$])

  // Etichette delle aree
  content((-1.5, 0.5), text(size: 7pt)[$A_1$])
  content((-0.75, 2.0), text(size: 7pt)[$A_2$])

  // Quote orizzontali superiori (15 e 15)
  line((-3, 3.1), (-3, 3.7), stroke: 0.5pt)
  line((-1.5, 3.1), (-1.5, 3.7), stroke: 0.5pt)
  line((-3, 3.5), (-1.5, 3.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-1.5, 3.5), (0, 3.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-2.25, 3.8), text(size: 7pt)[$15$])
  content((-0.75, 3.8), text(size: 7pt)[$15$])

  // Quota orizzontale inferiore (30)
  line((-3, -0.55), (0, -0.55), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-1.5, -0.3), text(size: 7pt)[$30$])

  // Quote verticali a sinistra (10 e 20)
  line((-3.1, 1), (-3.6, 1), stroke: 0.5pt)
  line((-3.1, 3), (-3.6, 3), stroke: 0.5pt)
  line((-3.4, 0), (-3.4, 1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((-3.4, 1), (-3.4, 3), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-3.75, 0.5), text(size: 7pt)[$10$])
  content((-3.75, 2.0), text(size: 7pt)[$20$])
})
