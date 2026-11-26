// Figura estratta da fatica.typ (riga 2405) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Area di sicurezza ridotta (Poligono verde sotto la linea rossa)
  // Calcolato su intersezione y = -0.4x + 2 (che passa per 0,2 e 5,0) con y = x + 4 e y = -x + 4
  line((-4, 0), (-1, 3), (0, 3),(2.5,1.5),(4,0), close: true, fill: rgb(220, 245, 220), stroke: none)

  // Assi
  line((-6, 0), (6, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -2), (0, 6), mark: (end: ">"), stroke: 1pt)
  content((6, -0.4), text(blue)[$sigma_m$], anchor: "north")
  content((-0.4, 6), text(blue)[$sigma_a$], anchor: "east")

  // Linee di limite originali (Rottura statica R_m)
  line((-5, 0), (0, 5), stroke: 1pt)
  line((0, 5), (5, 0), stroke: 1pt)
  
  // Linee di limite originali (Snervamento R_eH)
  line((-4, 0), (0, 4), stroke: 1pt)
  line((0, 4), (4, 0), stroke: 1pt)

  // Linea di Fatica originale (Goodman)
  line((-4, 0), (-1, 3), stroke: 1pt)
  line((-1, 3), (0, 3), stroke: 1pt)
  line((0, 3), (5, 0), stroke: 1pt)

  // Etichette assi estremità
  content((-5, -0.4), text(blue)[$-R_m$], anchor: "north")
  content((-4.1, -0.4), text(blue)[$-R_"eH"$], anchor: "north")
  content((4.1, -0.4), text(blue)[$R_"eH"$], anchor: "north")
  content((5, -0.4), text(blue)[$R_m$], anchor: "north")
  
  content((-0.2, 2.8), text(blue)[$sigma_"D-1"$], anchor: "east")
  content((-0.2, 4), text(blue)[$R_"eH"$], anchor: "east")
  content((-0.2, 5), text(blue)[$R_m$], anchor: "east")

  // --- NUOVA CONDIZIONE LIMITE (Linea Rossa orientata verso R_m) ---
  // Tratto sovrapposto allo snervamento in compressione
  line((-4, 0), (-1.429, 2.571), stroke: (paint: red, thickness: 1.5pt))
  
  // Tratto limite di fatica modificato (punta dritto verso R_m a x=5)
  line((-1.429, 2.571), (3.333, 0.667), stroke: (paint: red, thickness: 1.5pt))
  
  // Tratto sovrapposto allo snervamento in trazione
  line((3.333, 0.667), (4, 0), stroke: (paint: red, thickness: 1.5pt))
  
  // Prolungamento tratteggiato che arriva esattamente a R_m (5, 0)
  line((3.333, 0.667), (5, 0), stroke: (paint: red, dash: "dashed", thickness: 1.2pt))

  // Punto e etichetta del nuovo limite a fatica
  circle((0, 2), radius: 0.07, fill: red, stroke: none)
  content((0.2, 2.1), text(red)[$sigma_"D-1"^C$], anchor: "west")

  // --- RIFERIMENTI E INTERVALLI ORIGINALI ---
  // Linee tratteggiate di proiezione verticali dai vecchi raccordi
  line((-1, 0), (-1, 3), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.5, 0), (2.5, 1.5), stroke: (dash: "dashed", thickness: 0.6pt))

  // Intervalli orizzontali a, b, c, d
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
