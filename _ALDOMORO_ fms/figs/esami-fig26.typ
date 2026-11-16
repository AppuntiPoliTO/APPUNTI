// Figura estratta da esami.typ (riga 1905) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Sezione circolare piena
  circle((0, 0), radius: 0.85, stroke: 1pt)

  // Assi baricentrici y, z, x (in rosso come nell'originale)
  line((0, 0), (0, 0.55), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((0, 0), (-0.55, 0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  circle((0, 0), radius: 0.04, fill: red, stroke: red)

  // Quota diametro D
  line((-1.05, -0.6), (-0.72, -0.45), stroke: 0.6pt, mark: (end: ">"))
  line((1.05, 0.6), (0.72, 0.45), stroke: 0.6pt, mark: (end: ">"))

  // Punto più sollecitato P al lembo inferiore (0, -0.85)
  circle((0, -0.85), radius: 0.07, fill: black)

  // Diagramma sigma^N = N/A (compressione uniforme)
  line((1.65, -0.85), (1.65, 0.85), stroke: 1pt)
  line((1.25, -0.85), (1.25, 0.85), stroke: 1pt)
  line((1.65, 0.85), (1.25, 0.85), stroke: 0.6pt, mark: (end: ">"))
  line((1.65, 0.3), (1.25, 0.3), stroke: 0.6pt, mark: (end: ">"))
  line((1.65, -0.3), (1.25, -0.3), stroke: 0.6pt, mark: (end: ">"))
  line((1.65, -0.85), (1.25, -0.85), stroke: 0.6pt, mark: (end: ">"))

  // Diagramma a farfalla sigma^F = -M_f / I_z * y
  line((2.9, -0.85), (2.9, 0.85), stroke: 1pt)
  line((2.3, -0.85), (3.5, 0.85), stroke: 1pt)
  line((2.9, 0.85), (3.5, 0.85), stroke: 0.6pt, mark: (end: ">"))
  line((2.9, 0.45), (3.22, 0.45), stroke: 0.6pt, mark: (end: ">"))
  line((2.9, -0.45), (2.58, -0.45), stroke: 0.6pt, mark: (end: ">"))
  line((2.9, -0.85), (2.3, -0.85), stroke: 0.6pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((0.1, 0.45), text(size: 7pt, fill: red)[$y$], anchor: "west")
  content((-0.45, -0.15), text(size: 7pt, fill: red)[$z$], anchor: "north")
  content((0.1, -0.05), text(size: 7pt, fill: red)[$x$], anchor: "west")
  content((0.95, 0.72), text(size: 7pt)[$D$], anchor: "south")
  content((0, -1.0), text(size: 7pt)[PUNTO + SOLL.], anchor: "north")
  content((1.98, 0), text(size: 7pt)[$+$], anchor: "center")
  content((1.45, -1.05), text(size: 7pt)[$sigma^N = N / A$], anchor: "north")
  content((2.95, -1.05), text(size: 7pt)[$sigma^F = - M_f / I_z dot y$], anchor: "north")
})
