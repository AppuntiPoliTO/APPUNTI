// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Vista esterna inferiore di campana e mozzo sinistro
  line((0.00, 0.00), (2.00, 0.00), (2.00, -1.25), (0.00, -1.25), close: true, fill: white, stroke: 0.8pt)
  line((0.15, -1.25), (0.15, -0.98), (1.90, -0.98), (1.90, -1.25), close: true, fill: luma(230), stroke: 0.6pt)

  line((2.00, 0.00), (4.65, 0.00), (4.65, -2.05), (2.08, -2.05), (2.00, -1.95), close: true, fill: white, stroke: 0.8pt)
  line((2.50, -1.12), (4.50, -1.12), (4.50, -1.42), (2.50, -1.42), close: true, fill: luma(245), stroke: 0.65pt)
  for x in (2.70, 2.90, 3.10, 3.30, 3.50, 3.70, 3.90, 4.10, 4.30) {
    line((x, -1.12), (x, -1.42), stroke: 0.5pt)
  }

  // Vista esterna inferiore albero destro, spire molla e ghiera
  line((4.65, 0.00), (6.50, 0.00), (6.50, -1.00), (4.65, -1.00), close: true, fill: white, stroke: 0.75pt)
  line((4.65, 0.00), (4.88, -1.35), stroke: 0.75pt)
  line((5.02, 0.00), (5.25, -1.35), stroke: 0.75pt)
  arc((5.065, -1.35), start: 180deg, stop: 360deg, radius: 0.185, anchor: "origin", stroke: 0.75pt)
  line((5.30, 0.00), (5.53, -1.35), stroke: 0.75pt)
  line((5.67, 0.00), (5.90, -1.35), stroke: 0.75pt)
  arc((5.715, -1.35), start: 180deg, stop: 360deg, radius: 0.185, anchor: "origin", stroke: 0.75pt)

  line((6.25, 0.00), (6.75, 0.00), (6.75, -1.62), (6.25, -1.62), close: true, fill: white, stroke: 0.75pt)
  circle((6.50, -1.35), radius: (0.09, 0.05), fill: luma(220), stroke: 0.55pt)

  // Semisezione superiore con codifica a colori (Slide 21)
  line((0.00, 0.00), (6.50, 0.00), (6.50, 0.65), (0.00, 0.65), close: true, fill: white, stroke: 0.75pt)
  line((2.00, 0.00), (2.00, 0.65), stroke: 0.65pt)
  line((0.00, 0.65), (2.00, 0.65), (2.00, 1.00), (0.00, 1.00), close: true, fill: rgb("#fb923c"), stroke: 0.75pt)
  line((2.00, 0.65), (6.50, 0.65), (6.50, 1.00), (2.00, 1.00), close: true, fill: rgb("#84cc16"), stroke: 0.75pt)

  // Campana esterna (gialla)
  line(
    (0.00, 1.00), (0.00, 1.45), (1.85, 1.45), (1.85, 2.05), (2.35, 2.05),
    (2.35, 1.92), (4.65, 1.92), (4.65, 1.72), (2.35, 1.72), (2.35, 1.00),
    close: true, fill: rgb("#facc15"), stroke: 0.75pt
  )
  line((2.00, 1.00), (2.00, 1.45), stroke: 0.65pt)

  // Pacco dischi alternati
  for x in (2.58, 2.92, 3.26, 3.60, 3.94) {
    line((x, 1.00), (x + 0.16, 1.00), (x + 0.16, 1.70), (x, 1.70), close: true, fill: rgb("#84cc16"), stroke: 0.65pt)
  }
  for x in (2.74, 3.08, 3.42, 3.76, 4.10) {
    line((x, 1.15), (x + 0.18, 1.15), (x + 0.18, 1.92), (x, 1.92), close: true, fill: rgb("#facc15"), stroke: 0.65pt)
  }
  line((4.28, 1.00), (4.55, 1.00), (4.55, 1.72), (4.28, 1.72), close: true, fill: rgb("#84cc16"), stroke: 0.7pt)

  // Spire molla in sezione (verde)
  circle((4.88, 1.22), radius: 0.22, fill: rgb("#84cc16"), stroke: 0.75pt)
  circle((5.53, 1.22), radius: 0.22, fill: rgb("#84cc16"), stroke: 0.75pt)
  circle((6.18, 1.22), radius: 0.22, fill: rgb("#84cc16"), stroke: 0.75pt)

  // Ghiera di precarico superiore
  line((6.25, 1.00), (6.75, 1.00), (6.75, 1.62), (6.25, 1.62), close: true, fill: luma(228), stroke: 0.75pt)
  circle((6.50, 1.42), radius: 0.08, fill: white, stroke: 0.6pt)

  // Asse di simmetria
  line((-0.30, 0.00), (7.05, 0.00), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(70)))

  // Etichette e frecce
  content((0.90, 2.65), text(size: 9pt)[campana], anchor: "south")
  line((1.15, 2.55), (1.82, 1.98), mark: (end: ">"), stroke: 1.1pt)

  content((2.65, 2.95), text(size: 9pt)[dischi], anchor: "south")
  line((2.85, 2.85), (3.35, 1.72), mark: (end: ">"), stroke: 1.1pt)

  content((5.55, 2.65), text(size: 9pt)[molla], anchor: "south")
  line((5.55, 2.55), (5.53, 1.50), mark: (end: ">"), stroke: 1.1pt)

  content((6.60, 2.15), text(size: 8pt)[ghiera], anchor: "west")
  line((6.58, 2.12), (6.50, 1.66), mark: (end: ">"), stroke: 0.8pt)
})
