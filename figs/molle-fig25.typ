// Figura estratta da molle.typ (riga 3168) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // Parete d'incastro (interrotta dietro la mensola tra y = 2.47 e y = 4.01)
  line((3.00, 4.01), (3.00, 7.42), (0.00, 5.55), (0.00, 0.00), (3.00, 1.87), (3.00, 2.47), stroke: 1.1pt)

  // Mensola triangolare: faccia superiore A-B-C e faccia laterale A-A'-C'-C
  line((0.61, 4.18), (2.04, 5.07), (4.96, 1.84), close: true, stroke: 1.1pt)
  line((0.61, 4.18), (0.61, 3.76), (4.96, 1.42), (4.96, 1.84), stroke: 1.1pt)

  // Punto di applicazione C e forza concentrata F
  circle((4.96, 1.84), radius: 0.07, fill: black, stroke: none)
  line((4.96, 3.60), (4.96, 1.91), mark: (end: ">"), stroke: 1.2pt)
  content((4.80, 3.40), [$F$], anchor: "east")

  // Quota b_0 (larghezza all'incastro, parallela ad A-B)
  line((0.57, 4.20), (0.20, 4.40), stroke: 0.5pt)
  line((2.00, 5.09), (1.63, 5.29), stroke: 0.5pt)
  line((0.27, 4.36), (1.70, 5.25), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((0.90, 4.95), [$b_0$], anchor: "south-east")

  // Quota h (spessore della mensola a x = 2.16)
  line((2.16, 3.95), (2.16, 3.35), mark: (end: ">"), stroke: 0.5pt)
  line((2.16, 2.25), (2.16, 2.93), mark: (end: ">"), stroke: 0.5pt)
  content((2.04, 2.55), [$h$], anchor: "east")

  // Quota l (lunghezza della mensola, parallela ad A'-C')
  line((0.61, 3.66), (0.61, 2.45), stroke: 0.5pt)
  line((4.96, 1.32), (4.96, 0.11), stroke: 0.5pt)
  line((0.61, 2.58), (4.96, 0.24), mark: (start: ">", end: ">"), stroke: 0.5pt)
  content((2.78, 1.25), [$l$], anchor: "north")

  // Quota x e differenziale dif x con frecce esterne convergenti (robusto a scale ridotte)
  line((4.96, 1.84), (3.72, 2.79), mark: (end: ">"), stroke: 0.5pt)
  line((3.72, 2.79), (3.22, 3.18), stroke: 0.5pt)
  line((2.71, 3.57), (3.22, 3.18), mark: (end: ">"), stroke: 0.5pt)
  line((3.59, 2.71), (3.85, 2.87), stroke: 0.5pt)
  line((3.09, 3.10), (3.35, 3.26), stroke: 0.5pt)
  content((4.25, 2.80), [$x$], anchor: "south-west")
  content((2.75, 3.62), [$dif x$], anchor: "south-east")
})
