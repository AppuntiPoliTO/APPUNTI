// Figura estratta da collegamenti saldati.typ (riga 1182) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.3cm, {
  import draw: *

  // Panel 1: Azione meccanica
  content((2.30, 6.15), text(size: 8.5pt)[Azione meccanica], anchor: "center")

  // Upper sub-figure
  line((1.55, 5.20), (2.10, 5.20), (1.95, 5.45), (1.55, 5.45), close: true, fill: luma(242), stroke: none)
  line((2.50, 5.20), (3.05, 5.20), (3.05, 5.45), (2.65, 5.45), close: true, fill: luma(242), stroke: none)
  rect((1.55, 4.83), (3.05, 5.05), fill: luma(242), stroke: none)

  line((1.55, 5.34), (1.69, 5.20), stroke: 0.45pt)
  line((1.58, 5.45), (1.83, 5.20), stroke: 0.45pt)
  line((1.72, 5.45), (1.97, 5.20), stroke: 0.45pt)
  line((1.86, 5.45), (2.085, 5.225), stroke: 0.45pt)

  line((2.553, 5.288), (2.64, 5.20), stroke: 0.45pt)
  line((2.605, 5.375), (2.78, 5.20), stroke: 0.45pt)
  line((2.67, 5.45), (2.92, 5.20), stroke: 0.45pt)
  line((2.81, 5.45), (3.05, 5.21), stroke: 0.45pt)
  line((2.95, 5.45), (3.05, 5.35), stroke: 0.45pt)

  line((1.55, 4.97), (1.69, 4.83), stroke: 0.45pt)
  line((1.61, 5.05), (1.83, 4.83), stroke: 0.45pt)
  line((1.75, 5.05), (1.97, 4.83), stroke: 0.45pt)
  line((1.89, 5.05), (2.11, 4.83), stroke: 0.45pt)
  line((2.03, 5.05), (2.25, 4.83), stroke: 0.45pt)
  line((2.17, 5.05), (2.39, 4.83), stroke: 0.45pt)
  line((2.31, 5.05), (2.53, 4.83), stroke: 0.45pt)
  line((2.45, 5.05), (2.67, 4.83), stroke: 0.45pt)
  line((2.59, 5.05), (2.81, 4.83), stroke: 0.45pt)
  line((2.73, 5.05), (2.95, 4.83), stroke: 0.45pt)
  line((2.87, 5.05), (3.05, 4.87), stroke: 0.45pt)
  line((3.01, 5.05), (3.05, 5.01), stroke: 0.45pt)

  line((0.30, 5.05), (2.26, 5.05), (2.16, 5.20), (0.30, 5.20), close: true, stroke: 0.9pt)
  line((2.34, 5.05), (4.30, 5.05), (4.30, 5.20), (2.44, 5.20), close: true, stroke: 0.9pt)
  line((1.55, 5.20), (2.10, 5.20), (1.95, 5.45), (1.55, 5.45), close: true, stroke: 0.9pt)
  line((2.50, 5.20), (3.05, 5.20), (3.05, 5.45), (2.65, 5.45), close: true, stroke: 0.9pt)
  rect((1.55, 4.83), (3.05, 5.05), stroke: 0.9pt)

  line((1.75, 5.75), (1.75, 5.45), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 5.75), (2.85, 5.45), mark: (end: ">"), stroke: 0.75pt)
  line((1.75, 4.53), (1.75, 4.83), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, 4.53), (2.30, 4.83), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 4.53), (2.85, 4.83), mark: (end: ">"), stroke: 0.75pt)

  // Lower sub-figure
  line((1.55, 3.90), (2.10, 3.90), (1.95, 4.15), (1.55, 4.15), close: true, fill: luma(242), stroke: none)
  line((2.50, 3.90), (3.05, 3.90), (3.05, 4.15), (2.65, 4.15), close: true, fill: luma(242), stroke: none)
  rect((0.90, 3.53), (3.70, 3.75), fill: luma(242), stroke: none)

  line((1.55, 4.04), (1.69, 3.90), stroke: 0.45pt)
  line((1.58, 4.15), (1.83, 3.90), stroke: 0.45pt)
  line((1.72, 4.15), (1.97, 3.90), stroke: 0.45pt)
  line((1.86, 4.15), (2.085, 3.925), stroke: 0.45pt)

  line((2.553, 3.988), (2.64, 3.90), stroke: 0.45pt)
  line((2.605, 4.075), (2.78, 3.90), stroke: 0.45pt)
  line((2.67, 4.15), (2.92, 3.90), stroke: 0.45pt)
  line((2.81, 4.15), (3.05, 3.91), stroke: 0.45pt)
  line((2.95, 4.15), (3.05, 4.05), stroke: 0.45pt)

  line((0.90, 3.67), (1.04, 3.53), stroke: 0.45pt)
  line((0.96, 3.75), (1.18, 3.53), stroke: 0.45pt)
  line((1.10, 3.75), (1.32, 3.53), stroke: 0.45pt)
  line((1.24, 3.75), (1.46, 3.53), stroke: 0.45pt)
  line((1.38, 3.75), (1.60, 3.53), stroke: 0.45pt)
  line((1.52, 3.75), (1.74, 3.53), stroke: 0.45pt)
  line((1.66, 3.75), (1.88, 3.53), stroke: 0.45pt)
  line((1.80, 3.75), (2.02, 3.53), stroke: 0.45pt)
  line((1.94, 3.75), (2.16, 3.53), stroke: 0.45pt)
  line((2.08, 3.75), (2.30, 3.53), stroke: 0.45pt)
  line((2.22, 3.75), (2.44, 3.53), stroke: 0.45pt)
  line((2.36, 3.75), (2.58, 3.53), stroke: 0.45pt)
  line((2.50, 3.75), (2.72, 3.53), stroke: 0.45pt)
  line((2.64, 3.75), (2.86, 3.53), stroke: 0.45pt)
  line((2.78, 3.75), (3.00, 3.53), stroke: 0.45pt)
  line((2.92, 3.75), (3.14, 3.53), stroke: 0.45pt)
  line((3.06, 3.75), (3.28, 3.53), stroke: 0.45pt)
  line((3.20, 3.75), (3.42, 3.53), stroke: 0.45pt)
  line((3.34, 3.75), (3.56, 3.53), stroke: 0.45pt)
  line((3.48, 3.75), (3.70, 3.53), stroke: 0.45pt)
  line((3.62, 3.75), (3.70, 3.67), stroke: 0.45pt)

  line((0.30, 3.75), (2.26, 3.75), (2.16, 3.90), (0.30, 3.90), close: true, stroke: 0.9pt)
  line((2.34, 3.75), (4.30, 3.75), (4.30, 3.90), (2.44, 3.90), close: true, stroke: 0.9pt)
  line((1.55, 3.90), (2.10, 3.90), (1.95, 4.15), (1.55, 4.15), close: true, stroke: 0.9pt)
  line((2.50, 3.90), (3.05, 3.90), (3.05, 4.15), (2.65, 4.15), close: true, stroke: 0.9pt)
  rect((0.90, 3.53), (3.70, 3.75), stroke: 0.9pt)

  line((1.63, 4.45), (1.63, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.75, 4.45), (1.75, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.87, 4.45), (1.87, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((2.85, 4.45), (2.85, 4.15), mark: (end: ">"), stroke: 0.75pt)
  line((1.45, 3.23), (1.45, 3.53), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, 3.23), (2.30, 3.53), mark: (end: ">"), stroke: 0.75pt)
  line((3.15, 3.23), (3.15, 3.53), mark: (end: ">"), stroke: 0.75pt)

  // Panel 2: Ordine di ripresa per realizzare il cordone a X
  content((2.30, 2.40), text(size: 8.5pt)[Ordine di ripresa per realizzare il cordone a X], anchor: "center")
  content((2.30, 2.10), text(size: 8.5pt)[per bilanciare l'introduzione del calore nel], anchor: "center")
  content((2.30, 1.80), text(size: 8.5pt)[pezzo], anchor: "center")

  line((0.30, 0.10), (1.75, 0.10), (2.14, 0.65), (2.14, 0.85), (1.75, 1.40), (0.30, 1.40), close: true, stroke: 0.9pt)
  line((4.30, 0.10), (2.85, 0.10), (2.46, 0.65), (2.46, 0.85), (2.85, 1.40), (4.30, 1.40), close: true, stroke: 0.9pt)

  arc((2.30, 0.595), start: 55.66deg, stop: 124.34deg, radius: 0.975, anchor: "origin", stroke: 0.8pt)
  arc((2.30, 0.274), start: 66.64deg, stop: 113.36deg, radius: 0.976, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 0.282), start: 72.49deg, stop: 107.51deg, radius: 0.648, anchor: "origin", stroke: 0.7pt)

  arc((2.30, 1.262), start: 253.19deg, stop: 286.81deg, radius: 0.702, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 1.479), start: 251.72deg, stop: 288.28deg, radius: 1.189, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 2.432), start: 257.06deg, stop: 282.94deg, radius: 2.362, anchor: "origin", stroke: 0.7pt)
  arc((2.30, 0.905), start: 235.66deg, stop: 304.34deg, radius: 0.975, anchor: "origin", stroke: 0.8pt)

  content((2.30, 0.75), text(size: 6.5pt)[$1$], anchor: "center")
  content((2.30, 0.42), text(size: 6.5pt)[$2$], anchor: "center")
  content((2.30, 1.09), text(size: 6.5pt)[$3$], anchor: "center")
  content((2.30, 0.18), text(size: 6.0pt)[$4$], anchor: "center")
  content((2.30, 1.41), text(size: 6.5pt)[$5$], anchor: "center")
  content((2.30, 0.00), text(size: 6.0pt)[$6$], anchor: "center")

  content((4.30, -0.30), text(size: 5.5pt)[da A. De Paulis, E. Manfredi, C. di Macchine], anchor: "east")

  // Panel 3: Ordine di esecuzione di un cordone lungo
  content((2.30, -1.10), text(size: 8.5pt)[Ordine di esecuzione di un cordone lungo], anchor: "center")

  rect((0.40, -2.23), (1.16, -2.07), fill: luma(195), stroke: none)
  rect((1.92, -2.23), (2.68, -2.07), fill: luma(195), stroke: none)
  rect((3.44, -2.23), (4.20, -2.07), fill: luma(195), stroke: none)

  arc((0.44, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.54, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.64, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.74, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.84, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((0.94, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((1.04, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  arc((1.96, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.06, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.16, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.26, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.36, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.46, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((2.56, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  arc((3.48, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.58, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.68, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.78, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.88, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((3.98, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)
  arc((4.08, -2.15), start: -60deg, stop: 60deg, radius: 0.09, anchor: "origin", stroke: 0.45pt)

  rect((0.40, -2.85), (4.20, -1.45), stroke: 0.9pt)
  line((0.40, -2.07), (4.20, -2.07), stroke: 0.8pt)
  line((0.40, -2.23), (4.20, -2.23), stroke: 0.8pt)
  line((1.16, -2.23), (1.16, -2.07), stroke: 0.75pt)
  line((1.92, -2.23), (1.92, -2.07), stroke: 0.75pt)
  line((2.68, -2.23), (2.68, -2.07), stroke: 0.75pt)
  line((3.44, -2.23), (3.44, -2.07), stroke: 0.75pt)

  content((0.78, -2.42), text(size: 7.5pt)[$3$], anchor: "center")
  content((1.54, -2.42), text(size: 7.5pt)[$5$], anchor: "center")
  content((2.30, -2.42), text(size: 7.5pt)[$1$], anchor: "center")
  content((3.06, -2.42), text(size: 7.5pt)[$4$], anchor: "center")
  content((3.82, -2.42), text(size: 7.5pt)[$2$], anchor: "center")

  // Panel 4: Deformazione imposta prima dell'esecuzione della saldatura
  content((2.30, -3.70), text(size: 8.5pt)[Deformazione imposta prima], anchor: "center")
  content((2.30, -4.00), text(size: 8.5pt)[dell'esecuzione della saldatura], anchor: "center")

  arc((2.30, 1.97), start: 255.75deg, stop: 284.25deg, radius: 6.50, anchor: "origin", stroke: 0.9pt)
  arc((2.30, 1.97), start: 255.75deg, stop: 284.25deg, radius: 6.41, anchor: "origin", stroke: 0.9pt)
  line((0.70, -4.33), (0.722, -4.243), stroke: 0.9pt)
  line((3.90, -4.33), (3.878, -4.243), stroke: 0.9pt)

  arc((2.30, -11.33), start: 75.75deg, stop: 104.25deg, radius: 6.50, anchor: "origin", stroke: 0.9pt)
  arc((2.30, -11.33), start: 75.75deg, stop: 104.25deg, radius: 6.41, anchor: "origin", stroke: 0.9pt)
  line((0.70, -5.03), (0.722, -5.117), stroke: 0.9pt)
  line((3.90, -5.03), (3.878, -5.117), stroke: 0.9pt)

  line((0.70, -4.73), (0.70, -5.03), mark: (end: ">"), stroke: 0.75pt)
  line((3.90, -4.73), (3.90, -5.03), mark: (end: ">"), stroke: 0.75pt)
  line((2.30, -5.22), (2.30, -4.92), mark: (end: ">"), stroke: 0.75pt)

  rect((0.70, -5.60), (3.90, -5.51), stroke: 0.9pt)
})
