// Figura estratta da molle.typ (riga 3747) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // ==========================================
  // GRAFICO SUPERIORE (O1 = (0.00, 0.00))
  // ==========================================

  // Tratteggio verticale dell'area sottesa
  line((0.12, 0.00), (0.12, 0.23), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.24, 0.00), (0.24, 0.46), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.36, 0.00), (0.36, 0.69), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.48, 0.00), (0.48, 0.91), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.60, 0.00), (0.60, 1.01), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.72, 0.00), (0.72, 1.11), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.84, 0.00), (0.84, 1.21), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.96, 0.00), (0.96, 1.29), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.08, 0.00), (1.08, 1.33), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.20, 0.00), (1.20, 1.36), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.32, 0.00), (1.32, 1.39), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.44, 0.00), (1.44, 1.43), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.56, 0.00), (1.56, 1.46), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.68, 0.00), (1.68, 1.50), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.80, 0.00), (1.80, 1.53), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.92, 0.00), (1.92, 1.57), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.04, 0.00), (2.04, 1.60), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.16, 0.00), (2.16, 1.62), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.28, 0.00), (2.28, 1.64), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.40, 0.00), (2.40, 1.67), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.52, 0.00), (2.52, 1.69), stroke: (paint: luma(110), thickness: 0.4pt))

  // Contorno curva spezzata e chiusura verticale
  line((0.00, 0.00), (0.45, 0.88), (0.92, 1.28), (2.00, 1.59), (2.60, 1.70), (2.60, 0.00), stroke: 0.8pt)

  // Assi cartesiani con frecce piene
  line((0.00, 0.00), (0.00, 2.30), stroke: 0.8pt)
  line((-0.07, 2.22), (0.07, 2.22), (0.00, 2.38), close: true, fill: black, stroke: none)
  content((-0.18, 2.25), [$F$], anchor: "east")

  line((0.00, 0.00), (3.22, 0.00), stroke: 0.8pt)
  line((3.16, -0.07), (3.16, 0.07), (3.32, 0.00), close: true, fill: black, stroke: none)
  content((3.45, -0.05), [$f$], anchor: "west")

  // ==========================================
  // GRAFICO INFERIORE (O2 = (0.00, -3.10))
  // ==========================================

  // Tratteggio verticale del primo triangolo (rigidezza maggiore)
  line((0.10, -3.10), (0.10, -2.95), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.20, -3.10), (0.20, -2.80), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.30, -3.10), (0.30, -2.65), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.40, -3.10), (0.40, -2.50), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.50, -3.10), (0.50, -2.35), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.60, -3.10), (0.60, -2.20), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.70, -3.10), (0.70, -2.05), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.80, -3.10), (0.80, -1.90), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.90, -3.10), (0.90, -1.75), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.00, -3.10), (1.00, -1.60), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.10, -3.10), (1.10, -1.45), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.20, -3.10), (1.20, -1.30), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.30, -3.10), (1.30, -1.15), stroke: (paint: luma(110), thickness: 0.4pt))

  // Tratteggio orizzontale del secondo triangolo (rigidezza minore)
  line((0.16, -3.00), (2.20, -3.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.33, -2.90), (2.20, -2.90), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.49, -2.80), (2.20, -2.80), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.65, -2.70), (2.20, -2.70), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.81, -2.60), (2.20, -2.60), stroke: (paint: luma(110), thickness: 0.4pt))
  line((0.98, -2.50), (2.20, -2.50), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.14, -2.40), (2.20, -2.40), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.30, -2.30), (2.20, -2.30), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.47, -2.20), (2.20, -2.20), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.63, -2.10), (2.20, -2.10), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.79, -2.00), (2.20, -2.00), stroke: (paint: luma(110), thickness: 0.4pt))
  line((1.96, -1.90), (2.20, -1.90), stroke: (paint: luma(110), thickness: 0.4pt))
  line((2.12, -1.80), (2.20, -1.80), stroke: (paint: luma(110), thickness: 0.4pt))

  // Contorni dei due triangoli elastici
  line((0.00, -3.10), (1.38, -1.03), (1.38, -3.10), stroke: 0.8pt)
  line((0.00, -3.10), (2.20, -1.75), (2.20, -3.10), stroke: 0.8pt)

  // Assi cartesiani con frecce piene (allineati con il grafico superiore)
  line((0.00, -3.10), (0.00, -0.80), stroke: 0.8pt)
  line((-0.07, -0.88), (0.07, -0.88), (0.00, -0.72), close: true, fill: black, stroke: none)
  content((-0.18, -0.85), [$F$], anchor: "east")

  line((0.00, -3.10), (3.22, -3.10), stroke: 0.8pt)
  line((3.16, -3.17), (3.16, -3.03), (3.32, -3.10), close: true, fill: black, stroke: none)
  content((3.45, -3.15), [$f$], anchor: "west")
})
