// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 921) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.3cm, {
  import draw: *
  // Sezione rettangolare centrata nell'origine (0, 0)
  rect((-0.95, -1.45), (0.95, 1.45), stroke: 1.4pt)

  // Assi principali z e y
  line((1.2, 0.0), (-2.0, 0.0), mark: (end: ">"), stroke: 0.7pt)
  content((-1.85, 0.15), text(size: 7pt)[$z$], anchor: "south")
  line((0.0, -1.95), (0.0, 2.3), mark: (end: ">"), stroke: 0.7pt)
  content((0.15, 2.1), text(size: 7pt)[$y$], anchor: "west")

  // Asse di sollecitazione (blu, secondo quadrante) e carico P (quarto quadrante, 18 gradi da y)
  line((-0.95, 2.8), (0.0, 0.0), stroke: (paint: blue, thickness: 1.1pt))
  content((-0.9, 2.85), text(size: 7pt, fill: blue)[asse di sollecitazione], anchor: "south")
  line((0.0, 0.0), (0.72, -2.15), mark: (end: ">"), stroke: 1.5pt)
  content((0.8, -1.95), text(size: 7pt)[$P$], anchor: "west")

  // Retta perpendicolare all'asse di sollecitazione (tratteggiata, inclinata di 18 gradi su z)
  line((-2.7, -0.9), (3.1, 1.03), stroke: (dash: "dashed", thickness: 0.7pt))
  content((3.15, 0.9), text(size: 7pt)[$perp$ all'asse di sollecitazione], anchor: "west")

  // Asse neutro (rosso, meno inclinato sull'orizzontale perché I_z > I_y => beta > theta)
  line((-2.3, -0.52), (2.3, 0.52), stroke: (paint: red, thickness: 1.2pt))
  content((-2.35, -0.52), text(size: 7pt, fill: red)[asse neutro], anchor: "east")

  // Archi per gli angoli theta (blu) e beta (rosso)
  arc((0, 0), start: 18deg, stop: 90deg, radius: 0.75, anchor: "origin", stroke: (paint: blue, thickness: 0.9pt))
  content((0.28, 0.42), text(size: 7pt, fill: blue)[$theta$])

  arc((0, 0), start: -72deg, stop: 0deg, radius: 0.75, anchor: "origin", stroke: (paint: blue, thickness: 0.9pt))
  content((0.68, -0.62), text(size: 7pt, fill: blue)[$theta$])

  arc((0, 0), start: 13deg, stop: 90deg, radius: 1.15, anchor: "origin", stroke: (paint: red, thickness: 1.1pt))
  content((1.15, 1.0), text(size: 7pt, fill: red)[$beta$], anchor: "west")
})
