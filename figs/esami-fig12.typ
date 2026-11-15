// Figura estratta da esami.typ (riga 968) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 3cm, {
  import draw: *

  // Struttura principale
  line((0, 0), (0, 1.6), (1.42, 1.6), stroke: 1pt)
  line((1.6, 0), (1.6, 3.2), stroke: 1pt)
  line((1.6, 1.6), (3.2, 1.6), stroke: 1pt)

  // Cerniera interna a sinistra di C
  arc((1.51, 1.6), start: 90deg, stop: 270deg, radius: 0.09, anchor: "origin", stroke: 1pt)
  circle((1.51, 1.6), radius: 0.03, fill: black)

  // Vincolo in A (carrello ad asse orizzontale)
  line((0, 0), (-0.2, 0.12), (-0.2, -0.12), close: true, stroke: 0.6pt)
  circle((-0.24, 0.07), radius: 0.04, stroke: 0.6pt)
  circle((-0.24, -0.07), radius: 0.04, stroke: 0.6pt)
  line((-0.28, -0.18), (-0.28, 0.18), stroke: 0.6pt)

  // Vincolo in D (cerniera fissa a terra)
  line((3.2, 1.6), (3.08, 1.38), (3.32, 1.38), close: true, stroke: 0.6pt)
  line((3.02, 1.38), (3.38, 1.38), stroke: 0.6pt)

  // Vincolo in E (carrello ad asse verticale in alto)
  line((1.6, 3.2), (1.48, 3.38), (1.72, 3.38), close: true, stroke: 0.6pt)
  circle((1.53, 3.42), radius: 0.04, stroke: 0.6pt)
  circle((1.67, 3.42), radius: 0.04, stroke: 0.6pt)
  line((1.42, 3.46), (1.78, 3.46), stroke: 0.6pt)

  // Carichi applicati (in rosso come nell'originale)
  line((-0.65, 1.6), (-0.02, 1.6), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  line((0.95, 0), (1.58, 0), stroke: (paint: red, thickness: 1pt), mark: (end: ">"))
  arc((1.3, 1.6), start: 110deg, stop: 250deg, radius: 0.28, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (start: ">"))

  // Carico distribuito q su CE
  line((2.05, 1.6), (2.05, 3.2), stroke: (paint: red, thickness: 0.6pt))
  line((2.05, 1.6), (1.62, 1.6), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((2.05, 2.0), (1.62, 2.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((2.05, 2.4), (1.62, 2.4), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((2.05, 2.8), (1.62, 2.8), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((2.05, 3.2), (1.62, 3.2), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Quote L
  line((0, -0.45), (3.2, -0.45), stroke: 0.6pt)
  line((0, -0.35), (0, -0.55), stroke: 0.6pt)
  line((1.6, -0.35), (1.6, -0.55), stroke: 0.6pt)
  line((3.2, -0.35), (3.2, -0.55), stroke: 0.6pt)

  line((3.75, 0), (3.75, 3.2), stroke: 0.6pt)
  line((3.65, 0), (3.85, 0), stroke: 0.6pt)
  line((3.65, 1.6), (3.85, 1.6), stroke: 0.6pt)
  line((3.65, 3.2), (3.85, 3.2), stroke: 0.6pt)

  // Sezione circolare piena di diametro D (a destra)
  circle((4.85, 0.7), radius: 0.52, stroke: 1pt)
  line((4.8, 0.7), (4.9, 0.7), stroke: 0.6pt)
  line((4.85, 0.65), (4.85, 0.75), stroke: 0.6pt)
  line((4.2, 0.05), (4.46, 0.31), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.5, 1.35), (5.24, 1.09), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Etichette (tutte con text(size: 7pt))
  content((0.12, -0.05), text(size: 7pt)[$A$], anchor: "west")
  content((0.05, 1.72), text(size: 7pt)[$B$], anchor: "south")
  content((1.45, 1.38), text(size: 7pt)[$C$], anchor: "north")
  content((3.2, 1.72), text(size: 7pt)[$D$], anchor: "south")
  content((1.48, 3.15), text(size: 7pt)[$E$], anchor: "east")
  content((1.72, -0.05), text(size: 7pt)[$F$], anchor: "west")
  content((-0.45, 1.72), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.2, 0.12), text(size: 7pt, fill: red)[$F$], anchor: "south")
  content((1.05, 1.92), text(size: 7pt, fill: red)[$M$], anchor: "south")
  content((2.15, 2.55), text(size: 7pt, fill: red)[$q$], anchor: "west")
  content((0.8, -0.55), text(size: 7pt)[$L$], anchor: "north")
  content((2.4, -0.55), text(size: 7pt)[$L$], anchor: "north")
  content((3.9, 0.8), text(size: 7pt)[$L$], anchor: "west")
  content((3.9, 2.4), text(size: 7pt)[$L$], anchor: "west")
  content((5.55, 1.4), text(size: 7pt, fill: red)[$D$], anchor: "west")
})
