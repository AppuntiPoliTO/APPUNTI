// Esempio 6 (Fatica): forze distribuite n_perp1, n_perp2 e ribaltamento sezione di gola (Slide 22-23)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Supporto (parete verticale a sinistra)
  line((0.10, 0.00), (0.10, 5.16), stroke: 0.75pt)
  line((0.55, 0.00), (0.55, 4.90), stroke: 0.75pt)
  line((0.10, 5.16), (0.55, 4.90), stroke: 0.75pt)
  line((0.10, 5.16), (1.49, 5.96), stroke: 0.75pt)
  line((0.55, 4.90), (1.94, 5.70), stroke: 0.75pt)
  content((1.05, 3.20), text(size: 10.5pt, weight: "bold")[supporto])

  // Piattabanda
  line((2.20, 1.77), (2.40, 1.89), (5.49, 0.10), (5.49, 2.50), (2.50, 4.23), (2.20, 4.40), close: true, fill: gray.transparentize(92%), stroke: none)
  line((2.50, 4.23), (5.49, 2.50), (6.53, 3.10), (3.54, 4.83), close: true, fill: gray.transparentize(85%), stroke: none)
  line((5.49, 0.10), (6.53, 0.70), (6.53, 3.10), (5.49, 2.50), close: true, fill: gray.transparentize(80%), stroke: none)

  // Fascia gialla sezione di gola ribaltata (sul supporto / piattabanda al cordone superiore)
  line((2.20, 4.75), (2.50, 4.23), (3.54, 4.83), (3.24, 5.35), close: true, fill: yellow.transparentize(15%), stroke: 0.85pt)

  // Contorni principali
  line((2.20, 1.77), (2.20, 4.75), stroke: 1.05pt)
  line((2.20, 1.77), (2.40, 1.89), stroke: 1.05pt)
  line((2.40, 1.89), (5.49, 0.10), stroke: 1.05pt)
  line((5.49, 0.10), (6.53, 0.70), stroke: 1.05pt)
  line((6.53, 0.70), (6.53, 3.10), stroke: 1.05pt)
  line((5.49, 0.10), (5.49, 2.50), stroke: 1.05pt)
  line((5.49, 2.50), (6.53, 3.10), stroke: 1.05pt)
  line((2.50, 4.23), (5.49, 2.50), stroke: 1.05pt)
  line((3.54, 4.83), (6.53, 3.10), stroke: 1.05pt)
  line((2.20, 4.40), (2.50, 4.23), stroke: 0.9pt)

  content((4.15, 1.80), text(size: 10.5pt, weight: "bold")[piattabanda])

  // Carico P
  line((5.77, 4.25), (5.77, 2.94), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.92, 3.85), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  // Quota h
  line((6.85, 0.70), (6.85, 3.10), mark: (start: ">", end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  content((7.00, 1.90), text(size: 10.5pt, weight: "bold")[$h$], anchor: "west")

  // Frecce rosse distribuite sul cordone superiore:
  // n_perp1 (verticali verso il basso)
  for k in range(0, 4) {
    let x = 2.40 + k * 0.28
    let y = 4.55 + k * 0.16
    line((x, y + 0.65), (x, y), mark: (end: ">", scale: 0.42, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }
  content((3.25, 5.78), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp 1)$], anchor: "west")

  // n_perp2 (uscenti verso destra-basso, lungo la piattabanda)
  for k in range(0, 4) {
    let x = 2.50 + k * 0.28
    let y = 4.35 + k * 0.16
    line((x, y), (x + 0.55, y - 0.32), mark: (end: ">", scale: 0.42, fill: red), stroke: (paint: red, thickness: 0.85pt))
  }
  content((4.35, 4.70), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp 2)$], anchor: "west")

  // Frecce rosse distribuite sul cordone inferiore (n_perp1 verso il basso, n_perp2 entranti verso il supporto)
  for k in range(0, 3) {
    let x = 2.45 + k * 0.25
    let y = 1.90 - k * 0.14
    line((x, y + 0.52), (x, y), mark: (end: ">", scale: 0.38, fill: red), stroke: (paint: red, thickness: 0.8pt))
    line((x + 0.45, y - 0.26), (x, y), mark: (end: ">", scale: 0.38, fill: red), stroke: (paint: red, thickness: 0.8pt))
  }

  content((3.40, -0.35), text(size: 9.5pt, weight: "bold")[sezione di gola ribaltata (supporto / piattabanda)], anchor: "center")
})
