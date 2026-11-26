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

  // Curve
  bezier((0, 3.60), (5.00, 3.20), (1.30, 3.05), (3.50, 3.08), stroke: 1pt)
  bezier((0.40, 2.52), (5.00, 1.35), (1.45, 1.78), (3.00, 1.36), stroke: 1pt)

  // Etichette assi e valori
  content((-0.18, 4.25), text(size: 8.5pt)[$f$], anchor: "east")
  content((-0.15, 3.6), text(size: 7.5pt)[$0,4$], anchor: "east")
  content((-0.15, 2.7), text(size: 7.5pt)[$0,3$], anchor: "east")
  content((-0.15, 1.8), text(size: 7.5pt)[$0,2$], anchor: "east")
  content((-0.15, 0.9), text(size: 7.5pt)[$0,1$], anchor: "east")

  content((1.0, -0.15), text(size: 7.5pt)[$4$], anchor: "north")
  content((2.0, -0.15), text(size: 7.5pt)[$8$], anchor: "north")
  content((3.0, -0.15), text(size: 7.5pt)[$12$], anchor: "north")
  content((4.0, -0.15), text(size: 7.5pt)[$16$], anchor: "north")
  content((5.1, -0.15), text(size: 7.5pt)[[m/s]], anchor: "north")
  content((4.4, 0.15), text(size: 8.5pt)[$v$], anchor: "south")

  // Etichette curve
  content((4.2, 2.95), text(size: 8pt)[$1$], anchor: "north")
  content((4.3, 1.55), text(size: 8pt)[$2$], anchor: "south")
})
