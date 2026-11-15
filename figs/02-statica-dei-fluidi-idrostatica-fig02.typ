// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 95) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.3cm,{
  import draw: *
  
  // Patata
  catmull((0,0), (0.5, 1), (1.5,1.5), (2.5, 1), (3,0.5), (2.5, -0.5), (2,-1), (1, -0.5), close: true, fill: c-fluido, stroke: 1pt + c-geo)
  content((1.5, 0.2), [$cal(V)$])
  
  // Elemento di superficie e normale
  line((2.6,0.7), (2.8,0.8), (2.9,0.5), (2.7,0.4), close: true, fill: c-riemp, stroke: 1pt + c-geo)
  content((2.5, 1.2), [$S$])
  content((3.2, 0.4), [$dif Omega$])
  
  // Vettore gravità
  line((2.8,0.6), (3.6,0.9), mark: (end: "stealth", fill: c-norm), stroke: 1pt + c-norm)
  content((3.6,0.9), text(c-norm)[$hat(n)$], anchor: "west", padding: 0.1)
  
  line((1,-0.2), (1,-1), mark: (end: "stealth", fill: c-forza), stroke: (thickness: 1.1pt, paint: c-forza))
  content((1,-1), text(c-forza)[$arrow(g)$], anchor: "west", padding: 0.1)
})
