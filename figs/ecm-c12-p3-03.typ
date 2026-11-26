// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.75cm, {
  import draw: *

  rect((0.00, 4.50), (5.00, 6.40), fill: rgb("#f3f4f6"), stroke: 0.8pt)
  line((0.65, 4.80), (2.42, 4.92), (2.42, 5.28), (0.65, 5.40), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((0.65, 5.50), (2.42, 5.62), (2.42, 5.98), (0.65, 6.10), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 4.80), (2.58, 4.92), (2.58, 5.28), (4.35, 5.40), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 5.50), (2.58, 5.62), (2.58, 5.98), (4.35, 6.10), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)

  arc((0.65, 5.80), start: 90deg, stop: 270deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((0.65, 5.80), start: 90deg, stop: 270deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 5.10), start: 270deg, stop: 450deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 5.10), start: 270deg, stop: 450deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  line((0.65, 6.20), (4.60, 6.20), stroke: 0.9pt)
  line((0.65, 6.10), (4.60, 6.10), stroke: 0.9pt)
  line((0.65, 5.50), (4.35, 5.50), stroke: 0.9pt)
  line((0.65, 5.40), (4.35, 5.40), stroke: 0.9pt)
  line((0.40, 4.80), (4.35, 4.80), stroke: 0.9pt)
  line((0.40, 4.70), (4.35, 4.70), stroke: 0.9pt)

  line((1.25, 6.00), (1.05, 5.50), mark: (end: ">"), stroke: 0.85pt)
  line((3.75, 4.90), (3.95, 5.40), mark: (end: ">"), stroke: 0.85pt)
  content((6.85, 5.45), text(size: 7pt, weight: "bold", fill: black)[Nastro in condizioni \ di carico normale], anchor: "center")

  rect((0.00, 2.25), (5.00, 4.15), fill: rgb("#f3f4f6"), stroke: 0.8pt)
  line((0.65, 2.46), (2.42, 2.58), (2.42, 2.94), (0.65, 3.06), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((0.65, 3.16), (2.42, 3.28), (2.42, 3.64), (0.65, 3.76), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 2.64), (2.58, 2.76), (2.58, 3.12), (4.35, 3.24), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 3.34), (2.58, 3.46), (2.58, 3.82), (4.35, 3.94), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)

  arc((0.65, 3.46), start: 90deg, stop: 270deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((0.65, 3.46), start: 90deg, stop: 270deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 2.94), start: 270deg, stop: 450deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 2.94), start: 270deg, stop: 450deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  bezier((0.65, 3.86), (4.35, 4.04), (1.90, 3.86), (3.10, 4.04), stroke: 0.9pt)
  bezier((0.65, 3.76), (4.35, 3.94), (1.90, 3.76), (3.10, 3.94), stroke: 0.9pt)
  bezier((0.65, 3.16), (4.35, 3.34), (1.90, 3.16), (3.10, 3.34), stroke: 0.9pt)
  bezier((0.65, 3.06), (4.35, 3.24), (1.90, 3.06), (3.10, 3.24), stroke: 0.9pt)
  bezier((0.65, 2.46), (4.35, 2.64), (1.90, 2.46), (3.10, 2.64), stroke: 0.9pt)
  bezier((0.65, 2.36), (4.35, 2.54), (1.90, 2.36), (3.10, 2.54), stroke: 0.9pt)

  line((1.75, 3.70), (1.55, 3.20), mark: (end: ">"), stroke: 0.85pt)
  line((3.25, 2.70), (3.45, 3.20), mark: (end: ">"), stroke: 0.85pt)
  content((6.85, 3.20), text(size: 7pt, weight: "bold", fill: black)[Nastro in condizioni \ di lieve sovraccarico], anchor: "center")

  rect((0.00, 0.00), (5.00, 1.90), fill: rgb("#f3f4f6"), stroke: 0.8pt)
  line((0.65, 0.14), (2.42, 0.26), (2.42, 0.62), (0.65, 0.74), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((0.65, 0.84), (2.42, 0.96), (2.42, 1.32), (0.65, 1.44), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 0.46), (2.58, 0.58), (2.58, 0.94), (4.35, 1.06), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)
  line((4.35, 1.16), (2.58, 1.28), (2.58, 1.64), (4.35, 1.76), close: true, fill: rgb("#d1d5db"), stroke: 0.65pt)

  arc((0.65, 1.14), start: 90deg, stop: 270deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((0.65, 1.14), start: 90deg, stop: 270deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 0.76), start: 270deg, stop: 450deg, radius: 0.40, anchor: "origin", stroke: 0.9pt)
  arc((4.35, 0.76), start: 270deg, stop: 450deg, radius: 0.30, anchor: "origin", stroke: 0.9pt)
  bezier((0.65, 1.54), (4.35, 1.86), (1.90, 1.54), (3.10, 1.86), stroke: 0.9pt)
  bezier((0.65, 1.44), (4.35, 1.76), (1.90, 1.44), (3.10, 1.76), stroke: 0.9pt)
  bezier((0.65, 0.84), (4.35, 1.16), (1.90, 0.84), (3.10, 1.16), stroke: 0.9pt)
  bezier((0.65, 0.74), (4.35, 1.06), (1.90, 0.74), (3.10, 1.06), stroke: 0.9pt)
  bezier((0.65, 0.14), (4.35, 0.46), (1.90, 0.14), (3.10, 0.46), stroke: 0.9pt)
  bezier((0.65, 0.04), (4.35, 0.36), (1.90, 0.04), (3.10, 0.36), stroke: 0.9pt)

  line((2.25, 1.46), (2.05, 0.96), mark: (end: ">"), stroke: 0.85pt)
  line((2.75, 0.44), (2.95, 0.94), mark: (end: ">"), stroke: 0.85pt)
  content((6.85, 0.95), text(size: 7pt, weight: "bold", fill: black)[Nastro sotto forte \ carico impulsivo], anchor: "center")
})
