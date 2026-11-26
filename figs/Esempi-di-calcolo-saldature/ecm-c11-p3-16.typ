#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Supporto (parete verticale a sinistra)
  line((0.10, 0.00), (0.10, 5.16), stroke: 0.75pt)
  line((0.55, 0.00), (0.55, 4.90), stroke: 0.75pt)
  line((0.10, 5.16), (0.55, 4.90), stroke: 0.75pt)
  line((0.10, 5.16), (1.49, 5.96), stroke: 0.75pt)
  line((0.55, 4.90), (1.94, 5.70), stroke: 0.75pt)
  line((1.55, 0.45), (3.10, 1.35), stroke: 0.5pt)
  content((1.10, 3.30), text(size: 10.5pt, weight: "bold")[supporto])

  // Riempimenti leggeri per leggibilità 3D della piattabanda e del cordone
  line((2.20, 1.77), (2.40, 1.89), (5.49, 0.10), (5.49, 2.50), (2.50, 4.23), (2.20, 4.40), close: true, fill: gray.transparentize(92%), stroke: none)
  line((2.50, 4.23), (5.49, 2.50), (6.53, 3.10), (3.54, 4.83), close: true, fill: gray.transparentize(85%), stroke: none)
  line((5.49, 0.10), (6.53, 0.70), (6.53, 3.10), (5.49, 2.50), close: true, fill: gray.transparentize(80%), stroke: none)
  line((2.20, 4.75), (2.50, 4.23), (3.54, 4.83), (3.24, 5.35), close: true, fill: gray.transparentize(78%), stroke: none)

  // Tratteggio del cordone superiore
  line((2.33, 4.83), (2.63, 4.30), stroke: 0.45pt)
  line((2.46, 4.90), (2.76, 4.38), stroke: 0.45pt)
  line((2.59, 4.98), (2.89, 4.45), stroke: 0.45pt)
  line((2.72, 5.05), (3.02, 4.53), stroke: 0.45pt)
  line((2.85, 5.13), (3.15, 4.60), stroke: 0.45pt)
  line((2.98, 5.20), (3.28, 4.68), stroke: 0.45pt)
  line((3.11, 5.28), (3.41, 4.75), stroke: 0.45pt)

  // Contorni principali della piattabanda
  line((2.20, 1.77), (2.20, 4.75), stroke: 1.1pt)
  line((2.20, 1.77), (2.40, 1.89), stroke: 1.1pt)
  line((2.40, 1.89), (5.49, 0.10), stroke: 1.1pt)
  line((5.49, 0.10), (6.53, 0.70), stroke: 1.1pt)
  line((6.53, 0.70), (6.53, 3.10), stroke: 1.1pt)
  line((5.49, 0.10), (5.49, 2.50), stroke: 1.1pt)
  line((5.49, 2.50), (6.53, 3.10), stroke: 1.1pt)
  line((2.50, 4.23), (5.49, 2.50), stroke: 1.1pt)
  line((3.54, 4.83), (6.53, 3.10), stroke: 1.1pt)

  // Contorni del cordone superiore
  line((2.20, 4.40), (2.50, 4.23), stroke: 1.0pt)
  line((2.20, 4.75), (2.50, 4.23), stroke: 1.0pt)
  line((2.20, 4.75), (3.24, 5.35), stroke: 1.0pt)
  line((3.24, 5.35), (3.54, 4.83), stroke: 1.0pt)
  line((2.50, 4.23), (3.54, 4.83), stroke: 0.9pt)

  content((4.05, 1.85), text(size: 10.5pt, weight: "bold")[piattabanda])

  // Linea d'asse superiore e quota b
  line((3.02, 4.53), (4.16, 3.87), stroke: 0.5pt)
  line((4.70, 3.56), (6.01, 2.80), stroke: 0.5pt)
  content((4.43, 3.71), text(size: 10.5pt, weight: "bold")[$b$])

  // Carico verticale P
  line((5.77, 4.25), (5.77, 2.94), mark: (end: ">", fill: black), stroke: 1.1pt)
  content((5.90, 3.85), text(size: 11.5pt, weight: "bold")[$P$], anchor: "west")

  // Reazioni N_1 e N_2 (cordone superiore)
  line((2.87, 4.79), (2.87, 6.05), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  content((3.02, 5.90), text(size: 11.5pt, weight: "bold")[$N_1$], anchor: "west")

  line((3.89, 4.02), (3.05, 4.51), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  content((3.78, 4.82), text(size: 11.5pt, weight: "bold")[$N_2$], anchor: "south-west")

  // Reazioni N_1 e N_2 (cordone inferiore)
  line((2.65, 0.35), (2.65, 1.72), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  content((2.78, 0.55), text(size: 11.5pt, weight: "bold")[$N_1$], anchor: "west")

  line((2.78, 1.65), (3.82, 1.05), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.1pt))
  content((3.45, 0.95), text(size: 11.5pt, weight: "bold")[$N_2$], anchor: "north-west")

  // Quota L
  line((2.20, 4.75), (1.90, 5.27), stroke: 0.5pt)
  line((3.24, 5.35), (2.94, 5.87), stroke: 0.5pt)
  line((1.95, 5.18), (2.99, 5.78), stroke: 0.55pt)
  line((1.91, 5.14), (1.99, 5.22), stroke: 0.55pt)
  line((2.95, 5.74), (3.03, 5.82), stroke: 0.55pt)
  content((2.35, 5.65), text(size: 10.5pt, weight: "bold")[$L$], anchor: "south")

  // Quota h
  line((6.53, 0.70), (7.18, 1.08), stroke: 0.5pt)
  line((6.53, 3.10), (7.18, 3.48), stroke: 0.5pt)
  line((6.98, 0.96), (6.98, 3.36), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((7.12, 2.16), text(size: 10.5pt, weight: "bold")[$h$], anchor: "west")
})
