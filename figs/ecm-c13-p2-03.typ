#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Assi
  line((0, 0), (5.3, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 4.4), mark: (end: ">"), stroke: 0.8pt)

  // Tacche assi
  line((-0.07, 0.9), (0, 0.9), stroke: 0.5pt)
  line((-0.07, 1.8), (0, 1.8), stroke: 0.5pt)
  line((-0.07, 2.7), (0, 2.7), stroke: 0.5pt)
  line((-0.07, 3.6), (0, 3.6), stroke: 0.5pt)

  line((1.0, -0.07), (1.0, 0), stroke: 0.5pt)
  line((2.0, -0.07), (2.0, 0), stroke: 0.5pt)
  line((3.0, -0.07), (3.0, 0), stroke: 0.5pt)
  line((4.0, -0.07), (4.0, 0), stroke: 0.5pt)

  // Curva 1
  line((0, 3.15), (3.20, 3.15), stroke: 1pt)
  bezier((3.20, 3.15), (4.40, 2.25), (3.85, 3.15), (4.10, 2.65), stroke: 1pt)

  // Curva 2
  line((0, 1.80), (2.00, 1.80), stroke: 1pt)
  bezier((2.00, 1.80), (4.20, 1.12), (3.00, 1.80), (3.70, 1.48), stroke: 1pt)

  // Etichette assi e valori
  content((-0.18, 4.25), text(size: 8.5pt)[$f$], anchor: "east")
  content((-0.15, 3.6), text(size: 7.5pt)[$0,4$], anchor: "east")
  content((-0.15, 2.7), text(size: 7.5pt)[$0,3$], anchor: "east")
  content((-0.15, 1.8), text(size: 7.5pt)[$0,2$], anchor: "east")
  content((-0.15, 0.9), text(size: 7.5pt)[$0,1$], anchor: "east")

  content((1.0, -0.15), text(size: 7.5pt)[$100$], anchor: "north")
  content((2.0, -0.15), text(size: 7.5pt)[$200$], anchor: "north")
  content((3.0, -0.15), text(size: 7.5pt)[$300$], anchor: "north")
  content((4.0, -0.15), text(size: 7.5pt)[$400$], anchor: "north")
  content((5.1, -0.15), text(size: 7.5pt)[[°C]], anchor: "north")
  content((4.4, 0.15), text(size: 8.5pt)[$T$], anchor: "south")

  // Etichette curve
  content((4.15, 2.95), text(size: 8pt)[$1$], anchor: "west")
  content((4.15, 1.55), text(size: 8pt)[$2$], anchor: "west")
})
