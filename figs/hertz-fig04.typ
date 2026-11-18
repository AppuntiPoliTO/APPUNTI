// Figura estratta da hertz.typ (riga 198) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *
   // Assi cartesiani
  line((0, 0), (-3.5, -1.75), mark: (end: ">"), stroke: 1pt)
  line((0, 0), (4, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -2), (0, 2), mark: (end: ">"), stroke: 1pt)
  content((0.6, -1.0), [$Z_2$])
  arc((0, -2.2), start: 0deg, stop: 180deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  // Bordo ellittico inferiore (sezione orizzontale, curvatura regolarizzata)
  bezier((-2.2, -2.2), (2.2, -2.2), (-2.2, -3.3), (2.2, -3.3), stroke: 1pt) // metà anteriore continua
  bezier((2.2, -2.2), (-2.2, -2.2), (2.2, -1.1), (-2.2, -1.1), stroke: (dash: "dashed", thickness: 1pt)) // metà posteriore tratteggiata
  
  // Linee di curvatura interne (tangenti esatte all'asse x in O, terminano esattamente sull'ellisse)
  bezier((0, 0), (-1.6, -2.8), (-1.0, -0.5), (-1.6, -1.7), stroke: (dash: "dashed", thickness: 1pt)) // anteriore
  bezier((0, 0), (1.2, -1.6), (0., 0), (1.2, -0.3), stroke: (dash: "dashed", thickness: 1pt)) // posteriore

  content((0.3, 2.0), [$z$])
})
