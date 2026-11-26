// Disegno creato con Studio di LocalTypst (Fig. 93.2 Tarli e nidi di tarli, Fig. 93.3 Inclusioni di scoria allungate o allineate)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  content((0.0, 7.25), text(size: 8.5pt)[*Fig. 93.2* — Tarli e nidi di tarli], anchor: "south-west")

  line((3.45, 6.80), (3.65, 6.91), (3.85, 6.98), (4.00, 7.00), (4.15, 6.98), (4.35, 6.91), (4.55, 6.80), (4.45, 6.80), (4.08, 6.10), (4.14, 6.10), (4.07, 6.02), (4.00, 6.00), (3.93, 6.02), (3.86, 6.10), (3.92, 6.10), (3.55, 6.80), close: true, fill: gray.transparentize(82%), stroke: none)

  line((2.40, 6.25), (2.55, 6.10), stroke: 0.5pt)
  line((2.41, 6.46), (2.77, 6.10), stroke: 0.5pt)
  line((2.40, 6.69), (2.99, 6.10), stroke: 0.5pt)
  line((2.51, 6.80), (3.21, 6.10), stroke: 0.5pt)
  line((2.73, 6.80), (3.43, 6.10), stroke: 0.5pt)
  line((2.95, 6.80), (3.65, 6.10), stroke: 0.5pt)
  line((3.17, 6.80), (3.87, 6.10), stroke: 0.5pt)
  line((3.39, 6.80), (3.73, 6.46), stroke: 0.5pt)

  line((4.16, 6.25), (4.31, 6.10), stroke: 0.5pt)
  line((4.24, 6.39), (4.53, 6.10), stroke: 0.5pt)
  line((4.31, 6.54), (4.75, 6.10), stroke: 0.5pt)
  line((4.39, 6.68), (4.97, 6.10), stroke: 0.5pt)
  line((4.49, 6.80), (5.19, 6.10), stroke: 0.5pt)
  line((4.71, 6.80), (5.41, 6.10), stroke: 0.5pt)
  line((4.93, 6.80), (5.60, 6.13), stroke: 0.5pt)
  line((5.15, 6.80), (5.60, 6.35), stroke: 0.5pt)
  line((5.37, 6.80), (5.60, 6.57), stroke: 0.5pt)

  line((2.40, 6.10), (3.92, 6.10), stroke: 0.9pt)
  line((2.40, 6.80), (3.55, 6.80), stroke: 0.9pt)
  line((3.55, 6.80), (3.92, 6.10), stroke: 0.8pt)
  line((2.40, 6.10), (2.40, 6.37), (2.32, 6.41), (2.48, 6.49), (2.40, 6.53), (2.40, 6.80), stroke: 0.8pt)

  line((4.08, 6.10), (5.60, 6.10), stroke: 0.9pt)
  line((4.45, 6.80), (5.60, 6.80), stroke: 0.9pt)
  line((4.45, 6.80), (4.08, 6.10), stroke: 0.8pt)
  line((5.60, 6.10), (5.60, 6.37), (5.52, 6.41), (5.68, 6.49), (5.60, 6.53), (5.60, 6.80), stroke: 0.8pt)

  arc((4.00, 6.144), start: 50.04deg, stop: 129.96deg, radius: 0.856, anchor: "origin", stroke: 1.0pt)
  arc((4.00, 6.148), start: 198.92deg, stop: 341.08deg, radius: 0.148, anchor: "origin", stroke: 1.0pt)

  line((3.97, 6.26), (3.92, 6.37), (3.95, 6.38), (3.99, 6.27), close: true, fill: black, stroke: none)
  line((4.04, 6.31), (4.10, 6.44), (4.13, 6.43), (4.07, 6.30), close: true, fill: black, stroke: none)
  line((3.92, 6.45), (3.81, 6.62), (3.84, 6.64), (3.95, 6.47), close: true, fill: black, stroke: none)
  line((4.06, 6.49), (4.19, 6.68), (4.22, 6.66), (4.09, 6.47), close: true, fill: black, stroke: none)
  line((3.99, 6.56), (3.97, 6.72), (4.01, 6.72), (4.02, 6.56), close: true, fill: black, stroke: none)
  line((3.74, 6.67), (3.65, 6.78), (3.68, 6.80), (3.77, 6.69), close: true, fill: black, stroke: none)
  line((4.25, 6.68), (4.35, 6.78), (4.38, 6.75), (4.28, 6.65), close: true, fill: black, stroke: none)

  rect((0.0, 4.10), (8.0, 5.80), fill: rgb("#262626"), stroke: 0.9pt)
  rect((0.02, 4.65), (7.98, 5.25), fill: white.transparentize(86%), stroke: none)
  rect((0.02, 4.75), (7.98, 5.15), fill: white.transparentize(78%), stroke: none)
  rect((0.02, 4.84), (7.98, 5.06), fill: white.transparentize(68%), stroke: none)

  line((2.82, 5.02), (2.94, 4.95), (2.82, 4.88), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((2.97, 5.02), (3.09, 4.95), (2.97, 4.88), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((3.12, 5.02), (3.24, 4.95), (3.12, 4.88), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((3.27, 5.02), (3.39, 4.95), (3.27, 4.88), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((3.42, 5.01), (3.53, 4.95), (3.42, 4.89), stroke: (paint: rgb("#2b2b2b"), thickness: 0.9pt))

  line((3.68, 4.91), (3.81, 4.99), stroke: (paint: rgb("#2b2b2b"), thickness: 1.0pt))
  line((3.83, 5.02), (3.95, 4.93), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((3.98, 4.89), (4.10, 4.98), stroke: (paint: rgb("#2b2b2b"), thickness: 1.0pt))
  line((4.14, 5.00), (4.26, 4.91), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  line((4.29, 4.93), (4.42, 4.99), stroke: (paint: rgb("#2b2b2b"), thickness: 0.95pt))
  circle((3.74, 5.01), radius: 0.028, fill: rgb("#2b2b2b"), stroke: none)
  circle((4.05, 5.02), radius: 0.025, fill: rgb("#2b2b2b"), stroke: none)
  circle((4.33, 4.88), radius: 0.025, fill: rgb("#2b2b2b"), stroke: none)

  circle((3.65, 4.95), radius: (1.05, 0.34), stroke: (paint: red, thickness: 1.0pt))

  line((7.15, 4.28), (7.65, 4.25), (7.67, 4.52), (7.17, 4.55), close: true, fill: white.transparentize(25%), stroke: none)

  content((0.0, 3.15), text(size: 8.5pt)[*Fig. 93.3* — Inclusioni di scoria allungate o allineate], anchor: "south-west")

  line((3.35, 2.70), (3.58, 2.81), (3.80, 2.86), (4.00, 2.88), (4.20, 2.86), (4.42, 2.81), (4.65, 2.70), (4.45, 2.70), (4.08, 2.00), (4.12, 2.00), (4.06, 1.97), (4.00, 1.96), (3.94, 1.97), (3.88, 2.00), (3.92, 2.00), (3.55, 2.70), close: true, fill: gray.transparentize(82%), stroke: none)

  line((2.40, 2.15), (2.55, 2.00), stroke: 0.5pt)
  line((2.41, 2.36), (2.77, 2.00), stroke: 0.5pt)
  line((2.40, 2.59), (2.99, 2.00), stroke: 0.5pt)
  line((2.51, 2.70), (3.21, 2.00), stroke: 0.5pt)
  line((2.73, 2.70), (3.43, 2.00), stroke: 0.5pt)
  line((2.95, 2.70), (3.65, 2.00), stroke: 0.5pt)
  line((3.17, 2.70), (3.87, 2.00), stroke: 0.5pt)
  line((3.39, 2.70), (3.73, 2.36), stroke: 0.5pt)

  line((4.16, 2.15), (4.31, 2.00), stroke: 0.5pt)
  line((4.24, 2.29), (4.53, 2.00), stroke: 0.5pt)
  line((4.31, 2.44), (4.75, 2.00), stroke: 0.5pt)
  line((4.39, 2.58), (4.97, 2.00), stroke: 0.5pt)
  line((4.49, 2.70), (5.19, 2.00), stroke: 0.5pt)
  line((4.71, 2.70), (5.41, 2.00), stroke: 0.5pt)
  line((4.93, 2.70), (5.60, 2.03), stroke: 0.5pt)
  line((5.15, 2.70), (5.60, 2.25), stroke: 0.5pt)
  line((5.37, 2.70), (5.60, 2.47), stroke: 0.5pt)

  line((2.40, 2.00), (3.92, 2.00), stroke: 0.9pt)
  line((2.40, 2.70), (3.55, 2.70), stroke: 0.9pt)
  line((3.55, 2.70), (3.92, 2.00), stroke: 0.8pt)
  line((2.40, 2.00), (2.40, 2.27), (2.32, 2.31), (2.48, 2.39), (2.40, 2.43), (2.40, 2.70), stroke: 0.8pt)

  line((4.08, 2.00), (5.60, 2.00), stroke: 0.9pt)
  line((4.45, 2.70), (5.60, 2.70), stroke: 0.9pt)
  line((4.45, 2.70), (4.08, 2.00), stroke: 0.8pt)
  line((5.60, 2.00), (5.60, 2.27), (5.52, 2.31), (5.68, 2.39), (5.60, 2.43), (5.60, 2.70), stroke: 0.8pt)

  arc((4.00, 1.616), start: 59.04deg, stop: 120.96deg, radius: 1.264, anchor: "origin", stroke: 1.0pt)
  arc((4.00, 2.160), start: 233.13deg, stop: 306.87deg, radius: 0.200, anchor: "origin", stroke: 1.0pt)
  arc((4.00, 2.113), start: 43.60deg, stop: 136.40deg, radius: 0.387, anchor: "origin", stroke: (paint: gray, dash: "dashed", thickness: 0.55pt))

  line((3.72, 2.38), (3.67, 2.47), (3.72, 2.52), (3.78, 2.47), (3.76, 2.40), close: true, fill: black, stroke: none)
  line((4.28, 2.38), (4.33, 2.46), (4.29, 2.51), (4.23, 2.45), (4.25, 2.39), close: true, fill: black, stroke: none)

  rect((0.0, 0.00), (8.0, 1.70), fill: rgb("#262626"), stroke: 0.9pt)
  rect((0.02, 0.55), (7.98, 1.15), fill: white.transparentize(86%), stroke: none)
  rect((0.02, 0.65), (7.98, 1.05), fill: white.transparentize(78%), stroke: none)
  rect((0.02, 0.74), (7.98, 0.96), fill: white.transparentize(68%), stroke: none)

  line((2.61, 0.02), (2.61, 0.78), stroke: (paint: white.transparentize(15%), thickness: 0.7pt))
  line((2.79, 0.02), (2.79, 0.78), stroke: (paint: white.transparentize(15%), thickness: 0.7pt))
  line((5.07, 0.02), (5.07, 0.75), stroke: (paint: white.transparentize(15%), thickness: 0.7pt))
  line((5.23, 0.02), (5.23, 0.75), stroke: (paint: white.transparentize(15%), thickness: 0.7pt))

  line((2.58, 0.85), (2.66, 0.87), (2.78, 0.86), (2.83, 0.84), (2.74, 0.82), (2.63, 0.83), close: true, fill: rgb("#222222"), stroke: none)
  line((5.04, 0.82), (5.13, 0.84), (5.26, 0.83), (5.24, 0.80), (5.12, 0.79), (5.05, 0.80), close: true, fill: rgb("#222222"), stroke: none)

  circle((2.70, 0.85), radius: (0.58, 0.34), stroke: (paint: red, thickness: 1.0pt))
  circle((5.15, 0.82), radius: (0.55, 0.32), stroke: (paint: red, thickness: 1.0pt))

  line((7.15, 0.18), (7.65, 0.15), (7.67, 0.42), (7.17, 0.45), close: true, fill: white.transparentize(25%), stroke: none)
})
