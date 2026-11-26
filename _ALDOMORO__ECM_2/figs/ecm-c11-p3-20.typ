#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Piastra principale in assonometria
  line((1.00, 4.00), (7.77, 1.55), (7.77, 0.05), (1.00, 2.50), close: true, stroke: 0.8pt)
  line((1.00, 4.00), (1.12, 4.09), (7.89, 1.64), (7.77, 1.55), stroke: 0.65pt)
  line((7.89, 1.64), (7.89, 0.14), (7.77, 0.05), stroke: 0.65pt)

  // Irrigidimento verticale saldato sulla faccia superiore
  line((3.55, 3.13), (3.55, 4.18), (5.24, 3.57), (5.24, 2.52), close: true, fill: white, stroke: 0.8pt)
  line((3.55, 4.18), (3.67, 4.27), (5.36, 3.66), (5.24, 3.57), stroke: 0.65pt)
  line((5.36, 3.66), (5.36, 2.61), (5.24, 2.52), stroke: 0.65pt)

  // Cordone di saldatura lungo la base dell'irrigidimento
  line((3.50, 3.09), (3.55, 3.20), (5.24, 2.59), (5.35, 2.42), (5.24, 2.46), close: true, fill: gray.darken(65%), stroke: 0.55pt)

  // Frecce di trazione alle estremità
  line((0.85, 3.05), (0.20, 3.28), mark: (end: ">", fill: black), stroke: 0.9pt)
  line((8.05, 0.70), (8.70, 0.47), mark: (end: ">", fill: black), stroke: 0.9pt)

  // Distribuzione di tensione a sinistra
  line((1.00, 4.00), (1.00, 4.55), stroke: (paint: red, thickness: 0.55pt))
  line((1.25, 3.91), (1.25, 4.46), stroke: (paint: red, thickness: 0.55pt))
  line((1.50, 3.82), (1.50, 4.37), stroke: (paint: red, thickness: 0.55pt))
  line((1.75, 3.73), (1.75, 4.28), stroke: (paint: red, thickness: 0.55pt))
  line((2.00, 3.64), (2.00, 4.19), stroke: (paint: red, thickness: 0.55pt))
  line((2.25, 3.55), (2.25, 4.12), stroke: (paint: red, thickness: 0.55pt))
  line((2.50, 3.45), (2.50, 4.05), stroke: (paint: red, thickness: 0.55pt))
  line((2.75, 3.36), (2.75, 4.04), stroke: (paint: red, thickness: 0.55pt))
  line((3.35, 3.14), (3.35, 4.45), stroke: (paint: red, thickness: 0.55pt))

  line((1.00, 4.55), (2.25, 4.12), stroke: 0.75pt)
  bezier((2.25, 4.12), (3.50, 4.74), (2.90, 3.92), (3.30, 4.20), stroke: 0.75pt)
  line((3.50, 3.09), (3.50, 4.74), stroke: 0.75pt)

  // Punti di riferimento R2, R1 ed estrapolazione blu Hot spot stress
  line((2.90, 3.31), (2.90, 4.07), stroke: (paint: blue, thickness: 0.7pt))
  line((3.20, 3.20), (3.20, 4.26), stroke: (paint: blue, thickness: 0.7pt))
  line((2.90, 4.07), (3.50, 4.45), stroke: (paint: blue, thickness: 0.75pt))

  circle((2.90, 3.31), radius: 0.04, fill: blue, stroke: none)
  circle((2.90, 4.07), radius: 0.04, fill: blue, stroke: none)
  circle((3.20, 3.20), radius: 0.04, fill: blue, stroke: none)
  circle((3.20, 4.26), radius: 0.04, fill: blue, stroke: none)

  content((2.86, 3.02), text(size: 10.5pt, weight: "bold")[*R2*], anchor: "east")
  content((3.24, 2.94), text(size: 10.5pt, weight: "bold")[*R1*], anchor: "west")

  line((1.15, 5.00), (2.95, 5.00), (3.47, 4.48), mark: (end: ">", fill: blue), stroke: (paint: blue, thickness: 0.7pt))
  content((2.05, 5.15), text(size: 10.5pt, weight: "bold")[*Hot spot stress*])

  // Distribuzione linearizzata sulla sezione destra (Delta sigma_hss)
  line((5.35, 0.92), (5.35, 2.42), stroke: (paint: red, thickness: 0.65pt))
  line((6.34, 2.06), (5.68, 0.80), stroke: (paint: red, thickness: 0.75pt))
  line((5.35, 2.42), (6.34, 2.06), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 2.27), (6.27, 1.93), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 2.12), (6.21, 1.81), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.97), (6.14, 1.68), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.82), (6.08, 1.56), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.67), (6.01, 1.43), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.52), (5.94, 1.30), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.37), (5.88, 1.18), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.22), (5.81, 1.05), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.07), (5.75, 0.93), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 0.92), (5.68, 0.80), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))

  line((6.70, 2.45), (6.37, 2.09), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((6.78, 2.52), text(size: 11.5pt, weight: "bold")[$Delta sigma_("hss")$], anchor: "south")
})
