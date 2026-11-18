// Figura estratta da solidi.typ (riga 92) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.7cm, {
  import draw: *
  
  // Corpo e faccia posteriore (disegnati per primi, in secondo piano)
  arc((4.0, 2.5), start: -58deg, stop: 122deg, radius: 2.0, anchor: "origin", stroke: 1pt)
  line((-1.06, 1.70), (2.94, 4.20), stroke: 1pt)
  line((1.06, -1.70), (5.06, 0.80), stroke: 1pt)
  
  // Faccia frontale (con riempimento bianco per coprire perfettamente le giunzioni)
  circle((0, 0), radius: 2.0, fill: white, stroke: 1pt)
  circle((0, 0), radius: 1.4, fill: white, stroke: 1pt)
  
  // Assi di simmetria (in primo piano)
  line((-2.5, 0), (2.5, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -2.5), (0, 2.5), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  
  // Quota D_i
  line((-1.4, 0), (-1.4, -3.2), stroke: 0.6pt)
  line((1.4, 0), (1.4, -3.2), stroke: 0.6pt)
  line((-1.4, -2.8), (1.4, -2.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0, -2.5), [$D_i$]) // Distanziato dalla linea a y=-2.8
  
  // Quota D_e
  line((-2.0, 0), (-2.0, -4.2), stroke: 0.6pt)
  line((2.0, 0), (2.0, -4.2), stroke: 0.6pt)
  line((-2.0, -3.8), (2.0, -3.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0, -3.5), [$D_e$]) // Distanziato dalla linea a y=-3.8
  
  // Quota s
  line((0.50, 0.50), (0.99, 0.99), mark: (end: ">"), stroke: 0.6pt)
  line((1.90, 1.90), (1.41, 1.41), mark: (end: ">"), stroke: 0.6pt)
  content((1.4, 1.9), [$s$]) // Posizionato in modo da non toccare la freccia esterna
  
  // Quota L
  line((1.06, -1.8), (2.06, -3.20), stroke: 0.6pt)
  line((5.06, 0.80), (6.06, -0.70), stroke: 0.6pt)
  line((1.76, -2.75), (5.76, -0.25), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.5, -1.1), [$L$]) })
