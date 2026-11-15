// Figura estratta da capitoli/03-cinematica-dei-fluidi-e-bilancio-di-massa.typ (riga 28) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.68cm, {
  import draw: *

  // Assi cartesiani
  line((1, 1), (11, 1), mark: (end: "stealth", fill: c-geo), stroke: 0.9pt + c-geo)
  line((1, 1), (1, 5), mark: (end: "stealth", fill: c-geo), stroke: 0.9pt + c-geo)

  // Etichette degli assi
  content((0.4, 4.5), [$n/r^3$])
  content((11, 0.5), [$r$])
  // Ticks ed etichette asse X
  line((2.5, 0.9), (2.5, 1.1), stroke: 0.6pt)
  content((2.5, 0.4), [$10^{-10}$])

  line((4.5, 0.9), (4.5, 1.1), stroke: 0.6pt)
  content((4.5, 0.4), [$10^{-3}$])

  line((7.0, 0.9), (7.0, 1.1), stroke: 0.6pt)
  content((7.0, 0.4), [$10^{-6}$])

  line((9.5, 0.9), (9.5, 1.1), stroke: 0.6pt)
  content((9.5, 0.4), [$10^{-4}$])

  // Testi in basso
  content((6.0, -0.3), [$1 mu "m"$])
  content((6.0, -1.0), [particella fluida])

  // Linee di riferimento verticali per le scale mesoscopiche
  line((4.0, 1.0), (4.0, 4.0), stroke: (paint: c-norm, dash: "dashed", thickness: 0.6pt))
  content((3.8, 4.3), text(c-norm)[$l$])

  line((4.8, 1.0), (4.8, 4.0), stroke: (paint: c-norm, dash: "dashed", thickness: 0.6pt))
  content((5.2, 4.3), text(c-norm)[$d$])

  // Curva di densità: fluttuazioni microscopiche seguite da plateau macroscopico
  bezier((1.2, 1.0), (1.8, 4.5), (1.5, 1.0), (1.6, 4.5), stroke: 1pt)
  bezier((1.8, 4.5), (2.2, 2.5), (2.0, 4.5), (2.0, 2.5), stroke: 1pt)
  bezier((2.2, 2.5), (2.8, 3.6), (2.5, 2.5), (2.5, 3.6), stroke: 1pt)
  bezier((2.8, 3.6), (3.3, 2.5), (3.0, 3.6), (3.0, 2.5), stroke: 1pt)
  bezier((3.3, 2.5), (3.8, 3.3), (3.5, 2.5), (3.5, 3.3), stroke: 1pt)
  bezier((3.8, 3.3), (4.2, 2.8), (4.0, 3.3), (4.0, 2.8), stroke: 1pt)
  bezier((4.2, 2.8), (4.5, 3.1), (4.35, 2.8), (4.35, 3.1), stroke: 1pt)
  bezier((4.5, 3.1), (4.8, 2.95), (4.65, 3.1), (4.65, 2.95), stroke: 1pt)
  bezier((4.8, 2.95), (5.1, 3.05), (4.95, 2.95), (4.95, 3.05), stroke: 1pt)
  bezier((5.1, 3.05), (5.5, 3.0), (5.3, 3.05), (5.3, 3.0), stroke: 1pt)
  line((5.5, 3.0), (10.5, 3.0), stroke: 1pt)
  
  // Punto finale
  circle((10.5, 3.0), radius: 0.05, fill: c-geo, stroke: none)
})
