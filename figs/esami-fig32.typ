// Figura estratta da esami.typ (riga 2367) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Assi sigma e tau
  line((-1.4, 0), (3.6, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, -1.85), (0, 2.25), stroke: 0.6pt, mark: (end: ">"))

  // Linee di costruzione dei poli (0, -tau_MAX) e (sigma_xx^MAX, +tau_MAX)
  line((0, 1.62), (2.0, 1.62), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.0, 0), (2.0, 1.62), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -1.62), (2.0, 1.62), stroke: 0.6pt)
  line((0, 1.62), (2.0, -1.62), stroke: 0.6pt)

  // Tre semicerchi superiori di Mohr (blu, verde, rosso come nell'originale)
  arc((1.0, 0), start: 0deg, stop: 180deg, radius: 1.90, anchor: "origin", stroke: (paint: blue.darken(20%), thickness: 1pt))
  arc((1.45, 0), start: 0deg, stop: 180deg, radius: 1.45, anchor: "origin", stroke: (paint: green.darken(30%), thickness: 0.8pt))
  arc((-0.45, 0), start: 0deg, stop: 180deg, radius: 0.45, anchor: "origin", stroke: (paint: red.darken(10%), thickness: 0.8pt))

  // Punti notevoli
  circle((1.0, 0), radius: 0.05, fill: black)
  circle((2.0, 1.62), radius: 0.05, fill: black)
  circle((2.0, -1.62), radius: 0.05, fill: black)
  circle((-0.90, 0), radius: 0.05, fill: black)
  circle((0, 0), radius: 0.05, fill: black)
  circle((2.90, 0), radius: 0.05, fill: black)

  // Etichette (con text(size: 7pt))
  content((3.55, -0.15), text(size: 7pt)[$sigma$], anchor: "north")
  content((-0.15, 2.15), text(size: 7pt)[$tau$], anchor: "east")
  content((-0.12, 1.62), text(size: 7pt)[$tau_("MAX")$], anchor: "east")
  content((-0.12, -1.62), text(size: 7pt)[$-tau_("MAX")$], anchor: "east")
  content((-0.90, -0.15), text(size: 7pt)[$sigma_3$], anchor: "north")
  content((0.18, -0.15), text(size: 7pt)[$sigma_2$], anchor: "north")
  content((2.05, -0.15), text(size: 7pt)[$sigma_(x x)^("MAX")$], anchor: "north")
  content((2.95, -0.15), text(size: 7pt)[$sigma_1$], anchor: "north")
})
