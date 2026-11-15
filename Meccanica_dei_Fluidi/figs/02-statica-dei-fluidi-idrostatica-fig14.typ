// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 1010) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  import draw: *
  
  // Contorno del volume di controllo
  line((2.8, 2.5), (2.8, 0), (3.2, 0), stroke: 1pt)
  bezier((3.2, 0), (4.5, 1.35), (3.9, 0), (3.9, 1.2), stroke: 1pt)
  bezier((4.5, 1.35), (5.8, 2.5), (5.1, 1.5), (5.8, 1.6), stroke: 1pt)
  line((5.8, 2.5), (2.8, 2.5), stroke: 1pt)
  
  // Forza di pressione Pi_2 sulla parete sinistra (orizzontale verso destra)
  line((2, 1.25), (2.8, 1.25), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((1.9, 1.65), text(c-forza)[$arrow(Pi)_2$])
  
  // Forza di pressione Pi_1 sul tetto (verticale verso il basso)
  line((3.5, 3.7), (3.5, 2.5), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((4.1, 3.1), text(c-forza)[$arrow(Pi)_1$])
  
  // Forza di pressione Pi_0 sulla parete curva (obliqua, puntata verso il flesso)
  line((5.4, 0.45), (4.5, 1.35), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((6.0, 0.7), text(c-forza)[$arrow(Pi)_0$])
  
  // Forza peso G (interna, verticale verso il basso)
  line((3.8, 1.8), (3.8, 0.8), mark: (end: "stealth", fill: c-forza), stroke: 1.2pt + c-forza)
  content((3.4, 1.3), text(c-forza)[$arrow(G)$])
})
