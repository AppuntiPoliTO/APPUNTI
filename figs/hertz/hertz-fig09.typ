// Figura estratta da hertz.typ (riga 470) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *

  // Curva tratteggiata (profilo di pressione) - Dietro il vettore
  bezier((-1.25, -2.165), (0.02, 2.85), (-1.25, -0.19), (-0.690, 1.904), stroke: (dash: "dashed", thickness: 1.5pt))
  bezier((0, 2.8), (1.25, 2.165), (0.55, 3.2), (1, 3.1), stroke: (dash: "dashed", thickness: 1.5pt))

  // Ellisse principale (area di contatto) - 4 tratti continui
  bezier((-1.25, -2.165), (1.3, 0), (-0.532, -2.165), (0.610, -1.196), stroke: 1.5pt)
  bezier((1.3, 0), (1.25, 2.165), (1.990, 1.196), (1.968, 2.165), stroke: 1.5pt)
  bezier((1.25, 2.165), (-1.3, 0), (0.532, 2.165), (-0.610, 1.196), stroke: 1.5pt)
  bezier((-1.3, 0), (-1.25, -2.165), (-1.990, -1.196), (-1.968, -2.165), stroke: 1.5pt)

  // Assi di riferimento
  line((-2.3, 0), (3.2, 0), mark: (end: ">"), stroke: 1pt)
  line((1.6, 2.771), (-2.0, -3.503), mark: (end: ">"), stroke: 1pt)

  // Vettore p_max
  line((0, 2.8), (0, 0), mark: (end: ">", scale: 1.5), stroke: 3pt)

  // Linee di quota e riferimenti
  line((-1.25, -2.165), (1.5, -2.165), stroke: 0.6pt)
  line((2.2, 0), (1.15, -2.165), mark: (start: ">", end: ">"), stroke: 0.6pt)
  
  line((-1.3, 0), (-2.9, -2.8), stroke: 0.6pt)
  line((-2.8, -2.6), (-1.5, -2.6), mark: (start: ">", end: ">"), stroke: 0.6pt)

  // Etichette
  content((3.2, 0.3), [$y$], anchor: "south-east")
  content((-1.5, -3.1), [$x$], anchor: "north-west")
  content((-0.3, 1.6), [$p_"max"$], anchor: "east")
  content((1.95, -1.0), [$a$], anchor: "west")
  content((-2.1, -2.5), [$b$], anchor: "south")
})
