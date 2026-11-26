// Figura estratta da collegamenti saldati.typ (riga 1491) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  import draw: *

  // (1)
  rect((0.95, 10.80), (2.75, 11.12), stroke: 0.9pt)
  line((1.67, 11.12), (2.03, 11.12), (1.85, 10.80), close: true, fill: black, stroke: 0.9pt)
  content((1.35, 11.33), text(size: 7.5pt)[(1)], anchor: "center")

  // (2)
  rect((0.95, 8.78), (2.75, 9.10), stroke: 0.9pt)
  line((1.67, 10.30), (2.03, 10.30), (2.03, 9.26), (1.85, 9.10), (1.67, 9.26), close: true, stroke: 0.9pt)
  line((1.49, 9.10), (1.81, 9.10), (1.67, 9.26), close: true, fill: black, stroke: 0.9pt)
  line((1.89, 9.10), (2.21, 9.10), (2.03, 9.26), close: true, fill: black, stroke: 0.9pt)
  content((1.30, 10.03), text(size: 7.5pt)[(2)], anchor: "center")

  // (3)
  rect((0.95, 6.76), (2.75, 7.08), stroke: 0.9pt)
  rect((1.67, 7.08), (2.03, 8.28), stroke: 0.9pt)
  line((1.49, 7.08), (1.67, 7.08), (1.67, 7.26), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 7.08), (2.21, 7.08), (2.03, 7.26), close: true, fill: black, stroke: 0.9pt)
  content((1.30, 8.01), text(size: 7.5pt)[(3)], anchor: "center")

  // (4)
  rect((0.95, 4.84), (2.75, 5.16), stroke: 0.9pt)
  rect((1.67, 5.16), (2.03, 6.26), stroke: 0.9pt)
  rect((1.67, 3.74), (2.03, 4.84), stroke: 0.9pt)
  line((1.49, 5.16), (1.67, 5.16), (1.67, 5.34), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 5.16), (2.21, 5.16), (2.03, 5.34), close: true, fill: black, stroke: 0.9pt)
  line((1.49, 4.84), (1.67, 4.84), (1.67, 4.66), close: true, fill: black, stroke: 0.9pt)
  line((2.03, 4.84), (2.21, 4.84), (2.03, 4.66), close: true, fill: black, stroke: 0.9pt)
  content((2.40, 5.90), text(size: 7.5pt)[(4)], anchor: "center")

  // (5)
  rect((0.45, 2.92), (2.25, 3.24), stroke: 0.9pt)
  rect((1.45, 2.60), (3.25, 2.92), stroke: 0.9pt)
  line((2.25, 2.92), (2.43, 2.92), (2.25, 3.10), close: true, fill: black, stroke: 0.9pt)
  line((1.27, 2.92), (1.45, 2.92), (1.45, 2.74), close: true, fill: black, stroke: 0.9pt)
  content((2.83, 3.13), text(size: 7.5pt)[(5)], anchor: "center")

  // (6)
  rect((0.00, 1.46), (1.77, 1.78), stroke: 0.9pt)
  rect((1.93, 1.46), (3.70, 1.78), stroke: 0.9pt)
  rect((0.95, 1.78), (2.75, 2.10), stroke: 0.9pt)
  line((0.73, 1.78), (0.95, 1.78), (0.95, 2.00), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 1.78), (2.97, 1.78), (2.75, 2.00), close: true, fill: black, stroke: 0.9pt)
  content((3.30, 2.01), text(size: 7.5pt)[(6)], anchor: "center")

  // (7)
  rect((0.00, 0.32), (1.77, 0.64), stroke: 0.9pt)
  rect((1.93, 0.32), (3.70, 0.64), stroke: 0.9pt)
  rect((0.95, 0.64), (2.75, 0.96), stroke: 0.9pt)
  rect((0.95, 0.00), (2.75, 0.32), stroke: 0.9pt)
  line((0.73, 0.64), (0.95, 0.64), (0.95, 0.86), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 0.64), (2.97, 0.64), (2.75, 0.86), close: true, fill: black, stroke: 0.9pt)
  line((0.73, 0.32), (0.95, 0.32), (0.95, 0.10), close: true, fill: black, stroke: 0.9pt)
  line((2.75, 0.32), (2.97, 0.32), (2.75, 0.10), close: true, fill: black, stroke: 0.9pt)
  content((3.30, 0.87), text(size: 7.5pt)[(7)], anchor: "center")
})
