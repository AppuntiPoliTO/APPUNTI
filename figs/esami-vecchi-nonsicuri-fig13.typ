// Figura estratta da esami-vecchi-nonsicuri.typ (riga 1212) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // --- PANNELLO 1: TENSIONI NOMINALI ---
  line((0.8, 4.6), (0.8, 6.0), stroke: 1pt)
  line((0.8, 4.75), (0.62, 4.57), stroke: 0.6pt)
  line((0.8, 5.05), (0.62, 4.87), stroke: 0.6pt)
  line((0.8, 5.35), (0.62, 5.17), stroke: 0.6pt)
  line((0.8, 5.65), (0.62, 5.47), stroke: 0.6pt)
  line((0.8, 5.95), (0.62, 5.77), stroke: 0.6pt)

  line((0.8, 5.8), (1.8, 5.8), stroke: 0.9pt)
  arc((2.02, 5.8), start: 180deg, stop: 360deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)
  line((2.24, 5.8), (3.2, 5.8), (3.2, 4.8), (2.24, 4.8), stroke: 0.9pt)
  arc((2.02, 4.8), start: 0deg, stop: 180deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)
  line((1.8, 4.8), (0.8, 4.8), stroke: 0.9pt)

  // Diagramma tensioni nominali uniforme nella gola x=2.02
  line((2.02, 5.02), (2.02, 5.58), stroke: 0.8pt)
  line((2.45, 5.02), (2.45, 5.58), stroke: 0.8pt)
  line((2.02, 5.10), (2.45, 5.10), stroke: 0.6pt)
  line((2.02, 5.23), (2.45, 5.23), stroke: 0.6pt)
  line((2.02, 5.37), (2.45, 5.37), stroke: 0.6pt)
  line((2.02, 5.50), (2.45, 5.50), stroke: 0.6pt)

  // Forza F e assi
  line((3.2, 5.3), (4.0, 5.3), mark: (end: ">"), stroke: 0.9pt)
  line((0.8, 5.3), (1.35, 5.3), mark: (end: ">"), stroke: 0.6pt)

  content((1.2, 5.22), text(size: 7pt)[$x$], anchor: "north")
  content((3.8, 5.38), text(size: 7pt)[$F$], anchor: "south")
  content((2.55, 6.05), text(size: 7pt)[Tensioni nominali], anchor: "south-west")
  content((2.55, 4.55), text(size: 7pt)[Sezione più sollecitata], anchor: "north-west")
  line((2.35, 5.58), (2.52, 6.05), stroke: 0.5pt)
  line((2.02, 5.02), (2.52, 4.55), stroke: 0.5pt)

  // --- PANNELLO 2: TENSIONI REALI ---
  line((0.8, 2.5), (0.8, 3.9), stroke: 1pt)
  line((0.8, 2.65), (0.62, 2.47), stroke: 0.6pt)
  line((0.8, 2.95), (0.62, 2.77), stroke: 0.6pt)
  line((0.8, 3.25), (0.62, 3.07), stroke: 0.6pt)
  line((0.8, 3.55), (0.62, 3.37), stroke: 0.6pt)
  line((0.8, 3.85), (0.62, 3.67), stroke: 0.6pt)

  line((0.8, 3.7), (1.8, 3.7), stroke: 0.9pt)
  arc((2.02, 3.7), start: 180deg, stop: 360deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)
  line((2.24, 3.7), (3.2, 3.7), (3.2, 2.7), (2.24, 2.7), stroke: 0.9pt)
  arc((2.02, 2.7), start: 0deg, stop: 180deg, radius: 0.22, anchor: "origin", stroke: 0.9pt)
  line((1.8, 2.7), (0.8, 2.7), stroke: 0.9pt)

  // Diagramma tensioni reali con picchi sui bordi dell'intaglio
  line((2.02, 2.92), (2.02, 3.48), stroke: 0.8pt)
  line((2.02, 3.48), (2.75, 3.48), stroke: 0.8pt)
  line((2.02, 2.92), (2.75, 2.92), stroke: 0.8pt)
  bezier((2.75, 3.48), (2.75, 2.92), (2.22, 3.35), (2.22, 3.05), stroke: 0.8pt)
  line((2.02, 3.06), (2.40, 3.06), stroke: 0.5pt)
  line((2.02, 3.20), (2.35, 3.20), stroke: 0.5pt)
  line((2.02, 3.34), (2.40, 3.34), stroke: 0.5pt)

  line((3.2, 3.2), (4.0, 3.2), mark: (end: ">"), stroke: 0.9pt)
  line((0.8, 3.2), (1.35, 3.2), mark: (end: ">"), stroke: 0.6pt)
  line((0.8, 3.7), (0.8, 4.15), mark: (end: ">"), stroke: 0.6pt)

  content((1.2, 3.12), text(size: 7pt)[$x$], anchor: "north")
  content((0.92, 4.1), text(size: 7pt)[$y$], anchor: "west")
  content((3.8, 3.28), text(size: 7pt)[$F$], anchor: "south")
  content((2.85, 2.45), text(size: 7pt)[Tensioni reali], anchor: "west")
  line((2.65, 2.92), (2.82, 2.45), stroke: 0.5pt)

  // --- PANNELLO 3: CERCHIO DI MOHR ---
  line((1.9, 1.0), (4.5, 1.0), mark: (end: ">"), stroke: 0.8pt)
  line((2.4, 0.1), (2.4, 2.0), mark: (end: ">"), stroke: 0.8pt)
  circle((3.1, 1.0), radius: 0.70, stroke: 0.9pt)

  content((2.28, 1.95), text(size: 7pt)[$tau$], anchor: "east")
  content((4.45, 0.88), text(size: 7pt)[$sigma$], anchor: "north")
  content((2.28, 0.88), text(size: 7pt)[$0$], anchor: "north")
  content((3.85, 0.85), text(size: 7pt)[$sigma_x equiv sigma_1$], anchor: "north")
})
