// Figura estratta da hertz.typ (riga 512) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Griglia - Linee Verticali
  line((0.5, 0), (0.5, 6.5), stroke: 0.6pt)
  line((1.0, 0), (1.0, 6.5), stroke: 0.6pt)
  line((1.5, 0), (1.5, 6.5), stroke: 0.6pt)
  line((2.0, 0), (2.0, 6.5), stroke: 0.6pt)
  line((2.5, 0), (2.5, 6.5), stroke: 0.6pt)
  line((3.0, 0), (3.0, 6.5), stroke: 0.6pt)
  line((3.5, 0), (3.5, 6.5), stroke: 0.6pt)
  line((4.0, 0), (4.0, 6.5), stroke: 0.6pt)
  line((4.5, 0), (4.5, 6.5), stroke: 0.6pt)
  line((5.0, 0), (5.0, 6.5), stroke: 0.6pt)
  line((5.5, 0), (5.5, 6.5), stroke: 0.6pt)
  line((6.0, 0), (6.0, 6.5), stroke: 0.6pt)
  line((6.5, 0), (6.5, 6.5), stroke: 0.6pt)
  line((7.0, 0), (7.0, 6.5), stroke: 0.6pt)
  line((7.5, 0), (7.5, 6.5), stroke: 0.6pt)
  line((8.0, 0), (8.0, 6.5), stroke: 0.6pt)
  line((8.5, 0), (8.5, 6.5), stroke: 0.6pt)
  line((9.0, 0), (9.0, 6.5), stroke: 0.6pt)
  line((9.5, 0), (9.5, 6.5), stroke: 0.6pt)

  // Griglia - Linee Orizzontali
  line((0, 0.5), (10.0, 0.5), stroke: 0.6pt)
  line((0, 1.0), (10.0, 1.0), stroke: 0.6pt)
  line((0, 1.5), (10.0, 1.5), stroke: 0.6pt)
  line((0, 2.0), (10.0, 2.0), stroke: 0.6pt)
  line((0, 2.5), (10.0, 2.5), stroke: 0.6pt)
  line((0, 3.0), (10.0, 3.0), stroke: 0.6pt)
  line((0, 3.5), (10.0, 3.5), stroke: 0.6pt)
  line((0, 4.0), (10.0, 4.0), stroke: 0.6pt)
  line((0, 4.5), (10.0, 4.5), stroke: 0.6pt)
  line((0, 5.0), (10.0, 5.0), stroke: 0.6pt)
  line((0, 5.5), (10.0, 5.5), stroke: 0.6pt)
  line((0, 6.0), (10.0, 6.0), stroke: 0.6pt)

  // Bordo esterno grafico
  rect((0, 0), (10.0, 6.5), stroke: 1.5pt)

  // Curve a* e b* (Bezier per andamenti empirici complessi)
  bezier((0, 0), (4.5, 1.0), (2.0, 0.2), (3.5, 0.6), stroke: 1.5pt)
  bezier((4.5, 1.0), (9.1, 6.5), (6.5, 1.6), (8.2, 3.8), stroke: 1.5pt)

  bezier((0, 6.5), (4.5, 4.0), (1.5, 5.6), (3.0, 4.8), stroke: 1.5pt)
  bezier((4.5, 4.0), (9.65, 0), (6.5, 2.7), (8.2, 1.2), stroke: 1.5pt)

  // Sovrascritture rosse (linee di ricerca valori)
  // Il colore della freccia eredita automaticamente lo stroke in CeTZ
  line((4.5, 0), (4.5, 1.0), mark: (fill:red, end: ">"), stroke: rgb("#FF0000") + 1.5pt)
  line((4.5, 1.0), (4.5, 4.0), mark: (end: ">",fill:red), stroke: rgb("#FF0000") + 1.5pt)
  line((4.5, 4.0), (0, 4.0), mark: (end: ">",fill:red), stroke: rgb("#FF0000") + 1.5pt)
  line((4.5, 1.0), (10, 1.0), mark: (end: ">",fill:red), stroke: rgb("#FF0000") + 1.5pt)

  // Etichette rosse cerchiate

  content((-0.7, 6.5), [$b^*$])
  content((11, 6.5), [$a^*$])

  
  content((5.0, 7.2), [#text(size: 14pt)[Coefficienti $a^*$ e $b^*$ in funzione di $cos tau$]])

  // Valori Asse X (in basso)
  content((0.0, -0.3), [0])
  content((1.0, -0.3), [0.1])
  content((2.0, -0.3), [0.2])
  content((3.0, -0.3), [0.3])
  content((4.0, -0.3), [0.4])
  content((5.0, -0.3), [0.5])
  content((6.0, -0.3), [0.6])
  content((7.0, -0.3), [0.7])
  content((8.0, -0.3), [0.8])
  content((9.0, -0.3), [0.9])
  content((9.7, -0.3), [$cos tau$])

  // Valori Asse Y Sinistro (b*)
  content((-0.4, 0.0), [0.35])
  content((-0.4, 0.5), [0.40])
  content((-0.4, 1.0), [0.45])
  content((-0.4, 1.5), [0.50])
  content((-0.4, 2.0), [0.55])
  content((-0.4, 2.5), [0.60])
  content((-0.4, 3.0), [0.65])
  content((-0.4, 3.5), [0.70])
  content((-0.4, 4.0), [0.75])
  content((-0.4, 4.5), [0.80])
  content((-0.4, 5.0), [0.85])
  content((-0.4, 5.5), [0.90])
  content((-0.4, 6.0), [0.95])
  content((-0.4, 6.5), [1])

  // Valori Asse Y Destro (a*)
  content((10.4, 0.0), [1])
  content((10.4, 0.5), [1.2])
  content((10.4, 1.0), [1.4])
  content((10.4, 1.5), [1.6])
  content((10.4, 2.0), [1.8])
  content((10.4, 2.5), [2.0])
  content((10.4, 3.0), [2.2])
  content((10.4, 3.5), [2.4])
  content((10.4, 4.0), [2.6])
  content((10.4, 4.5), [2.8])
  content((10.4, 5.0), [3.0])
  content((10.4, 5.5), [3.2])
  content((10.4, 6.0), [3.4])
  content((10.4, 6.5), [3.6])
})
