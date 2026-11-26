// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Disegno creato con Studio di LocalTypst
#canvas(length: 1cm, {
  import draw: *

  // Riempimenti colorati (Slide 5: manicotto verde, chiavette gialle)
  rect((-2.40, 0.92), (2.40, 1.65), radius: 0.12, fill: rgb("#b7e86b").transparentize(25%), stroke: none)
  rect((-2.40, -1.65), (2.40, -0.70), radius: 0.12, fill: rgb("#b7e86b").transparentize(25%), stroke: none)
  line((-2.95, 0.70), (-2.95, 0.93), (-2.90, 0.98), (-2.65, 0.98), (-2.65, 0.87), (-0.15, 0.87), (-0.15, 0.70), close: true, fill: rgb("#fde047"), stroke: none)
  line((2.95, 0.70), (2.95, 0.93), (2.90, 0.98), (2.65, 0.98), (2.65, 0.87), (0.15, 0.87), (0.15, 0.70), close: true, fill: rgb("#fde047"), stroke: none)

  // Asse di simmetria
  line((-4.0, 0), (4.0, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Albero sinistro
  line((-3.8, 0.70), (-0.10, 0.70), stroke: 1pt)
  line((-3.8, -0.70), (-0.10, -0.70), stroke: 1pt)
  line((-0.10, 0.70), (-0.03, 0.62), (-0.03, -0.62), (-0.10, -0.70), stroke: 1pt)
  line((-0.10, 0.70), (-0.10, -0.70), stroke: 0.75pt)
  bezier((-3.8, 0.70), (-3.8, -0.70), (-3.92, 0.25), (-3.68, -0.25), stroke: 1pt)

  // Albero destro
  line((3.8, 0.70), (0.10, 0.70), stroke: 1pt)
  line((3.8, -0.70), (0.10, -0.70), stroke: 1pt)
  line((0.10, 0.70), (0.03, 0.62), (0.03, -0.62), (0.10, -0.70), stroke: 1pt)
  line((0.10, 0.70), (0.10, -0.70), stroke: 0.75pt)
  bezier((3.8, 0.70), (3.8, -0.70), (3.92, 0.25), (3.68, -0.25), stroke: 1pt)

  // Cava per chiavetta nell'albero (tratteggiata)
  line((-3.80, 0.54), (-0.10, 0.54), stroke: (dash: "dashed", thickness: 0.7pt))
  line((0.10, 0.54), (3.80, 0.54), stroke: (dash: "dashed", thickness: 0.7pt))

  // Chiavette con nasello
  line((-2.95, 0.70), (-2.95, 0.93), (-2.90, 0.98), (-2.65, 0.98), (-2.65, 0.87), (-0.15, 0.87), (-0.15, 0.70), stroke: 1pt)
  line((-2.95, 0.70), (-2.95, 0.54), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.95, 0.70), (2.95, 0.93), (2.90, 0.98), (2.65, 0.98), (2.65, 0.87), (0.15, 0.87), (0.15, 0.70), stroke: 1pt)
  line((2.95, 0.70), (2.95, 0.54), stroke: (dash: "dashed", thickness: 0.7pt))

  // Manicotto superiore e inferiore (contorni)
  line((-2.40, 0.92), (2.40, 0.92), stroke: 1pt)
  line((-2.40, 0.92), (-2.40, 1.45), stroke: 1pt)
  arc((-2.20, 1.45), start: 90deg, stop: 180deg, radius: 0.20, anchor: "origin", stroke: 1pt)
  line((-2.20, 1.65), (2.20, 1.65), stroke: 1pt)
  arc((2.20, 1.45), start: 0deg, stop: 90deg, radius: 0.20, anchor: "origin", stroke: 1pt)
  line((2.40, 1.45), (2.40, 0.92), stroke: 1pt)

  line((-2.40, -0.70), (2.40, -0.70), stroke: 1pt)
  line((-2.40, -0.70), (-2.40, -1.45), stroke: 1pt)
  arc((-2.20, -1.45), start: 180deg, stop: 270deg, radius: 0.20, anchor: "origin", stroke: 1pt)
  line((-2.20, -1.65), (2.20, -1.65), stroke: 1pt)
  arc((2.20, -1.45), start: 270deg, stop: 360deg, radius: 0.20, anchor: "origin", stroke: 1pt)
  line((2.40, -1.45), (2.40, -0.70), stroke: 1pt)

  // Tratteggio sezione manicotto superiore (45 gradi)
  line((-2.40, 1.35), (-2.10, 1.65), stroke: 0.5pt)
  line((-2.40, 1.10), (-1.85, 1.65), stroke: 0.5pt)
  line((-2.33, 0.92), (-1.60, 1.65), stroke: 0.5pt)
  line((-2.08, 0.92), (-1.35, 1.65), stroke: 0.5pt)
  line((-1.83, 0.92), (-1.10, 1.65), stroke: 0.5pt)
  line((-1.58, 0.92), (-0.85, 1.65), stroke: 0.5pt)
  line((-1.33, 0.92), (-0.60, 1.65), stroke: 0.5pt)
  line((-1.08, 0.92), (-0.35, 1.65), stroke: 0.5pt)
  line((-0.83, 0.92), (-0.10, 1.65), stroke: 0.5pt)
  line((-0.58, 0.92), (0.15, 1.65), stroke: 0.5pt)
  line((-0.33, 0.92), (0.40, 1.65), stroke: 0.5pt)
  line((-0.08, 0.92), (0.65, 1.65), stroke: 0.5pt)
  line((0.17, 0.92), (0.90, 1.65), stroke: 0.5pt)
  line((0.42, 0.92), (1.15, 1.65), stroke: 0.5pt)
  line((0.67, 0.92), (1.40, 1.65), stroke: 0.5pt)
  line((0.92, 0.92), (1.65, 1.65), stroke: 0.5pt)
  line((1.17, 0.92), (1.90, 1.65), stroke: 0.5pt)
  line((1.42, 0.92), (2.15, 1.65), stroke: 0.5pt)
  line((1.67, 0.92), (2.34, 1.59), stroke: 0.5pt)
  line((1.92, 0.92), (2.40, 1.40), stroke: 0.5pt)
  line((2.17, 0.92), (2.40, 1.15), stroke: 0.5pt)

  // Tratteggio sezione manicotto inferiore (45 gradi)
  line((-2.40, -0.90), (-2.20, -0.70), stroke: 0.5pt)
  line((-2.40, -1.15), (-1.95, -0.70), stroke: 0.5pt)
  line((-2.40, -1.40), (-1.70, -0.70), stroke: 0.5pt)
  line((-2.34, -1.59), (-1.45, -0.70), stroke: 0.5pt)
  line((-2.15, -1.65), (-1.20, -0.70), stroke: 0.5pt)
  line((-1.90, -1.65), (-0.95, -0.70), stroke: 0.5pt)
  line((-1.65, -1.65), (-0.70, -0.70), stroke: 0.5pt)
  line((-1.40, -1.65), (-0.45, -0.70), stroke: 0.5pt)
  line((-1.15, -1.65), (-0.20, -0.70), stroke: 0.5pt)
  line((-0.90, -1.65), (0.05, -0.70), stroke: 0.5pt)
  line((-0.65, -1.65), (0.30, -0.70), stroke: 0.5pt)
  line((-0.40, -1.65), (0.55, -0.70), stroke: 0.5pt)
  line((-0.15, -1.65), (0.80, -0.70), stroke: 0.5pt)
  line((0.10, -1.65), (1.05, -0.70), stroke: 0.5pt)
  line((0.35, -1.65), (1.30, -0.70), stroke: 0.5pt)
  line((0.60, -1.65), (1.55, -0.70), stroke: 0.5pt)
  line((0.85, -1.65), (1.80, -0.70), stroke: 0.5pt)
  line((1.10, -1.65), (2.05, -0.70), stroke: 0.5pt)
  line((1.35, -1.65), (2.30, -0.70), stroke: 0.5pt)
  line((1.60, -1.65), (2.40, -0.85), stroke: 0.5pt)
  line((1.85, -1.65), (2.40, -1.10), stroke: 0.5pt)

  // Quote D, d, L
  line((-4.75, 1.65), (-2.65, 1.65), stroke: 0.55pt)
  line((-4.75, -1.65), (-2.65, -1.65), stroke: 0.55pt)
  line((-4.55, -1.65), (-4.55, 1.65), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)
  content((-4.65, 0), text(size: 11pt)[$D$], anchor: "east")

  line((-4.20, 0.70), (-3.85, 0.70), stroke: 0.55pt)
  line((-4.20, -0.70), (-3.85, -0.70), stroke: 0.55pt)
  line((-4.05, -0.70), (-4.05, 0.70), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)
  content((-4.15, 0), text(size: 11pt)[$d$], anchor: "east")

  line((-2.40, -1.55), (-2.40, -2.40), stroke: 0.55pt)
  line((2.40, -1.55), (2.40, -2.40), stroke: 0.55pt)
  line((-2.40, -2.25), (2.40, -2.25), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)
  content((0, -2.18), text(size: 11pt)[$L$], anchor: "south")

  // Frecce indicatrici e didascalie complete (Slide 4)
  line((3.75, 1.68), (2.92, 0.99), mark: (end: ">", fill: black), stroke: 0.7pt)
  content((3.82, 2.08), text(size: 10pt)[Chiavette con nasello], anchor: "west")
  content((3.82, 1.68), text(size: 10pt)[con superficie superiore], anchor: "west")
  content((3.82, 1.28), text(size: 10pt)[leggermente obliqua], anchor: "west")

  line((3.75, -1.85), (2.41, -1.48), mark: (end: ">", fill: black), stroke: 0.7pt)
  content((3.82, -1.65), text(size: 10pt)[Cilindro cavo,], anchor: "west")
  content((3.82, -2.05), text(size: 10pt)[generalmente in ghisa], anchor: "west")
})
