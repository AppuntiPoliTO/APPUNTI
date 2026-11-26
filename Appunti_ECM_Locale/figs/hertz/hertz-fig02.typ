// Figura estratta da hertz.typ (riga 108) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

  // Assi cartesiani
  line((0, 0), (-3.5, -1.75), mark: (end: ">"), stroke: 1pt)
  line((0, 0), (4, 0), mark: (end: ">"), stroke: 1pt)
  line((0, 0), (0, 3.5), mark: (end: ">"), stroke: 1pt)

  arc((0, 2.2), start: 180deg, stop: 360deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  bezier((0, 0), (-1.6, 1.6), (-1.7, 0.6), stroke: (dash: "dashed", thickness: 1pt)) // anteriore
  bezier((0, 0), (1.6, 2.8), (1.0, 0.5), (1.6, 1.7), stroke: (dash: "dashed", thickness: 1pt)) // posteriore
  bezier((-2.2, 2.2), (2.2, 2.2), (-2.2, 1.1), (2.2, 1.1), stroke: 1pt) // metà anteriore continua
  bezier((2.2, 2.2), (-2.2, 2.2), (2.2, 3.3), (-2.2, 3.3), stroke: 1pt) // metà posteriore continua
  content((-1, 1.0), [$Z_1$])
  content((-3.3, -1.3), [$x$])
  content((3.8, -0.3), [$y$])
  content((0.3, 3.5), [$z$])
  content((0.3, -0.3), [$O$])
  
})
