// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Esempio 4: Equilibrio della mensola con due cordoni verticali di altezza h a distanza L (Slide 15 alto)
#canvas(length: 1cm, {
  import draw: *

  // Supporto
  line((-0.66, 0.33), (0.00, 0.00), (3.344, 1.672), (3.344, 3.188), stroke: 1pt)
  line((3.344, 5.172), (3.344, 8.072), (0.00, 6.40), (0.00, 0.00), stroke: 1pt)
  line((-0.66, 0.33), (-0.66, 6.73), (2.684, 8.402), (3.344, 8.072), stroke: 1pt)
  line((-0.66, 6.73), (0.00, 6.40), stroke: 1pt)

  // Piattabanda
  line((1.012, 2.022), (5.412, 4.222), (5.412, 5.722), (1.012, 3.522), close: true, fill: white, stroke: 1pt)
  line((0.528, 3.764), (4.928, 5.964), (5.412, 5.722), (1.012, 3.522), close: true, fill: white, stroke: 1pt)

  // Cordone sinistro (visibile, prisma triangolare d'angolo)
  line((0.148, 3.574), (0.528, 3.764), (1.012, 3.522), close: true, fill: white, stroke: 0.9pt)
  line((0.148, 2.074), (1.012, 2.022), (1.012, 3.522), (0.148, 3.574), close: true, fill: white, stroke: 0.9pt)

  // Cordone destro (nascosto/tratteggiato, sul bordo destro del supporto a x=3.344)
  line((2.964, 3.862), (3.344, 3.672), (3.724, 3.862), close: true, stroke: (dash: "dashed", thickness: 0.75pt))
  line((2.964, 5.362), (3.344, 5.172), (3.724, 5.362), close: true, stroke: (dash: "dashed", thickness: 0.75pt))
  line((2.964, 3.862), (2.964, 5.362), stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.344, 3.672), (3.344, 5.172), stroke: (dash: "dashed", thickness: 0.75pt))
  line((3.724, 3.862), (3.724, 5.362), stroke: (dash: "dashed", thickness: 0.75pt))

  // Carico P
  line((4.928, 7.25), (4.928, 5.964), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.10, 6.75), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  // Reazioni F1 (verso l'alto su entrambi i cordoni)
  line((0.50, 3.66), (0.50, 4.90), mark: (end: ">", fill: black), stroke: 1.0pt)
  content((0.38, 4.45), text(size: 11.5pt, weight: "bold")[$F_1$], anchor: "east")

  line((3.20, 5.36), (3.20, 6.55), mark: (end: ">", fill: black), stroke: 1.0pt)
  content((3.08, 6.10), text(size: 11.5pt, weight: "bold")[$F_1$], anchor: "east")

  // Reazioni F2 (coppia: verso il basso a sinistra, verso l'alto a destra -> a destra si somma con F1)
  line((0.50, 2.05), (0.50, 0.85), mark: (end: ">", fill: red.darken(15%)), stroke: 1.0pt + red.darken(15%))
  content((0.38, 1.35), text(size: 11.5pt, fill: red.darken(15%))[$F_2$], anchor: "east")

  line((3.48, 5.36), (3.48, 6.55), mark: (end: ">", fill: red.darken(15%)), stroke: 1.0pt + red.darken(15%))
  content((3.60, 6.10), text(size: 11.5pt, fill: red.darken(15%))[$F_2$], anchor: "west")

  // Quota h (altezza dei cordoni)
  line((4.95, 3.991), (4.95, 5.491), mark: (start: ">", end: ">", scale: 0.48, fill: black), stroke: 0.65pt)
  content((4.82, 4.74), text(size: 11.5pt, weight: "bold")[$h$], anchor: "east")

  // Quota L (distanza tra i due cordoni)
  line((1.112, 1.972), (1.632, 1.712), stroke: 0.55pt)
  line((3.928, 3.380), (4.448, 3.120), stroke: 0.55pt)
  line((1.512, 1.772), (4.328, 3.180), mark: (start: ">", end: ">", scale: 0.48, fill: black), stroke: 0.65pt)
  content((2.48, 2.18), text(size: 11.5pt, weight: "bold")[$L$], anchor: "north")

  // Quota b (braccio dal centro tra i due cordoni a P)
  line((2.520, 2.676), (3.740, 2.066), stroke: 0.55pt)
  line((5.512, 4.172), (6.732, 3.562), stroke: 0.55pt)
  line((3.620, 2.126), (6.612, 3.622), mark: (start: ">", end: ">", scale: 0.48, fill: black), stroke: 0.65pt)
  content((5.18, 2.78), text(size: 11.5pt, weight: "bold")[$b$], anchor: "north")

  // Etichette e richiami
  content((0.90, 8.05), text(size: 10.5pt, weight: "bold")[supporto], anchor: "south")
  content((1.75, 6.20), text(size: 10.5pt, weight: "bold")[2 cordoni], anchor: "south")
  line((1.60, 6.12), (0.74, 3.63), stroke: 0.5pt)
  line((1.88, 6.12), (3.08, 5.32), stroke: 0.5pt)
  content((5.60, 5.05), text(size: 10.5pt, weight: "bold")[piattabanda], anchor: "west")
})
