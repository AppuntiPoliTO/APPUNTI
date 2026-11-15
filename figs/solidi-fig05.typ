// Figura estratta da solidi.typ (riga 330) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  
  // Cerchio interno
  circle((0, 0), radius: 1.5, stroke: (paint: blue, thickness: 1.5pt))
  
  // Cerchio esterno
  circle((0, 0), radius: 2.5, stroke: (paint: red, thickness: 1.5pt, dash: "dashed"))
  
  // Frecce radiali uscenti
  line((1.5, 0), (2.5, 0), mark: (end: ">"), stroke: 1pt)
  line((1.061, 1.061), (1.768, 1.768), mark: (end: ">"), stroke: 1pt)
  line((0, 1.5), (0, 2.5), mark: (end: ">"), stroke: 1pt)
  line((-1.061, 1.061), (-1.768, 1.768), mark: (end: ">"), stroke: 1pt)
  line((-1.5, 0), (-2.5, 0), mark: (end: ">"), stroke: 1pt)
  line((-1.061, -1.061), (-1.768, -1.768), mark: (end: ">"), stroke: 1pt)
  line((0, -1.5), (0, -2.5), mark: (end: ">"), stroke: 1pt)
  line((1.061, -1.061), (1.768, -1.768), mark: (end: ">"), stroke: 1pt)
  
  // Etichette
  content((0.8, -0.2), [$l_i$])
  content((2.9, 1.1), [$l_f$])
})
