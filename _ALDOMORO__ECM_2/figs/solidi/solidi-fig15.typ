// Figura estratta da solidi.typ (riga 1111) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.6cm, {
  import draw: *

  // Contorni faccia anteriore (circonferenze concentriche)
  circle((0, 0), radius: 2.74, stroke: 1.4pt)
  circle((0, 0), radius: 2.30, stroke: 1.4pt)

  // Contorno posteriore e generatrici del cilindro
  arc((1.50, 0.62), start: -67.54deg, stop: 112.46deg, radius: 2.74, anchor: "origin", stroke: 1.4pt)
  line((-1.05, 2.53), (0.45, 3.15), stroke: 1.4pt)
  line((1.05, -2.53), (2.55, -1.91), stroke: 1.4pt)

  // Assi di simmetria (tratto-punto)
  line((-3.10, 0), (3.10, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -3.10), (0, 3.10), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Quote diametri D_i e D_e
  line((-1.76, 1.48), (1.76, -1.48), mark: (start: ">", end: ">", fill: none, scale: 1.3), stroke: 0.7pt)
  line((-0.71, -2.65), (0.71, 2.65), mark: (start: ">", end: ">", fill: none, scale: 1.3), stroke: 0.7pt)

  // Quota spessore s
  line((1.06, 1.06), (1.63, 1.63), mark: (end: ">", fill: none, scale: 1.3), stroke: 0.7pt)
  line((2.55, 2.55), (1.94, 1.94), mark: (end: ">", fill: none, scale: 1.3), stroke: 0.7pt)

  // Quota larghezza B
  line((1.30, -2.60), (2.75, -3.22), stroke: 0.7pt)
  line((2.80, -1.98), (4.25, -2.60), stroke: 0.7pt)
  line((2.30, -3.03), (3.80, -2.41), mark: (start: ">", end: ">", fill: none, scale: 1.3), stroke: 0.7pt)

  // Freccia di rotazione omega
  arc((1.50, 0.62), start: -8deg, stop: 42deg, radius: 3.85, anchor: "origin", mark: (end: ">", fill: black, scale: 1.5), stroke: 1.5pt)

  // Etichette
  content((-1.35, 0.42), [$D_i$], anchor: "center")
  content((0.78, 0.80), [$D_e$], anchor: "center")
  content((2.10, 2.68), [$s$], anchor: "center")
  content((3.55, -3.35), [$B$], anchor: "center")
  content((4.85, 1.40), [$omega$], anchor: "center")
})
