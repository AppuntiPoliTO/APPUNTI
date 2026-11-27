// Figura estratta da fatica.typ (riga 349) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.15cm, {
  // BBox: x in [-1.65, 10.1] (dx=11.75), y in [-1.15, 5.85], length=1.05cm -> larghezza = 12.34 cm <= 17.0 cm
  import draw: *

  // Assi principali
  line((0, 0), (9.4, 0), stroke: 0.9pt, mark: (end: ">", scale: 0.7))
  line((0, 0), (0, 5.0), stroke: 0.9pt, mark: (end: ">", scale: 0.7))
  content((9.52, 0), text(size: 9pt)[$N$], anchor: "west")
  content((-0.18, 4.92), text(size: 9pt)[$sigma_a$], anchor: "east")

  // Linee di riferimento verticali e orizzontali
  line((0.6, 0), (0.6, 4.25), stroke: (dash: "dotted", thickness: 0.6pt))
  line((3.1, 0), (3.1, 4.65), stroke: (dash: "dashed", thickness: 0.65pt))
  line((5.6, 0), (5.6, 0.12), stroke: 0.7pt)
  line((6.2, 0), (6.2, 4.65), stroke: (dash: "dashed", thickness: 0.65pt))
  line((0, 4.25), (0.6, 4.25), stroke: (dash: "dotted", thickness: 0.6pt))
  line((0, 3.65), (3.1, 3.65), stroke: (dash: "dotted", thickness: 0.6pt))
  line((0, 1.35), (6.2, 1.35), stroke: (dash: "dashed", thickness: 0.65pt))

  // Curva S-N nei tre regimi (acciai) + ramo inclinato leghe Al
  bezier((0.6, 4.25), (3.1, 3.65), (1.6, 4.22), (2.4, 3.92), stroke: 1.15pt)
  bezier((3.1, 3.65), (6.2, 1.35), (4.0, 3.08), (5.05, 1.85), stroke: 1.15pt)
  line((6.2, 1.35), (8.8, 1.35), stroke: 1.15pt)
  line((6.2, 1.35), (8.8, 0.95), stroke: (paint: rgb("#1f77b4"), dash: "dashed", thickness: 0.85pt))
  content((8.90, 0.95), text(size: 7.5pt, fill: rgb("#1f77b4"))[leghe Al], anchor: "west")

  // Punto di ginocchio
  circle((6.2, 1.35), radius: 0.075, fill: red, stroke: red)

  // Etichette assi e livelli tensionali
  content((-0.18, 4.25), text(size: 8.5pt)[$R_m$], anchor: "east")
  content((-0.18, 3.65), text(size: 8pt)[$0.8"–"0.9 thin R_m$], anchor: "east")
  content((-0.18, 1.35), text(size: 8.5pt)[$sigma_D$], anchor: "east")

  content((0.6, -0.20), text(size: 8.5pt)[$10^0$], anchor: "north")
  content((3.1, -0.20), text(size: 8.5pt)[$10^3$], anchor: "north")
  content((5.6, -0.20), text(size: 8.5pt)[$10^6$], anchor: "north")

  // Nota ginocchio
  line((6.2, -0.05), (6.2, -0.52), stroke: (paint: red, thickness: 0.55pt))
  content((6.2, -0.60), text(size: 8pt, fill: red)[$N_"ginocchio" approx 2 dot 10^6 " (acciai)," quad 10^7 " (leghe Al)"$], anchor: "north")

  // Delimitazioni e nomi dei regimi
  line((0.65, 4.65), (3.05, 4.65), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))
  content((1.85, 4.80), align(center, text(size: 8pt)[Fatica \ oligociclica]), anchor: "south")

  line((3.15, 5.25), (8.80, 5.25), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))
  content((5.98, 5.38), text(size: 8pt, weight: "bold")[Fatica ad alto numero di cicli], anchor: "south")

  content((4.65, 4.65), align(center, text(size: 8pt)[Resistenza \ *a termine*]), anchor: "center")
  content((7.50, 4.65), align(center, text(size: 8pt)[Resistenza \ *a vita infinita*]), anchor: "center")

  // Riquadro sigma_m e T costanti
  rect((6.65, 2.30), (9.35, 3.05), stroke: (paint: red, thickness: 0.8pt), fill: white)
  content((8.00, 2.675), align(center, text(size: 7.8pt, fill: red)[$sigma_m = "costante"$ \ $T = "costante"$]), anchor: "center")
})
