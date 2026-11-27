// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.20, 0.00), (0.20, 1.65), (0.40, 1.80), (6.90, 1.80), (6.90, 0.00), fill: white, stroke: none)
  line((0.20, 0.00), (0.20, 1.65), (0.40, 1.80), (6.90, 1.80), stroke: 0.85pt)
  line((0.40, 0.00), (0.40, 1.80), stroke: 0.65pt)
  circle((6.90, 0.90), radius: (0.22, 0.90), fill: rgb(218, 218, 218), stroke: 0.75pt)

  line((0.65, 1.80), (0.65, 3.55), stroke: 0.65pt)
  line((6.50, 1.80), (6.50, 2.90), stroke: 0.65pt)

  line((0.65, 3.55), (2.95, 3.55), (2.95, 2.90), (6.50, 2.90), (6.50, 3.96), (6.46, 4.00), (0.69, 4.00), (0.65, 3.96), close: true, fill: rgb(218, 218, 218), stroke: 0.85pt)

  line((2.25, 2.63), (2.25, 3.45), (2.95, 3.45), (2.95, 2.63), close: true, fill: rgb(148, 178, 208), stroke: 0.8pt)
  line((2.25, 1.80), (2.25, 2.17), (3.12, 2.17), (3.12, 2.02), (4.85, 1.8816), (4.85, 1.80), close: true, fill: rgb(148, 178, 208), stroke: 0.8pt)

  line((3.32, 2.60), (3.32, 2.90), (5.15, 2.90), (5.15, 2.60), close: true, fill: rgb(148, 178, 208), stroke: 0.8pt)
  line((3.32, 2.004), (3.32, 2.20), (5.15, 2.20), (5.15, 1.8576), close: true, fill: rgb(148, 178, 208), stroke: 0.8pt)

  line((4.46, 2.56), (5.15, 2.56), stroke: 0.5pt)
  line((4.46, 2.24), (5.15, 2.24), stroke: 0.5pt)
  line((5.15, 2.20), (5.15, 2.60), stroke: 0.7pt)

  line((2.25, 2.20), (4.40, 2.20), (4.46, 2.25), (4.46, 2.55), (4.40, 2.60), (2.25, 2.60), close: true, fill: rgb(248, 248, 248), stroke: none)
  line((2.25, 2.22), (4.40, 2.22), (4.40, 2.34), (2.25, 2.34), close: true, fill: rgb(222, 222, 222), stroke: none)
  line((2.25, 2.20), (4.40, 2.20), (4.46, 2.25), (4.46, 2.55), (4.40, 2.60), (2.25, 2.60), close: true, stroke: 0.75pt)
  line((2.50, 2.20), (2.50, 2.60), stroke: 0.6pt)
  line((4.40, 2.20), (4.40, 2.60), stroke: 0.6pt)
  line((2.50, 2.56), (4.46, 2.56), stroke: 0.5pt)
  line((2.50, 2.24), (4.46, 2.24), stroke: 0.5pt)

  line((1.60, 2.06), (1.64, 2.02), (2.25, 2.02), (2.25, 2.78), (1.64, 2.78), (1.60, 2.74), close: true, fill: rgb(248, 248, 248), stroke: 0.75pt)

  line((0.00, 0.00), (7.50, 0.00), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: rgb(80, 80, 80)))
  line((1.35, 2.40), (5.30, 2.40), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: rgb(80, 80, 80)))

  line((0.65, 4.10), (0.65, 4.65), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  line((6.50, 4.10), (6.50, 4.65), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  line((0.65, 4.50), (6.50, 4.50), mark: (start: ">", end: ">", fill: rgb(140, 140, 140), scale: 0.5), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  content((3.575, 4.68), text(size: 8.5pt)[≥ 2L1], anchor: "south")

  line((6.75, 2.90), (7.75, 2.90), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  line((7.55, 1.00), (7.55, 2.90), mark: (end: ">", fill: rgb(140, 140, 140), scale: 0.5), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  content((7.88, 1.95), text(size: 8.5pt)[ø D], angle: 90deg, anchor: "center")

  line((6.75, 4.00), (8.65, 4.00), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  line((8.45, 1.00), (8.45, 4.00), mark: (end: ">", fill: rgb(140, 140, 140), scale: 0.5), stroke: (paint: rgb(140, 140, 140), thickness: 0.55pt))
  content((8.78, 2.50), text(size: 8.5pt)[ø DM], angle: 90deg, anchor: "center")
})
