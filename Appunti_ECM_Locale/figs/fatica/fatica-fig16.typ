// Figura estratta da fatica.typ (riga 2019) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi
  line((-5, 0), (6, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -1), (0, 5), mark: (end: ">"), stroke: 1pt)
  content((6, -0.4), text(blue)[$sigma_m$], anchor: "north")
  content((-0.4, 5), text(blue)[$sigma_a$], anchor: "east")

  
  // Linee di limite (Snervamento R_eH)
  line((-4, 0), (0, 4), stroke: 1pt)
  line((0, 4), (4, 0), stroke: 1pt)

  // Linea di Fatica (Goodman)
  line((0, 3), (5, 0), stroke: 1pt)

  // Contorno esplicito del poligono di sicurezza
  line((-4, 0), (-1, 3), stroke: 1.5pt)
  line((-1, 3), (0, 3), stroke: 1.5pt)
  line((0, 3), (2.5, 1.5), stroke: 1.5pt)
  line((2.5, 1.5), (4, 0), stroke: 1.5pt)

  // Etichette assi estremità
  
  content((-4.1, -0.4), text(blue)[$-R_"eH"$], anchor: "north")
  content((4.1, -0.4), text(blue)[$R_"eH"$], anchor: "north")
  content((5, -0.4), text(blue)[$R_m$], anchor: "north")
  
  content((-0.2, 2.8), text(blue)[$sigma_"D-1"$], anchor: "east")
  content((-0.2, 4), text(blue)[$R_"eH"$], anchor: "east")
  

  // Linee tratteggiate di proiezione per cambi di pendenza
  line((-1, 0), (-1, 3), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.5, 0), (2.5, 1.5), stroke: (dash: "dashed", thickness: 0.6pt))
  
  content((-1.2, -0.4), text(blue)[$sigma_"ab"$], anchor: "north")
  content((2.6, -0.4), text(blue)[$sigma_"CD"$], anchor: "north")

  // --- RETTA DI CARICO E PUNTI NOTEVOLI ---
  // Retta di carico dall'origine
  line((0, 0), (1.8, 1.92), stroke: 1.2pt)

  // Punto di lavoro P e relative proiezioni (calcolato a metà del segmento)
  circle((0.9, 0.96), radius: 0.07, fill: red, stroke: none)
  content((1.1, 0.7), text(blue)[$P$])
  
  line((0.9, 0.96), (0, 0.96), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.9, 0.96), (0.9, 0), stroke: (dash: "dashed", thickness: 0.6pt))
  content((-0.05, 0.96), text(blue)[$sigma_"a, lav"$], anchor: "east")
  content((0.7, 0), text(blue)[$sigma_"m, lav"$], anchor: "north")

  // Punto limite (intersezione con la linea di Goodman) e relative proiezioni
  circle((1.8, 1.92), radius: 0.07, fill: red, stroke: none)
  
  line((1.8, 1.92), (0, 1.92), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.8, 1.92), (1.8, 0), stroke: (dash: "dashed", thickness: 0.6pt))
  content((-0.05, 1.92), text(blue)[$sigma_"a, lim"$], anchor: "east")
  content((1.8, 0), text(blue)[$sigma_"m, lim"$], anchor: "north")

  // --- INTERVALLI ORIZZONTALI ---
  line((-4, -1.0), (-4, -1.4), stroke: 1pt)
  line((-1, -1.0), (-1, -1.4), stroke: 1pt)
  line((0, -1.0), (0, -1.4), stroke: 1pt)
  line((2.5, -1.0), (2.5, -1.4), stroke: 1pt)
  line((4, -1.0), (4, -1.4), stroke: 1pt)

  line((-4, -1.2), (-1, -1.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-2.5, -0.9), text(blue)[$a$])

  line((-1, -1.2), (0, -1.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.5, -0.9), text(blue)[$b$])

  line((0, -1.2), (2.5, -1.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.25, -0.9), text(blue)[$c$])

  line((2.5, -1.2), (4, -1.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.25, -0.9), text(blue)[$d$])
})
