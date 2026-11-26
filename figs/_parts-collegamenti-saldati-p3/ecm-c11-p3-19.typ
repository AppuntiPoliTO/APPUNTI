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

  // Cordone di saldatura nero lungo la base dell'irrigidimento
  line((3.50, 3.09), (3.55, 3.20), (5.24, 2.59), (5.35, 2.42), (5.24, 2.46), close: true, fill: black, stroke: none)

  // Frecce di trazione alle estremità
  line((0.85, 3.05), (0.20, 3.28), mark: (end: ">", fill: black), stroke: 0.9pt)
  line((8.05, 0.70), (8.70, 0.47), mark: (end: ">", fill: black), stroke: 0.9pt)

  // Distribuzione di tensione a sinistra (Effective notch stress)
  line((1.00, 4.00), (1.00, 4.55), stroke: (paint: red, thickness: 0.55pt))
  line((1.25, 3.91), (1.25, 4.46), stroke: (paint: red, thickness: 0.55pt))
  line((1.50, 3.82), (1.50, 4.37), stroke: (paint: red, thickness: 0.55pt))
  line((1.75, 3.73), (1.75, 4.28), stroke: (paint: red, thickness: 0.55pt))
  line((2.00, 3.64), (2.00, 4.19), stroke: (paint: red, thickness: 0.55pt))
  line((2.25, 3.55), (2.25, 4.12), stroke: (paint: red, thickness: 0.55pt))
  line((2.50, 3.45), (2.50, 4.05), stroke: (paint: red, thickness: 0.55pt))
  line((2.75, 3.36), (2.75, 4.04), stroke: (paint: red, thickness: 0.55pt))
  line((3.00, 3.27), (3.00, 4.11), stroke: (paint: red, thickness: 0.55pt))
  line((3.20, 3.20), (3.20, 4.26), stroke: (paint: red, thickness: 0.55pt))
  line((3.35, 3.14), (3.35, 4.45), stroke: (paint: red, thickness: 0.55pt))
  line((3.50, 3.09), (3.50, 4.74), stroke: (paint: red, thickness: 0.65pt))

  line((3.50, 4.74), (3.50, 5.25), stroke: (dash: "dotted", thickness: 0.6pt))
  line((1.00, 4.55), (2.25, 4.12), stroke: 0.75pt)
  bezier((2.25, 4.12), (3.50, 4.74), (2.90, 3.92), (3.30, 4.20), stroke: 0.75pt)

  line((1.15, 5.00), (2.95, 4.48), (3.48, 4.72), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.65pt))
  content((1.95, 5.15), text(size: 10.5pt, weight: "bold")[*Effective notch stress*])

  // Distribuzione di tensione sulla sezione di gola destra (Delta sigma_Eff)
  line((5.35, 0.92), (5.35, 2.42), stroke: (paint: red, thickness: 0.65pt))
  line((5.35, 2.42), (6.43, 2.03), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 2.27), (6.15, 1.98), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 2.12), (5.95, 1.90), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.97), (5.82, 1.80), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.82), (5.74, 1.68), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.67), (5.70, 1.54), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.52), (5.68, 1.40), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.37), (5.68, 1.25), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.22), (5.68, 1.10), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 1.07), (5.69, 0.95), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))
  line((5.35, 0.92), (5.71, 0.79), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.6pt))

  bezier((6.43, 2.03), (5.71, 0.79), (5.75, 1.90), (5.65, 1.35), stroke: 0.75pt)

  line((7.35, 2.65), (6.95, 2.65), (6.46, 2.06), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 0.65pt))
  content((7.00, 2.75), text(size: 11.5pt, weight: "bold")[$Delta sigma_("Eff")$], anchor: "south")
})
