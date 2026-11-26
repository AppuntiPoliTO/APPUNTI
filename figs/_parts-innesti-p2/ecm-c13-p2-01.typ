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

  // Curve gruppo 1
  bezier((0, 3.78), (3.0, 3.24), (0.7, 3.40), (1.8, 3.24), stroke: (dash: "dashed", thickness: 1pt))
  bezier((0, 3.60), (3.0, 3.02), (0.7, 3.22), (1.8, 3.02), stroke: 1pt)

  // Curve gruppo 2
  bezier((0.40, 2.79), (5.00, 2.20), (1.50, 2.40), (3.00, 2.22), stroke: (dash: "dashed", thickness: 1pt))
  bezier((0.45, 2.43), (5.00, 1.30), (1.45, 1.75), (3.00, 1.32), stroke: 1pt)

  // Etichette assi e valori
  content((-0.18, 4.25), text(size: 8.5pt)[$f, f_0$], anchor: "east")
  content((-0.15, 3.6), text(size: 7.5pt)[$0,4$], anchor: "east")
  content((-0.15, 2.7), text(size: 7.5pt)[$0,3$], anchor: "east")
  content((-0.15, 1.8), text(size: 7.5pt)[$0,2$], anchor: "east")
  content((-0.15, 0.9), text(size: 7.5pt)[$0,1$], anchor: "east")

  content((1.0, -0.15), text(size: 7.5pt)[$0,4$], anchor: "north")
  content((2.0, -0.15), text(size: 7.5pt)[$0,8$], anchor: "north")
  content((3.0, -0.15), text(size: 7.5pt)[$1,2$], anchor: "north")
  content((4.0, -0.15), text(size: 7.5pt)[$1,6$], anchor: "north")
  content((5.1, -0.15), text(size: 7.5pt)[[MPa]], anchor: "north")
  content((4.5, 0.15), text(size: 8.5pt)[$p$], anchor: "south")

  // Etichette curve
  content((3.2, 3.35), text(size: 8pt)[$1$], anchor: "west")
  content((3.25, 1.85), text(size: 8pt)[$2$], anchor: "center")
})
