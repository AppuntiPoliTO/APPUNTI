// Figura estratta da _immagini_orfane/figs_orfane/ecm-c12-p1-04.typ (riga 2) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Titolo
  content((3.70, 4.65), text(size: 11pt, fill: blue.darken(20%))[*_Principali giunti_*], anchor: "south")

  // 1. Giunti rigidi
  content((1.68, 3.65), text(size: 8pt)[Giunti rigidi], anchor: "east")
  line((0.40, 3.50), (1.68, 3.50), stroke: 0.55pt)
  arc((1.95, 4.02), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, 4.02), (1.87, 3.73), stroke: 0.65pt)
  arc((1.79, 3.73), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((1.79, 3.57), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, 3.57), (1.87, 3.28), stroke: 0.65pt)
  arc((1.95, 3.28), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((2.05, 4.00), text(size: 7.5pt)[a manicotto], anchor: "west")
  content((2.05, 3.65), text(size: 7.5pt)[a flange], anchor: "west")
  content((2.05, 3.30), text(size: 7.5pt)[a gusci], anchor: "west")

  // 2. Giunti elastici
  content((1.68, 1.53), text(size: 8pt)[Giunti elastici], anchor: "east")
  line((0.26, 1.38), (1.68, 1.38), stroke: 0.55pt)
  arc((1.95, 2.17), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, 2.17), (1.87, 1.61), stroke: 0.65pt)
  arc((1.79, 1.61), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((1.79, 1.45), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, 1.45), (1.87, 0.88), stroke: 0.65pt)
  arc((1.95, 0.88), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  // Ramo metallici
  content((2.05, 2.10), text(size: 7.5pt)[metallici], anchor: "west")
  arc((3.25, 2.47), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.17, 2.47), (3.17, 2.18), stroke: 0.65pt)
  arc((3.09, 2.18), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((3.09, 2.02), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.17, 2.02), (3.17, 1.73), stroke: 0.65pt)
  arc((3.25, 1.73), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((3.35, 2.42), text(size: 7.5pt)[torsionalmente elastici], anchor: "west")
  arc((6.30, 2.62), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((6.22, 2.62), (6.22, 2.50), stroke: 0.65pt)
  arc((6.14, 2.50), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((6.14, 2.34), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((6.22, 2.34), (6.22, 2.23), stroke: 0.65pt)
  arc((6.30, 2.23), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((6.40, 2.60), text(size: 7.5pt)[FORST], anchor: "west")
  content((6.40, 2.25), text(size: 7.5pt)[BIBBY], anchor: "west")
  content((3.35, 1.75), text(size: 7.5pt)[torsionalmente rigidi: a biellette], anchor: "west")

  // Ramo elastomerici
  content((2.05, 0.95), text(size: 7.5pt)[elastomerici], anchor: "west")
  arc((3.80, 1.27), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.72, 1.27), (3.72, 1.03), stroke: 0.65pt)
  arc((3.64, 1.03), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((3.64, 0.87), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.72, 0.87), (3.72, 0.63), stroke: 0.65pt)
  arc((3.80, 0.63), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((3.90, 1.25), text(size: 7.5pt)[torsionalmente elastici: Periflex], anchor: "west")
  content((3.90, 0.68), text(size: 7.5pt)[torsionalmente rigidi], anchor: "west")
  arc((6.40, 0.87), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((6.32, 0.87), (6.32, 0.76), stroke: 0.65pt)
  arc((6.24, 0.76), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((6.24, 0.60), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((6.32, 0.60), (6.32, 0.48), stroke: 0.65pt)
  arc((6.40, 0.48), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((6.50, 0.85), text(size: 7.5pt)[NORTON], anchor: "west")
  content((6.50, 0.50), text(size: 7.5pt)[SteckFlex], anchor: "west")

  // 3. Giunti articolati
  content((1.68, -1.55), text(size: 8pt)[Giunti articolati], anchor: "east")
  line((0.06, -1.70), (1.68, -1.70), stroke: 0.55pt)
  arc((1.95, -0.08), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, -0.08), (1.87, -1.47), stroke: 0.65pt)
  arc((1.79, -1.47), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((1.79, -1.63), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((1.87, -1.63), (1.87, -3.02), stroke: 0.65pt)
  arc((1.95, -3.02), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((2.05, -0.10), text(size: 7.5pt)[assiali: a perni], anchor: "west")
  content((2.05, -0.50), text(size: 7.5pt)[trasversali: Oldham], anchor: "west")

  // Ramo angolari
  content((2.05, -1.53), text(size: 7.5pt)[angolari], anchor: "west")
  arc((3.20, -1.08), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.12, -1.08), (3.12, -1.45), stroke: 0.65pt)
  arc((3.04, -1.45), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((3.04, -1.61), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((3.12, -1.61), (3.12, -1.97), stroke: 0.65pt)
  arc((3.20, -1.97), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((3.30, -1.13), text(size: 7.5pt)[comuni], anchor: "west")
  arc((4.35, -0.93), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((4.27, -0.93), (4.27, -1.05), stroke: 0.65pt)
  arc((4.19, -1.05), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((4.19, -1.21), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((4.27, -1.21), (4.27, -1.32), stroke: 0.65pt)
  arc((4.35, -1.32), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((4.45, -0.95), text(size: 7.5pt)[cardano semplice], anchor: "west")
  content((4.45, -1.30), text(size: 7.5pt)[cardano doppio], anchor: "west")

  content((3.30, -1.93), text(size: 7.5pt)[omocinetici], anchor: "west")
  arc((4.75, -1.73), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((4.67, -1.73), (4.67, -1.85), stroke: 0.65pt)
  arc((4.59, -1.85), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((4.59, -2.01), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((4.67, -2.01), (4.67, -2.12), stroke: 0.65pt)
  arc((4.75, -2.12), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((4.85, -1.75), text(size: 7.5pt)[R-Zeppa], anchor: "west")
  content((4.85, -2.10), text(size: 7.5pt)[Weiss], anchor: "west")

  // Ramo misti
  content((2.05, -2.95), text(size: 7.5pt)[misti], anchor: "west")
  arc((2.90, -2.58), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((2.82, -2.58), (2.82, -2.87), stroke: 0.65pt)
  arc((2.74, -2.87), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  arc((2.74, -3.03), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)
  line((2.82, -3.03), (2.82, -3.32), stroke: 0.65pt)
  arc((2.90, -3.32), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 0.65pt)

  content((3.00, -2.60), text(size: 7.5pt)[a denti], anchor: "west")
  content((3.00, -2.95), text(size: 7.5pt)[R-zeppa modificato], anchor: "west")
  content((3.00, -3.30), text(size: 7.5pt)[tripode], anchor: "west")
})
