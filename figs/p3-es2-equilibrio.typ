// Esempio 2: Equilibrio della piattabanda con due cordoni trasversali di altezza h (Slide 9)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Supporto
  line((0.50, 0.00), (3.10, 1.50), stroke: 0.9pt)
  line((3.10, 1.50), (3.10, 2.80), stroke: 0.9pt)
  line((3.10, 4.55), (3.10, 6.70), stroke: 0.9pt)
  line((0.50, 5.20), (3.10, 6.70), stroke: 0.9pt)
  line((0.50, 0.00), (0.50, 5.20), stroke: 0.9pt)
  line((0.50, 0.00), (0.11, 0.225), stroke: 0.9pt)
  line((0.11, 0.225), (0.11, 5.425), stroke: 0.9pt)
  line((0.50, 5.20), (0.11, 5.425), stroke: 0.9pt)
  line((0.11, 5.425), (2.71, 6.925), stroke: 0.9pt)
  line((3.10, 6.70), (2.71, 6.925), stroke: 0.9pt)

  // Piattabanda
  line((1.496, 1.875), (5.220, 4.025), (5.220, 5.325), (1.496, 3.175), close: true, fill: white, stroke: none)
  line((1.496, 3.175), (5.220, 5.325), (4.830, 5.550), (1.106, 3.400), close: true, fill: white, stroke: none)
  line((5.220, 4.025), (5.220, 5.325), (4.830, 5.550), (4.830, 4.250), close: true, fill: white, stroke: none)

  line((1.496, 1.875), (5.220, 4.025), stroke: 0.95pt)
  line((1.496, 3.175), (5.220, 5.325), stroke: 0.95pt)
  line((1.106, 3.400), (4.830, 5.550), stroke: 0.95pt)
  line((5.220, 4.025), (5.220, 5.325), stroke: 0.95pt)
  line((5.220, 5.325), (4.830, 5.550), stroke: 0.95pt)
  line((4.830, 5.550), (4.830, 4.250), stroke: 0.95pt)
  line((5.220, 4.025), (4.830, 4.250), stroke: 0.95pt)

  // Cordone sinistro (visibile)
  line((0.716, 1.875), (0.716, 3.175), stroke: 0.85pt)
  line((1.496, 1.875), (1.496, 3.175), stroke: 0.85pt)
  line((0.716, 1.875), (1.496, 1.875), stroke: 0.85pt)
  line((0.716, 3.175), (1.106, 3.400), stroke: 0.85pt)
  line((1.106, 3.400), (1.496, 3.175), stroke: 0.85pt)
  line((0.716, 3.175), (1.496, 3.175), stroke: 0.7pt)

  // Cordone destro (nascosto/tratteggiato)
  line((2.71, 3.025), (2.71, 4.325), stroke: (dash: "dashed", thickness: 0.7pt))
  line((3.49, 3.025), (3.49, 4.325), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.71, 3.025), (3.49, 3.025), stroke: (dash: "dashed", thickness: 0.7pt))
  line((2.71, 4.325), (3.10, 4.550), stroke: (dash: "dashed", thickness: 0.7pt))
  line((3.10, 4.550), (3.49, 4.325), stroke: (dash: "dashed", thickness: 0.7pt))

  // Carico esterno P
  line((5.22, 4.68), (6.20, 5.24), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((6.10, 5.42), text(size: 11.5pt, weight: "bold")[$P$], anchor: "south")

  // Reazioni vincolari F sui due cordoni (opposte a P)
  line((1.10, 2.52), (0.20, 2.00), mark: (end: ">", fill: black), stroke: 1.05pt)
  content((0.35, 2.40), text(size: 11.5pt, weight: "bold")[$F$], anchor: "east")

  line((3.10, 3.68), (2.20, 3.16), mark: (end: ">", fill: black), stroke: 1.05pt)
  content((2.82, 3.40), text(size: 11.5pt, weight: "bold")[$F$], anchor: "north-west")

  // Frecce rosse n_perp sul cordone sinistro
  for y in (2.05, 2.35, 2.65, 2.95) {
    line((1.106, y), (1.539, y + 0.25), mark: (end: ">", scale: 0.45, fill: red), stroke: 0.8pt + red)
  }
  content((1.65, 1.55), text(size: 11.5pt, fill: red, weight: "bold")[$n_perp$], anchor: "north")

  // Quota altezza cordone h
  line((1.82, 2.06), (1.82, 3.36), mark: (start: ">", end: ">", scale: 0.5, fill: black), stroke: 0.65pt)
  content((1.95, 2.70), text(size: 11.5pt, weight: "bold")[$h$], anchor: "west")

  // Etichette
  content((1.65, 5.25), text(size: 10.5pt, weight: "bold")[supporto], anchor: "center")
  content((4.20, 3.80), text(size: 10.5pt, weight: "bold")[piattabanda], anchor: "west")
  content((3.95, 5.85), text(size: 10.5pt, weight: "bold")[2 cordoni], anchor: "west")
  line((3.88, 5.82), (1.25, 3.45), stroke: 0.5pt)
  line((3.88, 5.82), (3.10, 4.62), stroke: 0.5pt)
})
