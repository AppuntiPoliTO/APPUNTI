// Figura estratta da esami.typ (riga 1285) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 3cm, {
  import draw: *

  // Struttura
  line((0, 0), (0, 1.5), (1.32, 1.5), stroke: 1pt)
  line((1.5, 0), (1.5, 3.0), stroke: 1pt)
  line((1.5, 1.5), (3.0, 1.5), stroke: 1pt)

  // Cerniera interna a sinistra di C
  arc((1.41, 1.5), start: 90deg, stop: 270deg, radius: 0.09, anchor: "origin", stroke: 1pt)
  circle((1.41, 1.5), radius: 0.03, fill: black)

  // Reazioni vincolari H_A, V_E, H_D, V_D
  line((-0.55, 0), (-0.02, 0), stroke: 1pt, mark: (end: ">"))
  line((1.5, 3.0), (1.5, 3.65), stroke: 1pt, mark: (end: ">"))
  line((3.0, 1.5), (3.55, 1.5), stroke: 1pt, mark: (end: ">"))
  line((3.0, 0.9), (3.0, 1.48), stroke: 1pt, mark: (end: ">"))

  // Carichi attivi F, M, q
  line((-0.6, 1.5), (-0.02, 1.5), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0.9, 0), (1.48, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((1.22, 1.5), start: 110deg, stop: 250deg, radius: 0.26, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  line((1.92, 1.5), (1.92, 3.0), stroke: (paint: red, thickness: 0.6pt))
  line((1.92, 1.5), (1.52, 1.5), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.92, 1.88), (1.52, 1.88), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.92, 2.25), (1.52, 2.25), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.92, 2.62), (1.52, 2.62), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((1.92, 3.0), (1.52, 3.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((-0.3, 0.12), text(size: 7pt)[$H_A$], anchor: "south")
  content((0.12, -0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.05, 1.62), text(size: 7pt)[$B$], anchor: "south")
  content((1.35, 1.28), text(size: 7pt)[$C$], anchor: "north")
  content((2.9, 1.62), text(size: 7pt)[$D$], anchor: "south")
  content((1.38, 2.95), text(size: 7pt)[$E$], anchor: "east")
  content((1.62, -0.05), text(size: 7pt)[$F$], anchor: "west")
  content((1.62, 3.45), text(size: 7pt)[$V_E$], anchor: "west")
  content((3.35, 1.62), text(size: 7pt)[$H_D$], anchor: "south")
  content((3.12, 1.15), text(size: 7pt)[$V_D$], anchor: "west")
  content((-0.4, 1.62), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.15, 0.12), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((0.98, 1.8), text(size: 7pt, fill: red)[$M$], anchor: "south")
  content((2.02, 2.35), text(size: 7pt, fill: red)[$q$], anchor: "west")
})
