// Figura estratta da 27-50_appunti.typ (riga 354) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))
#let varepsilon = $epsilon$

#canvas(length: 1cm, {
  import draw: *

  // Assi cartesiani
  line((-0.35, 0), (6.2, 0), mark: (end: ">"), stroke: 0.9pt)
  line((0, -0.95), (0, 4.4), mark: (end: ">"), stroke: 0.9pt)

  // Curva principale O-A-B-K-C-D
  line((0, 0), (0.55, 2.0), stroke: 1.2pt)
  bezier((0.55, 2.0), (0.95, 1.95), (0.68, 2.2), (0.82, 1.85), stroke: 1.2pt)
  bezier((0.95, 1.95), (1.9, 2.95), (1.25, 2.4), (1.6, 2.75), stroke: 1.2pt)
  bezier((1.9, 2.95), (3.4, 3.5), (2.3, 3.25), (2.85, 3.5), stroke: 1.2pt)
  bezier((3.4, 3.5), (4.8, 3.0), (3.9, 3.5), (4.4, 3.25), stroke: 1.2pt)

  // Retta di scarico elastico K-L (tratteggiata)
  line((1.9, 2.95), (1.09, 0), stroke: (dash: "dashed", thickness: 0.8pt))

  // Proiezione verticale K-M
  line((1.9, 2.95), (1.9, 0), stroke: 0.6pt)

  // Frecce lungo O-A (carico/scarico elastico reversibile)
  line((0.28, 0.7), (0.42, 1.21), mark: (end: ">"), stroke: 0.6pt)
  line((0.25, 1.4), (0.11, 0.89), mark: (end: ">"), stroke: 0.6pt)

  // Frecce di carico plastico lungo B-K e K-C
  line((1.25, 2.2), (1.55, 2.5), mark: (end: ">"), stroke: 0.6pt)
  line((2.15, 2.98), (2.55, 3.16), mark: (end: ">"), stroke: 0.6pt)

  // Frecce lungo K-L (scarico e successivo ricarico elastico)
  line((1.55, 1.95), (1.41, 1.44), mark: (end: ">"), stroke: 0.6pt)
  line((1.48, 0.95), (1.62, 1.46), mark: (end: ">"), stroke: 0.6pt)

  // Linee di riferimento verticali per le quote sotto l'asse
  line((1.09, 0), (1.09, -0.85), stroke: 0.5pt)
  line((1.9, 0), (1.9, -0.85), stroke: 0.5pt)

  // Quote delle deformazioni plastica (varepsilon_pl) ed elastica (varepsilon_el)
  line((0, -0.65), (1.09, -0.65), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((1.09, -0.65), (1.9, -0.65), mark: (start: ">", end: ">"), stroke: 0.6pt)

  // Etichette degli assi e dell'origine
  content((-0.22, -0.22), [O], anchor: "center")
  content((6.15, -0.25), [$varepsilon$], anchor: "north")
  content((-0.25, 4.3), [$sigma$], anchor: "east")

  // Etichette dei punti notevoli
  content((0.42, 2.05), [A], anchor: "east")
  content((1.0, 1.82), [B], anchor: "west")
  content((1.85, 3.12), [K], anchor: "south")
  content((3.4, 3.65), [C], anchor: "south")
  content((4.92, 3.0), [D], anchor: "west")
  content((0.98, 0.15), [L], anchor: "south")
  content((2.08, 0.15), [M], anchor: "south")

  // Etichette delle deformazioni
  content((0.545, -0.55), [$varepsilon_"pl"$], anchor: "south")
  content((1.495, -0.55), [$varepsilon_"el"$], anchor: "south")
})
