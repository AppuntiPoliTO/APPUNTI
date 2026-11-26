// Figura estratta da fatica.typ (riga 3090) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.74cm, {
  // BBox: x in [-4.6, 5.55] (dx=10.15), y in [-0.6, 4.95], length=0.74cm -> larghezza = 7.51 cm <= 8.2 cm
  import draw: *

  // Assi principali
  line((-4.6, 0), (5.10, 0), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
  content((5.20, 0), text(size: 7.5pt)[$sigma_m$], anchor: "west")
  line((0, 0), (0, 4.85), stroke: 0.75pt, mark: (end: ">", scale: 0.55, fill: black))
  content((-0.18, 4.78), text(size: 7.5pt)[$sigma_a$], anchor: "east")

  // Riquadro N = costante
  rect((-4.45, 3.85), (-2.30, 4.55), stroke: 0.6pt)
  content((-3.375, 4.20), text(size: 7pt)[$N = "costante"$], anchor: "center")

  // Rette caratteristiche R = -infinito e R = 0 (tratteggio fine come da slide)
  line((0, 0), (-2.5, 2.5), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(30%)))
  content((-2.55, 2.55), text(size: 7pt)[$R = -infinity$], anchor: "south-east")
  line((0, 0), (2.5, 2.5), stroke: (dash: "dotted", thickness: 0.6pt, paint: black.transparentize(30%)))
  content((2.55, 2.55), text(size: 7pt)[$R = 0$], anchor: "south-west")

  // Limiti statici Rm (4.2) e Rp0.2 (3.2)
  line((-4.2, 0), (0, 4.2), (4.2, 0), stroke: (thickness: 0.55pt, paint: black.transparentize(45%)))
  line((-3.2, 0), (0, 3.2), (3.2, 0), stroke: (thickness: 0.55pt, paint: black.transparentize(45%)))

  // Etichette sugli assi
  content((-4.2, -0.18), text(size: 7pt)[$R_m$], anchor: "north")
  content((-3.2, -0.18), text(size: 7pt)[$R_("p0.2")$], anchor: "north")
  content((3.2, -0.18), text(size: 7pt)[$R_("p0.2")$], anchor: "north")
  content((4.2, -0.18), text(size: 7pt)[$R_m$], anchor: "north")
  content((-0.14, 4.22), text(size: 7pt)[$R_m$], anchor: "south-east")
  content((-0.95, 3.60), text(size: 7pt)[$R_("p0.2")$], anchor: "east")
  line((-0.90, 3.58), (-0.05, 3.22), stroke: 0.55pt, mark: (end: ">", scale: 0.45, fill: black))

  // Poligono provino (tratteggiato, da sigma_D-1 = 1.9)
  line((-3.2, 0), (-1.3, 1.9), (0, 1.9), (2.374, 0.826), (3.2, 0), stroke: (dash: "dashed", thickness: 0.75pt))
  line((2.374, 0.826), (4.2, 0), stroke: (dash: "dotted", thickness: 0.55pt, paint: black.transparentize(45%)))
  content((0.14, 1.95), text(size: 7pt)[$sigma_(D-1)$], anchor: "south-west")

  // Poligono componente (continuo spesso, da sigma_D-1^C = 1.15)
  line((-3.2, 0), (-1.609, 1.591), (0, 1.15), (2.823, 0.377), (3.2, 0), stroke: 1.2pt)
  line((2.823, 0.377), (4.2, 0), stroke: (dash: "dotted", thickness: 0.55pt, paint: black.transparentize(45%)))
  content((0.12, 1.12), text(size: 6.7pt)[$sigma_(D-1)^C$], anchor: "south-west")

  // Chiusura conservativa tratteggiata blu in compressione
  line((-2.05, 1.15), (0, 1.15), stroke: (dash: "dashed", thickness: 0.9pt, paint: blue))

  // Punto di lavoro P
  circle((1.15, 0.45), radius: 0.07, fill: red.transparentize(10%), stroke: none)
  content((1.28, 0.45), text(size: 7.5pt, weight: "bold")[$P$], anchor: "west")

  // Richiami esterni per Provino e Componente
  content((2.85, 2.00), text(size: 7pt)[Provino], anchor: "west")
  line((2.80, 1.96), (1.75, 1.108), stroke: 0.6pt, mark: (end: ">", scale: 0.5, fill: black))
  content((3.35, 1.15), text(size: 7pt)[Componente], anchor: "west")
  line((3.30, 1.11), (2.25, 0.534), stroke: 0.6pt, mark: (end: ">", scale: 0.5, fill: black))
})
