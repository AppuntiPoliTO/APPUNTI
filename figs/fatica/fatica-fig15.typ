// Figura estratta da fatica.typ (riga 1921) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.85cm, {
  import draw: *

  // Area di sicurezza (Poligono verde scuro/chiaro)
  line((-4, 0), (-1, 3), (0, 3), (2.5, 1.5), (4, 0), close: true, fill: rgb(220, 245, 220), stroke: none)

  // Assi
  line((-6, 0), (6, 0), mark: (end: ">"), stroke: 1pt)
  line((0, -2), (0, 6), mark: (end: ">"), stroke: 1pt)
  content((6, -0.4), text(blue)[$sigma_m$], anchor: "north")
  content((-0.4, 6), text(blue)[$sigma_a$], anchor: "east")

  // Linee di limite (Rottura statica R_m)
  line((-5, 0), (0, 5), stroke: 1pt)
  line((0, 5), (5, 0), stroke: 1pt)
  
  // Linee di limite (Snervamento R_eS)
  line((-4, 0), (0, 4), stroke: 1pt)
  line((0, 4), (4, 0), stroke: 1pt)

  // Linea di Fatica (Goodman)
  line((0, 3), (5, 0), stroke: 1pt)

  // Contorno esplicito del poligono per risalto
  line((-4, 0), (-1, 3), stroke: 2pt)
  line((-1, 3), (0, 3), stroke: 2pt)
  line((0, 3), (2.5, 1.5), stroke: 2pt)
  line((2.5, 1.5), (4, 0), stroke: 2pt)

  // Etichette assi
  content((-5, -0.4), text(blue)[$-R_m$], anchor: "north")
  content((-4.1, -0.4), text(blue)[$-R_"eH"$], anchor: "north")
  content((4.1, -0.4), text(blue)[$R_"eH"$], anchor: "north")
  content((5, -0.4), text(blue)[$R_m$], anchor: "north")
  
  content((-0.2, 2.8), text(blue)[$sigma_"D-1"$], anchor: "east")
  content((-0.2, 4), text(blue)[$R_"eH"$], anchor: "east")
  content((-0.2, 5), text(blue)[$R_m$], anchor: "east")

  // Linee tratteggiate di proiezione per cambi di pendenza
  line((-1, 0), (-1, 3), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.5, 0), (2.5, 1.5), stroke: (dash: "dashed", thickness: 0.6pt))
  
  content((-1.2, -0.4), text(blue)[$sigma_"ab"$], anchor: "north")
  content((2.5, -0.4), text(blue)[$sigma_"cd"$], anchor: "north")

  // Riquadri equazioni e frecce di puntamento
  // 1. Snervamento in compressione
  line((-5.2, 1.55), (-2.44, 1.55), stroke: (paint: blue, thickness: 0.6pt))
  content((-5.5, 1.5), box(stroke: 0.6pt + blue, fill: white, inset: 4pt)[#text(blue)[$sigma_a - sigma_m = R_"eH"$]])

  // 2. Limite di fatica per tensioni medie di compressione
  bezier((-1.5, 4), (-0.5, 3.0), (-1.0, 3.2), (-0.8, 3.1), stroke: (paint: blue, thickness: 0.6pt))
  content((-2.4, 4.2), box(stroke: 0.6pt + blue, fill: white, inset: 4pt)[#text(blue)[$sigma_a = sigma_"D-1"$]])

  // 3. Rottura in trazione
  line((2.5, 3.5), (0.5, 3.5), stroke: (paint: blue, thickness: 0.6pt))
  content((3.6, 3.5), box(stroke: 0.6pt + blue, fill: white, inset: 4pt)[#text(blue)[$sigma_a + sigma_m = R_m$]])

  // 4. Linea di Goodman (fatica a vita infinita)
  line((4, 1.6), (1.7, 2), stroke: (paint: blue, thickness: 0.6pt))
  content((5.5, 1.5), box(stroke: 0.6pt + blue, fill: white, inset: 6pt)[#text(blue)[$sigma_a / sigma_"D-1" + sigma_m / R_m = 1$]])

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
