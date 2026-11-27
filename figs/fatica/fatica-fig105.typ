// Figura estratta da fatica.typ (riga 3739) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *
  // BBox: x in [-0.2, 9.9] (dx=10.1), y in [0.1, 4.6], length=0.8cm -> larghezza = 8.08 cm <= 8.2 cm

  // Pannello sinistro: albero rotante tra 3 rulli
  circle((1.45, 2.3), radius: 0.82, fill: black.transparentize(90%), stroke: 1.0pt)
  content((1.45, 2.3), anchor: "center", [#text(size: 7.2pt)[Albero]])

  // Rullo superiore (90 deg)
  circle((1.45, 3.38), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
  line((1.45, 4.25), (1.45, 3.68), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
  content((1.63, 4.02), anchor: "west", [#text(fill: blue, size: 7.5pt)[$F$]])

  // Rullo inferiore sinistro (210 deg)
  circle((0.51, 1.76), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
  line((-0.10, 1.40), (0.25, 1.60), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
  content((0.00, 1.15), anchor: "north", [#text(fill: blue, size: 7.5pt)[$F$]])

  // Rullo inferiore destro (330 deg)
  circle((2.39, 1.76), radius: 0.26, fill: black.transparentize(78%), stroke: 0.85pt)
  line((3.00, 1.40), (2.65, 1.60), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.75))
  content((2.90, 1.15), anchor: "north", [#text(fill: blue, size: 7.5pt)[$F$]])

  // Freccia rotazione
  arc((1.45, 2.3), start: 15deg, stop: 60deg, radius: 1.12, anchor: "origin", stroke: 0.7pt, mark: (end: ">", scale: 0.65))
  content((2.50, 3.15), anchor: "west", [#text(size: 6.8pt)[Rotazione]])

  // Pannello destro: grafico log S-N comparativo
  rect((5.4, 1.2), (9.8, 4.3), stroke: 0.8pt)
  content((4.52, 2.75), angle: 90deg, anchor: "center", [#text(size: 7pt)[$sigma_a$ (% $R_m$)]])
  content((7.6, 0.35), anchor: "north", [#text(size: 7.2pt)[Cicli a rottura, $N$]])

  // Tacche asse X (10^4 .. 10^8)
  for (pos, lbl) in ((5.4, $10^4$), (6.5, $10^5$), (7.6, $10^6$), (8.7, $10^7$), (9.8, $10^8$)) {
    line((pos, 1.2), (pos, 1.32), stroke: 0.6pt)
    content((pos, 0.96), anchor: "north", [#text(size: 6.5pt)[#lbl]])
  }

  // Tacche asse Y (log10: 10, 20, 30, 50, 100)
  for (yy, lbl) in ((1.20, "10"), (2.13, "20"), (2.68, "30"), (3.37, "50"), (4.30, "100")) {
    line((5.4, yy), (5.52, yy), stroke: 0.6pt)
    content((5.22, yy), anchor: "east", [#text(size: 6.5pt)[#lbl]])
  }

  // Curve S-N convergenti a ~55% R_m per N = 10^4
  line((5.4, 3.48), (9.8, 2.72), stroke: (paint: blue, thickness: 1.2pt))
  content((7.95, 3.25), anchor: "south", [#text(fill: blue, size: 7pt, weight: "bold")[Rullata]])

  line((5.4, 3.48), (9.3, 1.52), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  content((7.48, 2.02), anchor: "north-east", [#text(fill: red.transparentize(10%), size: 7pt, weight: "bold")[Non rullata]])
})
