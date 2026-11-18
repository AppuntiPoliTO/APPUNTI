// Figura estratta da hertz.typ (riga 218) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // ================= GRAFICO SINISTRO (Piano y-z) =================
  
  // Assi cartesiani
  line((0, 0), (3, 0), mark: (end: ">"), stroke: 1pt) // Asse y
  line((0, -2.1), (0, 2), mark: (end: ">"), stroke: 1pt) // Asse z
  
  
  // Profilo della superficie z1 (parabola esatta z = 0.25*y^2)
  // Estremi in y = -2.4 e y = 2.4. Punti di controllo calcolati per la parabola perfetta.
  arc((0, -2.2), start: 0deg, stop: 180deg, radius: 2.2, anchor: "origin", stroke: 1pt)
  
  // Raggio di curvatura R1y (dal centro di curvatura z=2.0 alla curva in y=1.2)
  line((0, -2.0), (1.2, -0.36), mark: (end: ">"), stroke: 0.6pt)
  
  // Etichette grafico sinistro
  content((2.8, -0.4), [$y$])
  content((0.3, 2.0), [$z$])
  content((-0.3, 0.4), [$bold(O)$])
  content((-2.4, -1.8), [$bold(z)_1$])
  content((0.95, -1.45), [$R_(2y)$])


  // ================= GRAFICO DESTRO (Piano x-z) =================
  
  // Assi cartesiani (Origine traslata a x=7)
  line((7, 0), (4, 0), mark: (end: ">"), stroke: 1pt) // Asse x (punta a sinistra)
  line((7, -2.1), (7, 2), mark: (end: ">"), stroke: 1pt) // Asse z
  
  // Profilo della superficie z1 (parabola esatta z = 0.4*x^2, più stretta)
  // Estremi in x = -1.9 e x = 1.9 rispetto al centro.
  arc((7,-3.2), 
start: -20deg, 
stop: -160deg, 
radius: (1.5, -3.2), 
anchor: "origin"
  )
  
  // Raggio di curvatura R1x (dal centro di curvatura z=1.25 alla curva in dx=0.9)
  line((7, -1.25), (7.7, -0.324), mark: (end: ">"), stroke: 0.6pt)
  
  // Etichette grafico destro
  content((4.2, -0.4), [$x$])
  content((7.3, 2.0), [$z$])
  content((6.7, 0.4), [$bold(O)$])
  content((5.2, -1.2), [$bold(z)_2$])
  content((7.7, -1.1), [$R_(2x)$])
})
