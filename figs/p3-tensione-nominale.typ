// Metodo della tensione nominale (Slide 30 alto, stile coerente con p3-19 e p3-20)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Piastra principale in assonometria (stessa geometria di p3-19 e p3-20)
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

  // Quote L (lunghezza irrigidimento) e W (larghezza piastra)
  line((3.55, 4.45), (5.24, 3.84), mark: (start: ">", end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  content((4.45, 4.30), text(size: 10.5pt, weight: "bold")[$L$], anchor: "south")
  line((2.15, 2.15), (2.15, 3.55), mark: (start: ">", end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  content((2.32, 2.85), text(size: 10.5pt, weight: "bold")[$W$], anchor: "west")

  // Distribuzione uniforme della tensione nominale sigma_nom nella sezione lontana dall'intaglio (a destra)
  let x0 = 6.10
  let y_bot = 0.65
  let y_top = 2.15
  line((x0, y_bot), (x0, y_top), stroke: 0.8pt)
  line((x0 + 0.55, y_bot - 0.20), (x0 + 0.55, y_top - 0.20), stroke: (paint: red, thickness: 0.75pt))
  for k in range(0, 7) {
    let t = k / 6.0
    let y = y_bot + (y_top - y_bot) * t
    line((x0, y), (x0 + 0.55, y - 0.20), mark: (end: ">", scale: 0.35, fill: red), stroke: (paint: red, thickness: 0.6pt))
  }
  content((6.82, 1.15), text(size: 10.5pt, fill: red.darken(10%))[*$sigma_"nom"$*], anchor: "west")
  content((0.95, 4.55), text(size: 10.5pt, weight: "bold")[*Nominal stress*], anchor: "west")
})
