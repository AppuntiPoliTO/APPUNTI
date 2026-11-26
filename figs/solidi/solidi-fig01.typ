// Figura estratta da solidi.typ (riga 29) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *
  
  // Faccia frontale
  circle((0, 0), radius: 2.2, stroke: 1pt)
  circle((0, 0), radius: 1.3, stroke: 1pt)
  
  // Faccia posteriore e corpo del cilindro
  arc((4.0, 3.0), start: -53.13deg, stop: 126.87deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  line((-1.32, 1.76), (2.68, 4.76), stroke: 1pt)
  line((1.32, -1.76), (5.32, 1.24), stroke: 1pt)
  
  // Assi di riferimento centrali
  line((-2.8, 0), (2.8, 0), stroke: (dash: "dash-dotted", thickness: 0.8pt))
  line((0, -2.8), (0, 2.8), stroke: (dash: "dash-dotted", thickness: 0.8pt))
  
  // Linea radiale e arco per l'angolo theta
  line((0, 0), (-1.43, 1.00), stroke: 0.8pt)
  arc((0, 0), start: 0deg, stop: 145deg, radius: 0.5, mark: (end: ">"), anchor: "origin", stroke: 0.8pt)
  content((0.6, 0.4), [$theta$])
  
  // Sistema di coordinate locale 1 (destra, raggio 1.75)
  circle((1.75, 0), radius: 0.08, fill: black, stroke: none)
  line((1.75, 0), (2.55, 0), mark: (end: ">"), stroke: 1pt)
  line((1.75, 0), (1.75, 0.8), mark: (end: ">"), stroke: 1pt)
  content((2.6, -0.3), [$r$])
  content((1.4, 0.6), [$c$])
  content((1.9, -0.3), [$z$])
  
  // Sistema di coordinate locale 2 (sinistra, raggio 1.75, angolo 145 deg)
  circle((-1.43, 1.00), radius: 0.08, fill: black, stroke: none)
  line((-1.43, 1.00), (-2.09, 1.46), mark: (end: ">"), stroke: 1pt)
  line((-1.43, 1.00), (-1.89, 0.34), mark: (end: ">"), stroke: 1pt)
  content((-2.3, 1.6), [$r$])
  content((-1.9, 0.1), [$c$])
  content((-1.1, 1.1), [$z$])
  
  
})
