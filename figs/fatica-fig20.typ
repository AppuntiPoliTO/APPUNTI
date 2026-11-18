// Figura estratta da fatica.typ (riga 2501) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *
  
  // Assi
  line((0, 0), (7, 0), mark: (end: ">"), stroke: 1pt)
  line((0, 0), (0, 5), mark: (end: ">"), stroke: 1pt)
  
  // Curva (ellisse)
  arc((0, 0), start: 0deg, stop: 90deg, radius: (4.8, 2.8), anchor: "origin", stroke: 1pt)
  
  // Punti sperimentali
  circle((0.5, 2.5), radius: 0.03, fill: black, stroke: none)
  circle((0.8, 3.0), radius: 0.03, fill: black, stroke: none)
  circle((1.4, 2.5), radius: 0.03, fill: black, stroke: none)
  circle((2.2, 2.9), radius: 0.03, fill: black, stroke: none)
  circle((3.4, 1.7), radius: 0.03, fill: black, stroke: none)
  circle((3.8, 1.9), radius: 0.03, fill: black, stroke: none)
  circle((4.2, 0.8), radius: 0.03, fill: black, stroke: none)
  circle((4.7, 0.7), radius: 0.03, fill: black, stroke: none)
  
  // Etichette
  content((7.2, -0.3), [$sigma_a$], anchor: "north-west")
  content((-0.3, 4.8), [$tau_a$], anchor: "east")
})
