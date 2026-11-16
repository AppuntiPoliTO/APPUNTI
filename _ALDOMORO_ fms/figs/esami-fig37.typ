// Figura estratta da esami.typ (riga 2669) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Linee di costruzione orizzontali tratteggiate grigie
  line((1.2, 1.0), (6.7, 1.0), stroke: (paint: luma(200), thickness: 0.6pt))
  line((1.2, 0.7), (6.7, 0.7), stroke: (paint: luma(200), thickness: 0.6pt))
  line((1.2, 0), (6.7, 0), stroke: (paint: luma(200), thickness: 0.6pt))
  line((1.2, -0.7), (6.7, -0.7), stroke: (paint: luma(200), thickness: 0.6pt))
  line((1.2, -1.0), (6.7, -1.0), stroke: (paint: luma(200), thickness: 0.6pt))

  // Sezione a doppio T
  line((-1.2, -1.0), (1.2, -1.0), (1.2, -0.7), (0.18, -0.7), (0.18, 0.7), (1.2, 0.7), (1.2, 1.0), (-1.2, 1.0), (-1.2, 0.7), (-0.18, 0.7), (-0.18, -0.7), (-1.2, -0.7), close: true, stroke: 1.2pt)

  // Assi z, y e quote B, b, h, H
  line((-1.2, 0), (1.45, 0), stroke: 0.6pt, mark: (end: ">"))
  line((0, 1.25), (0, -1.35), stroke: 0.6pt, mark: (end: ">"))
  line((-0.18, 0.25), (0.18, 0.25), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((1.6, -0.7), (1.6, 0.7), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((1.95, -1.0), (1.95, 1.0), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((-1.2, -1.65), (1.2, -1.65), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Diagramma lineare a farfalla sigma_x (in rosso)
  line((3.2, -1.0), (3.2, 1.0), stroke: (paint: red, thickness: 0.8pt))
  line((2.55, -1.0), (3.85, 1.0), stroke: (paint: red, thickness: 0.8pt))
  line((3.2, 1.0), (3.85, 1.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((3.2, 0.65), (3.62, 0.65), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((3.2, 0.35), (3.42, 0.35), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((3.2, -0.35), (2.98, -0.35), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((3.2, -0.65), (2.78, -0.65), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((3.2, -1.0), (2.55, -1.0), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Diagramma parabolico a gradini tau_yz (in rosso)
  line((5.0, -1.0), (5.0, 1.0), stroke: (paint: red, thickness: 0.8pt))
  bezier((5.0, 1.0), (5.6, 0.7), (5.3, 0.92), (5.5, 0.8), stroke: (paint: red, thickness: 0.8pt))
  line((5.6, 0.7), (6.3, 0.7), stroke: (paint: red, thickness: 0.8pt))
  bezier((6.3, 0.7), (6.3, -0.7), (6.52, 0.25), (6.52, -0.25), stroke: (paint: red, thickness: 0.8pt))
  line((6.3, -0.7), (5.6, -0.7), stroke: (paint: red, thickness: 0.8pt))
  bezier((5.6, -0.7), (5.0, -1.0), (5.5, -0.8), (5.3, -0.92), stroke: (paint: red, thickness: 0.8pt))

  // Frecce interne del diagramma tau_yz
  line((5.0, 0.82), (5.42, 0.82), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.0, 0.52), (6.38, 0.52), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.0, 0.18), (6.46, 0.18), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.0, -0.18), (6.46, -0.18), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.0, -0.52), (6.38, -0.52), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))
  line((5.0, -0.82), (5.42, -0.82), stroke: (paint: red, thickness: 0.6pt), mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((-0.05, 0.4), text(size: 7pt)[$b$], anchor: "south")
  content((1.38, -0.12), text(size: 7pt)[$z$], anchor: "north")
  content((0.12, -1.25), text(size: 7pt)[$y$], anchor: "west")
  content((1.7, 0.1), text(size: 7pt)[$h$], anchor: "west")
  content((2.05, 0.05), text(size: 7pt)[$H$], anchor: "west")
  content((0, -1.6), text(size: 7pt)[$B$], anchor: "south")
  content((3.45, 1.15), text(size: 7pt, fill: red)[$sigma_x$], anchor: "south")
  content((5.5, 1.15), text(size: 7pt, fill: red)[$tau_(y z)$], anchor: "south")
})
