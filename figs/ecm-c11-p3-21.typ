#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.25, 0.55), (6.25, 0.55), (6.95, 0.90), (0.95, 0.90), close: true, fill: rgb("#d0d8ea"), stroke: none)
  line((6.25, 0.0), (6.95, 0.35), (6.95, 0.90), (6.25, 0.55), close: true, fill: rgb("#8c96ac"), stroke: none)
  line((0.25, 0.0), (6.25, 0.0), (6.25, 0.55), (0.25, 0.55), close: true, fill: rgb("#aeb8ce"), stroke: none)

  rect((0.25, 0.0), (6.25, 0.55), stroke: 0.75pt)
  line((6.25, 0.0), (6.95, 0.35), (6.95, 0.90), (6.25, 0.55), stroke: 0.75pt)
  line((0.25, 0.55), (0.95, 0.90), (1.84, 0.90), stroke: 0.75pt)
  line((4.85, 0.90), (6.95, 0.90), stroke: 0.75pt)

  line((3.35, 0.55), (4.05, 0.90), (4.05, 4.20), (3.35, 3.85), close: true, fill: rgb("#8c96ac"), stroke: none)
  line((2.55, 3.85), (3.35, 3.85), (4.05, 4.20), (3.25, 4.20), close: true, fill: rgb("#d0d8ea"), stroke: none)
  line((2.55, 0.55), (3.35, 0.55), (3.35, 3.85), (2.55, 3.85), close: true, fill: rgb("#aeb8ce"), stroke: none)

  line((2.55, 1.30), (2.55, 3.85), stroke: 0.75pt)
  line((2.55, 3.85), (3.35, 3.85), (4.05, 4.20), (3.25, 4.20), close: true, stroke: 0.75pt)
  line((3.35, 1.30), (3.35, 3.85), stroke: 0.75pt)
  line((4.05, 1.65), (4.05, 4.20), stroke: 0.75pt)

  arc((2.55, 0.55), start: 90deg, stop: 180deg, radius: (0.80, 0.75), anchor: "origin", mode: "PIE", fill: rgb("#aeb8ce"), stroke: none)
  arc((2.55, 0.55), start: 90deg, stop: 180deg, radius: (0.80, 0.75), anchor: "origin", stroke: 0.75pt)

  arc((4.05, 0.90), start: 0deg, stop: 90deg, radius: (0.80, 0.75), anchor: "origin", mode: "PIE", fill: rgb("#d0d8ea"), stroke: none)
  line((3.35, 1.30), (4.05, 1.65), (4.85, 0.90), (4.15, 0.55), (3.35, 0.55), close: true, fill: rgb("#d0d8ea"), stroke: none)
  arc((3.35, 0.55), start: 0deg, stop: 90deg, radius: (0.80, 0.75), anchor: "origin", mode: "PIE", fill: rgb("#aeb8ce"), stroke: none)

  arc((3.35, 0.55), start: 0deg, stop: 90deg, radius: (0.80, 0.75), anchor: "origin", stroke: 0.75pt)
  arc((4.05, 0.90), start: 0deg, stop: 90deg, radius: (0.80, 0.75), anchor: "origin", stroke: 0.75pt)
  line((3.35, 1.30), (4.05, 1.65), stroke: 0.75pt)
  line((4.15, 0.55), (4.85, 0.90), stroke: 0.75pt)

  line((4.15, 0.0), (4.15, 0.55), stroke: 0.7pt)
  line((3.65, 0.55), (3.95, 0.0), (4.15, 0.0), stroke: 0.7pt)
  line((3.91, 0.08), (4.15, 0.08), stroke: 0.5pt)
  line((3.86, 0.16), (4.15, 0.16), stroke: 0.5pt)
  line((3.82, 0.24), (4.15, 0.24), stroke: 0.5pt)
  line((3.78, 0.32), (4.15, 0.32), stroke: 0.5pt)
  line((3.73, 0.40), (4.15, 0.40), stroke: 0.5pt)
  line((3.69, 0.48), (4.15, 0.48), stroke: 0.5pt)

  line((4.90, 0.0), (4.90, 0.55), stroke: 0.7pt)
  line((4.58, 0.55), (4.70, 0.0), (4.90, 0.0), stroke: 0.7pt)
  line((4.68, 0.08), (4.90, 0.08), stroke: 0.5pt)
  line((4.67, 0.16), (4.90, 0.16), stroke: 0.5pt)
  line((4.65, 0.24), (4.90, 0.24), stroke: 0.5pt)
  line((4.63, 0.32), (4.90, 0.32), stroke: 0.5pt)
  line((4.61, 0.40), (4.90, 0.40), stroke: 0.5pt)
  line((4.60, 0.48), (4.90, 0.48), stroke: 0.5pt)

  line((5.80, 0.0), (5.80, 0.55), stroke: 0.7pt)
  line((5.55, 0.55), (5.55, 0.0), (5.80, 0.0), stroke: 0.7pt)
  line((5.55, 0.08), (5.80, 0.08), stroke: 0.5pt)
  line((5.55, 0.16), (5.80, 0.16), stroke: 0.5pt)
  line((5.55, 0.24), (5.80, 0.24), stroke: 0.5pt)
  line((5.55, 0.32), (5.80, 0.32), stroke: 0.5pt)
  line((5.55, 0.40), (5.80, 0.40), stroke: 0.5pt)
  line((5.55, 0.48), (5.80, 0.48), stroke: 0.5pt)

  line((4.15, 0.55), (4.15, 2.05), stroke: (dash: "dotted", thickness: 0.75pt))
  line((4.90, 0.55), (4.90, 1.07), stroke: (dash: "dotted", thickness: 0.75pt))
  line((5.80, 0.55), (5.80, 0.90), stroke: (dash: "dotted", thickness: 0.75pt))

  line((4.15, 0.90), (5.80, 0.90), stroke: (paint: rgb("#0000cc"), thickness: 1.1pt))
  bezier((4.15, 1.30), (5.80, 0.90), (4.65, 1.14), (5.15, 0.91), stroke: (paint: rgb("#cc0000"), thickness: 1.1pt))
  bezier((4.15, 2.05), (5.80, 0.90), (4.45, 1.32), (4.95, 0.92), stroke: (paint: rgb("#007700"), thickness: 1.1pt))

  circle((4.15, 0.55), radius: 0.075, fill: black, stroke: none)
  circle((4.15, 1.30), radius: 0.075, fill: white, stroke: 0.9pt)

  line((0.15, 0.205), (-0.25, 0.205), (-0.25, 0.125), (-0.48, 0.275), (-0.25, 0.425), (-0.25, 0.345), (0.15, 0.345), close: true, fill: black, stroke: none)
  content((-0.56, 0.275), text(size: 8.5pt, weight: "bold")[Load], anchor: "east")

  line((6.65, 0.28), (7.05, 0.28), (7.05, 0.20), (7.28, 0.35), (7.05, 0.50), (7.05, 0.42), (6.65, 0.42), close: true, fill: black, stroke: none)
  content((7.36, 0.35), text(size: 8.5pt, weight: "bold")[Load], anchor: "west")

  bezier((3.65, -0.10), (4.75, -0.26), (3.65, -0.24), (4.75, -0.12), stroke: 0.75pt)
  bezier((5.85, -0.10), (4.75, -0.26), (5.85, -0.24), (4.75, -0.12), stroke: 0.75pt)
  content((4.75, -0.34), text(size: 8pt, weight: "bold")[Structural stress distribution], anchor: "north")
  content((4.75, -0.72), text(size: 8pt, weight: "bold")[through thickness], anchor: "north")

  content((1.45, 2.08), text(size: 8pt, weight: "bold")[Structural], anchor: "center")
  content((1.45, 1.72), text(size: 8pt, weight: "bold")[hot spot stress], anchor: "center")
  line((2.18, 1.80), (4.06, 1.32), stroke: 0.55pt)

  content((1.45, 1.28), text(size: 8pt, weight: "bold")[Weld toe], anchor: "center")
  content((1.45, 0.92), text(size: 8pt, weight: "bold")['Hot spot'], anchor: "center")
  line((2.05, 1.05), (4.06, 0.57), stroke: 0.55pt)

  content((4.75, 2.40), text(size: 8pt, weight: "bold")[Local notch stress], anchor: "west")
  line((4.72, 2.34), (4.33, 1.62), stroke: 0.55pt)

  content((4.95, 1.95), text(size: 8pt, weight: "bold")[Structural stress], anchor: "west")
  line((4.92, 1.89), (4.52, 1.16), stroke: 0.55pt)

  content((5.15, 1.50), text(size: 8pt, weight: "bold")[Nominal stress], anchor: "west")
  line((5.12, 1.44), (4.78, 0.90), stroke: 0.55pt)
})
