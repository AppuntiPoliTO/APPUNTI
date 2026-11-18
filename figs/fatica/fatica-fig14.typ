// Figura estratta da fatica.typ (riga 1806) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi
  line((-0.5, 0), (6.5, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -0.5), (0, 4), mark: (end: ">"), stroke: 1pt)
  content((6.5, -0.4), text(blue)[$N$], anchor: "north")
  content((-0.3, 3.8), text(blue)[$sigma_a$], anchor: "east")

  // Tacche asse x (logaritmico, compresso verso l'asse y con passo 0.8)
  line((0.8, -0.15), (0.8, 0.15), stroke: 1pt)
  content((0.8, -0.5), text(blue)[$10$])
  
  line((1.6, -0.15), (1.6, 0.15), stroke: 1pt)
  content((1.6, -0.5), text(blue)[$10^2$])
  
  line((2.4, -0.15), (2.4, 0.15), stroke: 1pt)
  content((2.4, -0.5), text(blue)[$10^3$])
  
  line((3.2, -0.15), (3.2, 0.15), stroke: 1pt)
  content((3.2, -0.5), text(blue)[$10^4$])
  
  line((4.0, -0.15), (4.0, 0.15), stroke: 1pt)
  content((4.0, -0.5), text(blue)[$10^5$])
  
  line((4.8, -0.15), (4.8, 0.15), stroke: 1pt)
  content((4.8, -0.5), text(blue)[$10^6$])

  // Valori asse y
  content((-0.2, 1), text(blue)[$sigma_D$], anchor: "east")
  content((-0.2, 3), text(blue)[$sigma_F$], anchor: "east")

  // Linee di riferimento (tratteggiate)
  line((0, 3), (2.4, 3), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.4, 0), (2.4, 3), stroke: (dash: "dashed", thickness: 0.6pt))
  
  line((0, 1), (4.8, 1), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.8, 0), (4.8, 1), stroke: (dash: "dashed", thickness: 0.6pt))

  // Curva di fatica idealizzata
  line((2.4, 3), (4.8, 1), stroke: 1.5pt)
  line((4.8, 1), (6.0, 1), stroke: 1.5pt)

  // Punti F e G
  circle((2.4, 3), radius: 0.07, fill: black)
  circle((4.8, 1), radius: 0.07, fill: black)
  
  // Etichette F e G
  content((2.1, 3.2), text(blue)[$F$])
  content((5.1, 0.8), text(blue)[$G$])
})
