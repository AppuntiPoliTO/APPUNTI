// Figura estratta da fatica.typ (riga 565) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.10cm, {
  // BBox: x in [-0.2, 7.3] (dx=7.5), y in [0.15, 4.35], length=1.00cm -> larghezza = 7.50 cm <= 8.2 cm
  import draw: *

  // Incastro a sinistra
  rect((0.15, 2.65), (0.50, 3.85), fill: black.transparentize(82%), stroke: 0.9pt)
  for hy in (2.75, 2.95, 3.15, 3.35, 3.55, 3.75) {
    line((0.15, hy), (0.00, hy - 0.14), stroke: 0.6pt)
  }
  content((0.32, 3.98), text(size: 7.5pt)[Incastro], anchor: "south")

  // Provetta a sbalzo + posizioni limite tratteggiate
  line((0.50, 3.25), (4.35, 3.25), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((0.50, 3.25), (4.35, 3.70), (2.0, 3.26), (3.3, 3.45), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
  bezier((0.50, 3.25), (4.35, 2.80), (2.0, 3.24), (3.3, 3.05), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
  rect((0.50, 3.13), (4.35, 3.37), fill: black.transparentize(86%), stroke: 0.95pt)
  content((2.40, 3.55), text(size: 8pt)[Provetta], anchor: "south")

  // Freccia oscillazione
  line((4.65, 2.82), (4.65, 3.68), stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.55))

  // Disco rotante eccentrico e biella
  circle((4.60, 1.45), radius: 0.65, fill: black.transparentize(92%), stroke: 0.85pt)
  circle((4.60, 1.45), radius: 0.045, fill: black, stroke: black)
  line((4.60, 1.45), (4.90, 1.85), stroke: (paint: blue, thickness: 1.0pt))

  // Biella dalla provetta al bottone di manovella
  line((4.35, 3.25), (4.90, 1.85), stroke: 1.35pt)
  circle((4.35, 3.25), radius: 0.075, fill: white, stroke: 0.9pt)
  circle((4.90, 1.85), radius: 0.075, fill: white, stroke: 0.9pt)

  // Rotazione omega (in basso, separata dalla linea di quota)
  arc((4.60, 1.45), start: -135deg, stop: -45deg, radius: 0.85, anchor: "origin", mark: (end: ">", scale: 0.6), stroke: 0.75pt)
  content((4.60, 0.42), text(size: 8pt)[$omega$], anchor: "north")

  // Regolazione componente media
  line((4.60, 1.45), (6.15, 1.45), stroke: (dash: "dotted", thickness: 0.6pt))
  line((6.15, 0.90), (6.15, 2.00), stroke: 0.7pt, mark: (start: ">", end: ">", scale: 0.6))
  content((6.15, 2.12), align(center, text(size: 7.5pt)[Regolazione \ comp. media]), anchor: "south")

  // Regolazione componente alternata (punta direttamente al raggio eccentrico)
  line((3.30, 1.65), (4.68, 1.68), stroke: (paint: blue, thickness: 0.6pt), mark: (end: ">", fill: blue, scale: 0.55))
  content((3.20, 1.65), align(right, text(size: 7.5pt)[Regolazione \ comp. alternata]), anchor: "east")
})
