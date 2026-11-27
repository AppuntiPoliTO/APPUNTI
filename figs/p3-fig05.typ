// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Asse di simmetria
  line((-2.35, 0), (2.45, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Semialberi
  line((-1.95, 0.42), (-0.12, 0.42), (-0.12, -0.42), (-1.95, -0.42), stroke: 0.8pt)
  line((1.95, 0.42), (0.12, 0.42), (0.12, -0.42), (1.95, -0.42), stroke: 0.8pt)

  // Linguette / chiavette
  line((-1.15, 0.085), (-0.38, 0.085), stroke: 0.7pt)
  line((-1.15, -0.085), (-0.38, -0.085), stroke: 0.7pt)
  arc((-1.15, 0), start: 90deg, stop: 270deg, radius: 0.085, anchor: "origin", stroke: 0.7pt)
  arc((-0.38, 0), start: -90deg, stop: 90deg, radius: 0.085, anchor: "origin", stroke: 0.7pt)

  line((0.35, 0.085), (1.65, 0.085), stroke: 0.7pt)
  line((0.35, -0.085), (1.65, -0.085), stroke: 0.7pt)
  arc((0.35, 0), start: 90deg, stop: 270deg, radius: 0.085, anchor: "origin", stroke: 0.7pt)
  arc((1.65, 0), start: -90deg, stop: 90deg, radius: 0.085, anchor: "origin", stroke: 0.7pt)

  // Contorno semigiunto sinistro (superiore e inferiore)
  line((-1.35, 0.42), (-0.12, 0.42), (-0.12, 1.12), (-0.35, 1.12), (-0.35, 2.660), (0.72, 2.868), (0.72, 3.15), (-0.68, 3.15), (-0.68, 1.12), (-1.35, 1.12), close: true, stroke: 0.85pt)
  line((-1.35, -0.42), (-0.12, -0.42), (-0.12, -1.12), (-0.35, -1.12), (-0.35, -2.660), (0.72, -2.868), (0.72, -3.15), (-0.68, -3.15), (-0.68, -1.12), (-1.35, -1.12), close: true, stroke: 0.85pt)

  // Linea di gioco verticale interna
  line((-0.27, 1.12), (-0.27, 2.38), stroke: 0.55pt)
  line((-0.27, -1.12), (-0.27, -2.38), stroke: 0.55pt)

  // Contorno semigiunto destro (superiore e inferiore)
  line((0.12, 0.42), (1.35, 0.42), (1.35, 1.12), (0.85, 1.12), (0.85, 2.893), (-0.27, 2.676), (-0.27, 2.38), (0.50, 2.38), (0.50, 1.12), (0.12, 1.12), close: true, stroke: 0.85pt)
  line((0.12, -0.42), (1.35, -0.42), (1.35, -1.12), (0.85, -1.12), (0.85, -2.893), (-0.27, -2.676), (-0.27, -2.38), (0.50, -2.38), (0.50, -1.12), (0.12, -1.12), close: true, stroke: 0.85pt)

  // Tratteggio semigiunto sinistro superiore (+45°)
  line((-0.37, 0.42), (-0.12, 0.67), stroke: 0.4pt)
  line((-0.62, 0.42), (-0.12, 0.92), stroke: 0.4pt)
  line((-0.87, 0.42), (-0.17, 1.12), stroke: 0.4pt)
  line((-1.12, 0.42), (-0.42, 1.12), stroke: 0.4pt)
  line((-1.35, 0.44), (-0.67, 1.12), stroke: 0.4pt)
  line((-1.35, 0.69), (-0.92, 1.12), stroke: 0.4pt)
  line((-1.35, 0.94), (-1.17, 1.12), stroke: 0.4pt)
  line((-0.68, 1.24), (-0.35, 1.57), stroke: 0.4pt)
  line((-0.68, 1.49), (-0.35, 1.82), stroke: 0.4pt)
  line((-0.68, 1.74), (-0.35, 2.07), stroke: 0.4pt)
  line((-0.68, 1.99), (-0.35, 2.32), stroke: 0.4pt)
  line((-0.68, 2.24), (-0.35, 2.57), stroke: 0.4pt)
  line((-0.68, 2.49), (-0.02, 3.15), stroke: 0.4pt)
  line((-0.68, 2.74), (-0.27, 3.15), stroke: 0.4pt)
  line((-0.68, 2.99), (-0.52, 3.15), stroke: 0.4pt)
  line((-0.24, 2.681), (0.23, 3.15), stroke: 0.4pt)
  line((0.07, 2.742), (0.48, 3.15), stroke: 0.4pt)
  line((0.38, 2.802), (0.72, 3.14), stroke: 0.4pt)
  line((0.69, 2.862), (0.72, 2.89), stroke: 0.4pt)

  // Tratteggio semigiunto sinistro inferiore (+45°)
  line((-0.42, -1.12), (-0.12, -0.82), stroke: 0.4pt)
  line((-0.67, -1.12), (-0.12, -0.57), stroke: 0.4pt)
  line((-0.92, -1.12), (-0.22, -0.42), stroke: 0.4pt)
  line((-1.17, -1.12), (-0.47, -0.42), stroke: 0.4pt)
  line((-1.35, -1.05), (-0.72, -0.42), stroke: 0.4pt)
  line((-1.35, -0.80), (-0.97, -0.42), stroke: 0.4pt)
  line((-1.35, -0.55), (-1.22, -0.42), stroke: 0.4pt)
  line((-0.68, -1.55), (-0.35, -1.22), stroke: 0.4pt)
  line((-0.68, -1.80), (-0.35, -1.47), stroke: 0.4pt)
  line((-0.68, -2.05), (-0.35, -1.72), stroke: 0.4pt)
  line((-0.68, -2.30), (-0.35, -1.97), stroke: 0.4pt)
  line((-0.68, -2.55), (-0.35, -2.22), stroke: 0.4pt)
  line((-0.68, -2.80), (-0.35, -2.47), stroke: 0.4pt)
  line((-0.68, -3.05), (-0.31, -2.668), stroke: 0.4pt)
  line((-0.53, -3.15), (-0.09, -2.710), stroke: 0.4pt)
  line((-0.28, -3.15), (0.12, -2.751), stroke: 0.4pt)
  line((-0.03, -3.15), (0.33, -2.792), stroke: 0.4pt)
  line((0.22, -3.15), (0.54, -2.833), stroke: 0.4pt)
  line((0.47, -3.15), (0.72, -2.90), stroke: 0.4pt)

  // Tratteggio semigiunto destro superiore (-45°)
  line((0.12, 0.67), (0.37, 0.42), stroke: 0.4pt)
  line((0.12, 0.92), (0.62, 0.42), stroke: 0.4pt)
  line((0.17, 1.12), (0.87, 0.42), stroke: 0.4pt)
  line((0.42, 1.12), (1.12, 0.42), stroke: 0.4pt)
  line((0.50, 1.29), (1.35, 0.44), stroke: 0.4pt)
  line((0.92, 1.12), (1.35, 0.69), stroke: 0.4pt)
  line((1.17, 1.12), (1.35, 0.94), stroke: 0.4pt)
  line((0.50, 1.54), (0.85, 1.19), stroke: 0.4pt)
  line((0.50, 1.79), (0.85, 1.44), stroke: 0.4pt)
  line((0.50, 2.04), (0.85, 1.69), stroke: 0.4pt)
  line((0.50, 2.29), (0.85, 1.94), stroke: 0.4pt)
  line((-0.27, 2.61), (-0.04, 2.38), stroke: 0.4pt)
  line((-0.11, 2.707), (0.21, 2.38), stroke: 0.4pt)
  line((0.10, 2.748), (0.46, 2.38), stroke: 0.4pt)
  line((0.31, 2.789), (0.85, 2.25), stroke: 0.4pt)
  line((0.52, 2.829), (0.85, 2.50), stroke: 0.4pt)
  line((0.73, 2.870), (0.85, 2.75), stroke: 0.4pt)

  // Tratteggio semigiunto destro inferiore (-45°)
  line((0.12, -0.82), (0.42, -1.12), stroke: 0.4pt)
  line((0.12, -0.57), (0.67, -1.12), stroke: 0.4pt)
  line((0.22, -0.42), (0.92, -1.12), stroke: 0.4pt)
  line((0.47, -0.42), (1.17, -1.12), stroke: 0.4pt)
  line((0.72, -0.42), (1.35, -1.05), stroke: 0.4pt)
  line((0.97, -0.42), (1.35, -0.80), stroke: 0.4pt)
  line((1.22, -0.42), (1.35, -0.55), stroke: 0.4pt)
  line((0.50, -1.22), (0.85, -1.57), stroke: 0.4pt)
  line((0.50, -1.47), (0.85, -1.82), stroke: 0.4pt)
  line((0.50, -1.72), (0.85, -2.07), stroke: 0.4pt)
  line((0.50, -1.97), (0.85, -2.32), stroke: 0.4pt)
  line((0.50, -2.22), (0.85, -2.57), stroke: 0.4pt)
  line((-0.24, -2.38), (0.06, -2.740), stroke: 0.4pt)
  line((0.01, -2.38), (0.37, -2.800), stroke: 0.4pt)
  line((0.26, -2.38), (0.68, -2.860), stroke: 0.4pt)
  line((0.51, -2.38), (0.85, -2.72), stroke: 0.4pt)

  // Linee tratteggiate di costruzione e angolo alpha a destra
  line((-2.30, 2.38), (2.45, 2.38), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-1.79, 2.38), (2.25, 3.165), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((-1.79, 2.38), start: 0deg, stop: 11deg, radius: 3.85, anchor: "origin", stroke: 0.65pt, mark: (start: ">", end: ">", fill: black, scale: 0.45))
  content((2.20, 2.78), text(size: 11pt)[$alpha$], anchor: "west")

  // Schema delle forze sul cono (punto di contatto P = (0.20, 2.767))
  line((-0.134, 4.485), (0.20, 2.767), stroke: 1.8pt + black, mark: (end: ">", fill: black, scale: 0.6))
  line((-0.134, 4.485), (-0.134, 2.767), stroke: 1.3pt + rgb("#e0241c"), mark: (end: ">", fill: rgb("#e0241c"), scale: 0.5))
  line((-0.134, 4.485), (0.20, 4.485), stroke: 1.3pt + rgb("#e0241c"), mark: (end: ">", fill: rgb("#e0241c"), scale: 0.5))
  line((0.20, 4.485), (0.20, 2.767), stroke: (paint: rgb("#e0241c"), thickness: 0.9pt, dash: "dotted"), mark: (end: ">", fill: rgb("#e0241c"), scale: 0.45))
  arc((0.20, 2.767), start: 90deg, stop: 101deg, radius: 0.95, anchor: "origin", stroke: 0.65pt)
  content((0.40, 3.65), text(size: 11pt)[$alpha$], anchor: "west")

  // Forza tangenziale e sua componente orizzontale
  line((0.20, 2.767), (1.15, 2.952), stroke: 1.8pt + black, mark: (end: ">", fill: black, scale: 0.6))
  line((0.20, 2.767), (1.15, 2.767), stroke: 1.4pt + rgb("#e0241c"), mark: (end: ">", fill: rgb("#e0241c"), scale: 0.55))

  // Frecce nere di spinta sul mozzo destro
  line((1.95, 0.78), (1.35, 0.78), stroke: 0.9pt + black, mark: (end: ">", fill: black, scale: 1.0))
  line((1.95, -0.78), (1.35, -0.78), stroke: 0.9pt + black, mark: (end: ">", fill: black, scale: 1.0))

  // Forza assiale F
  line((2.95, 0), (1.95, 0), stroke: 1.8pt + rgb("#e0241c"), mark: (end: ">", fill: none, scale: 0.9))
  content((2.45, 0.25), text(size: 13pt)[$F$], anchor: "south")
})
