// Figura estratta da 27-50_appunti.typ (riga 33) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.2cm, {
  import draw: *
  // Cilindro sezionato (asse inclinato leggermente di pendenza 0.14)
  // Faccia anteriore (sezione A) centrata in (0, 0)
  circle((0, 0), radius: (0.55, 1.3), stroke: 1.2pt)
  // Profilo superiore e inferiore del tronco cilindrico fino a x = 2.0, y = 0.28
  line((0, 1.3), (2.0, 1.58), stroke: 1.2pt)
  line((0, -1.3), (2.0, -1.02), stroke: 1.2pt)
  // Faccia posteriore (arco visibile a destra)
  arc((2.0, 0.28), start: -90deg, stop: 90deg, radius: (0.55, 1.3), anchor: "origin", stroke: 1.2pt)

  // Asse x e forza P a destra
  line((2.55, 0.36), (5.2, 0.73), mark: (end: ">"), stroke: 0.9pt)
  line((2.55, 0.36), (4.0, 0.56), mark: (end: ">"), stroke: 1.4pt)
  content((3.5, 0.85), text(size: 7pt)[$P$], anchor: "south")
  content((5.1, 0.45), text(size: 7pt)[$x$], anchor: "north")

  // Vettori di distribuzione uniforme sigma_xx sulla sezione A
  line((0.1, 1.0), (-0.95, 0.85), mark: (end: ">"), stroke: 0.7pt)
  line((0.3, 0.85), (-0.75, 0.70), mark: (end: ">"), stroke: 0.7pt)
  line((-0.05, 0.6), (-1.1, 0.45), mark: (end: ">"), stroke: 0.7pt)
  line((0.2, 0.45), (-0.85, 0.30), mark: (end: ">"), stroke: 0.7pt)
  line((-0.1, 0.15), (-1.15, 0.0), mark: (end: ">"), stroke: 0.7pt)
  line((0.35, 0.0), (-0.7, -0.15), mark: (end: ">"), stroke: 0.7pt)
  line((0.0, -0.3), (-1.05, -0.45), mark: (end: ">"), stroke: 0.7pt)
  line((0.3, -0.5), (-0.75, -0.65), mark: (end: ">"), stroke: 0.7pt)
  line((-0.05, -0.75), (-1.1, -0.90), mark: (end: ">"), stroke: 0.7pt)
  line((0.25, -0.9), (-0.8, -1.05), mark: (end: ">"), stroke: 0.7pt)
  line((0.05, -1.1), (-1.0, -1.25), mark: (end: ">"), stroke: 0.7pt)

  content((-0.6, 1.35), text(size: 7pt)[$sigma_(x x)$], anchor: "south")
  content((0.22, 0.35), text(size: 7pt)[$A$], anchor: "center")

  // Risultante N = P a sinistra
  line((-1.4, -0.2), (-2.9, -0.41), mark: (end: ">"), stroke: 1.4pt)
  content((-2.2, 0.0), text(size: 7pt)[$N = P$], anchor: "south")
})
