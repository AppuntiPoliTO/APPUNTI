// Figura estratta da hertz.typ (riga 289) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ================= GRAFICO SINISTRO (Piano y-z) =================
  
  // Assi cartesiani
  line((0, 0), (-3, 0), mark: (end: ">"), stroke: 1pt) // Asse y
  line((0, -2.1), (0, 3.5), mark: (end: ">"), stroke: 1pt) // Asse z
  
  
  // Profilo della superficie z1 (parabola esatta z = 0.25*y^2)
  // Estremi in y = -2.4 e y = 2.4. Punti di controllo calcolati per la parabola perfetta.
  arc((0, -2.2), start: 0deg, stop: 180deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  arc((0, 2.2), start: 180deg, stop: 360deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  
  // Raggio di curvatura R1y (dal centro di curvatura z=2.0 alla curva in y=1.2)
  line((0, 2.0), (1.2, 0.36), mark: (end: ">"), stroke: 0.6pt)
  
  // Raggio di curvatura R1y (dal centro di curvatura z=2.0 alla curva in y=1.2)
  line((0, -2.0), (-1.2, -0.36), mark: (end: ">"), stroke: 0.6pt)
  
  // Etichette grafico sinistro
  content((-2.8, -0.4), [$x$])
  content((0.3, 3.3), [$z$])
  content((-0.3, 0.4), [$bold(O)$])
  content((-0.95, -1.45), [$R_(2x)$])
  content((0.95, 1.45), [$R_(x)$])
})
