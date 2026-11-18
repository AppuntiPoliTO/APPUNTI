// Figura estratta da ruote dentate.typ (riga 1344) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  // Rette orizzontali di riferimento
  
  line((-4.5, 0), (4.5, 0), stroke: (dash: "dash-dotted", thickness: 0.8pt))
  line((-4.5, 0.8), (4.5, 0.8), stroke: 1.5pt)
  
  // Asse verticale
  line((0, -2.5), (0, 4.0), stroke: 0.8pt)
  
  // Archi pignone
  arc((0, 4.0), start: 215deg, stop: 325deg, radius: 4.0, anchor: "origin", stroke: (dash: "dashed", thickness: 1pt))
  arc((0, 4.0), start: 210deg, stop: 330deg, radius: 4.8, anchor: "origin", stroke: 1pt)
  
  
  // Retta d'azione
  line((-3.0, 1.4), (3.0, -1.4), stroke: 1pt)
  
  // Elementi geometrici (triangolo e proiezioni)
  line((0, 4.0), (-1.53, 0.72), stroke: 0.8pt)
  line((-1.71, 0.8), (-1.71, 0), stroke: rgb("#0000FF") + 1.5pt)
  line((0, 0), (-1.71, 0.8), stroke: rgb("#008000") + 1.5pt)
  
  
  
  // Vettori rp1 e velocità
  line((0, 2.5), (0, 0), mark: (end: ">"), stroke: rgb("#FFD700") + 1.5pt)
  line((-1.5, -2.0), (0.5, -2.0), mark: (end: ">"), stroke: 1.2pt)
  
  // Freccia omega_1 (Bezier)
  bezier((0.5, 1.8), (2.5, 2.5), (1.5, 1.5), (2.2, 2.0), mark: (end: ">"), stroke: 1pt)
  
  // Angoli phi (rosso) e marcatori
  line((-2.5, 0.8), (-1.71, 0.8), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((0, 4.0), start: 245deg, stop: 270deg, radius: 1.2, anchor: "origin", stroke: rgb("#FF0000") + 1pt)
  arc((-1.71, 0.8), start: 335deg, stop: 360deg, radius: 0.4, anchor: "origin", stroke: rgb("#FF0000") + 1pt)
  arc((0, 0), start: 335deg, stop: 360deg, radius: 1.8, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.8pt)
  
  // Quota m
  line((2.8, 0), (2.8, 0.8), mark: (start: ">", end: ">"), stroke: 0.8pt)
  
  // Punti chiave
  circle((-1.53, 0.72), radius: 0.05, fill: rgb("#FFA500"), stroke: none)
  circle((-1.71, 0.8), radius: 0.05, fill: rgb("#008000"), stroke: none)
  circle((0, 0), radius: 0.05, fill: black, stroke: none)
  circle((1.32, -0.61), radius: 0.05, fill: black, stroke: none)
  
  // Etichette di testo
  content((-3.5, 4.5), [*Pignone + Dentiera*], anchor: "west")
  content((-1.7, 1.15), [$T_1$])
  content((-0.4, 2.6), [#text(fill: rgb("#FF0000"))[$Phi$]])
  content((-0.9, 0.7), [#text(fill: rgb("#FF0000"))[$phi$]])
  content((2.1, -0.5), [$phi$])
  content((0.6, 1.2), [#text(fill: rgb("#FFD700"))[$r($p1$)$]])
  content((-1.9, -0.2), [$H$])
  content((0.2, -0.3), [$P$])
  content((1.3, -0.9), [$b$])
  content((-0.5, -1.7), [$v_2$])
  content((1.2, 2.2), [$omega_1$])
  
  // Etichette modulo addendum
  content((4.5, 0.4), [m = addendum])


})
