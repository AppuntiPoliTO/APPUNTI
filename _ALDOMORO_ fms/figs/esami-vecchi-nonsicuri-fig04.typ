// Figura estratta da esami-vecchi-nonsicuri.typ (riga 338) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Assi cartesiani (sigma, tau)
  line((0.6, 2.2), (6.0, 2.2), mark: (end: ">"), stroke: 0.8pt)
  line((1.2, 0.6), (1.2, 4.0), mark: (end: ">"), stroke: 0.8pt)

  // Semicerchio superiore (tratto continuo) e inferiore (tratteggiato)
  arc((2.90, 2.20), start: 0deg, stop: 180deg, radius: 1.22, anchor: "origin", stroke: (paint: blue.darken(30%), thickness: 1pt))
  arc((2.90, 2.20), start: 180deg, stop: 360deg, radius: 1.22, anchor: "origin", stroke: (paint: blue.darken(30%), thickness: 0.8pt, dash: "dashed"))

  // Diametro tra (sigma_xx=50, tau_xz=50) -> (2.20, 3.20) e (sigma_zz=120, -50) -> (3.60, 1.20)
  line((2.20, 3.20), (3.60, 1.20), stroke: 0.6pt)

  // Linee tratteggiate di proiezione
  line((1.20, 3.20), (2.20, 3.20), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.20, 3.20), (2.20, 2.20), stroke: (dash: "dashed", thickness: 0.5pt))
  line((1.20, 1.20), (3.60, 1.20), stroke: (dash: "dashed", thickness: 0.5pt))
  line((3.60, 2.20), (3.60, 1.20), stroke: (dash: "dashed", thickness: 0.5pt))

  // Punti notevoli sull'asse sigma
  circle((1.68, 2.20), radius: 0.05, fill: blue.darken(30%))
  circle((2.90, 2.20), radius: 0.04, fill: black)
  circle((4.12, 2.20), radius: 0.05, fill: blue.darken(30%))
  circle((5.20, 2.20), radius: 0.05, fill: blue.darken(30%))

  // Tacche di riferimento
  line((1.13, 3.20), (1.27, 3.20), stroke: 0.6pt)
  line((1.13, 1.20), (1.27, 1.20), stroke: 0.6pt)
  line((2.20, 2.13), (2.20, 2.27), stroke: 0.6pt)
  line((3.60, 2.13), (3.60, 2.27), stroke: 0.6pt)

  // Etichette (tutte con text(size: 7pt))
  content((1.05, 3.9), text(size: 7pt)[$tau thin ["MPa"]$], anchor: "east")
  content((5.9, 2.05), text(size: 7pt)[$sigma thin ["MPa"]$], anchor: "north")
  content((1.08, 3.20), text(size: 7pt)[$tau_(x z) = 50$], anchor: "east")
  content((1.08, 1.20), text(size: 7pt)[$-50$], anchor: "east")
  content((2.65, 2.65), text(size: 7pt)[$r$], anchor: "south-west")
  content((1.62, 2.05), text(size: 7pt)[$sigma_b$], anchor: "north")
  content((2.20, 2.02), text(size: 7pt)[$50$], anchor: "north")
  content((2.20, 1.65), text(size: 7pt)[$sigma_(x x)$], anchor: "north")
  content((2.90, 2.05), text(size: 7pt)[$sigma_C$], anchor: "north")
  content((3.55, 2.05), text(size: 7pt)[$120$], anchor: "north")
  content((3.75, 1.65), text(size: 7pt)[$sigma_(z z)$], anchor: "north")
  content((4.18, 2.05), text(size: 7pt)[$sigma_a$], anchor: "north")
  content((5.20, 2.05), text(size: 7pt)[$sigma_(y y)$], anchor: "north")
})
