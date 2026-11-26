#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.80, -0.30), (0.80, 3.20), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((6.20, -0.30), (6.20, 1.40), stroke: (dash: "dash-dotted", thickness: 0.65pt))
  line((2.65, -0.35), (2.65, 2.40), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  line((0.80, 0.0), (6.20, 0.0), stroke: 0.85pt)
  line((0.80, 1.10), (6.20, 1.10), stroke: 0.85pt)

  line((0.80, 2.85), (2.25, 2.85), (2.25, 1.50), (0.80, 1.50), stroke: 0.85pt)
  line((2.25, 1.50), (2.65, 1.10), stroke: 0.85pt)

  content((1.525, 2.38), text(size: 8pt, weight: "bold")[Attachment], anchor: "center")
  content((1.525, 2.00), text(size: 8pt, weight: "bold")[plate], anchor: "center")
  content((1.48, 1.26), text(size: 8pt, weight: "bold")[Fillet weld], anchor: "center")

  line((0.0, 1.10), (0.70, 1.10), stroke: 0.55pt)
  line((0.0, 0.0), (0.70, 0.0), stroke: 0.55pt)
  line((0.25, 0.0), (0.25, 1.10), mark: (start: ">", end: ">", fill: black), stroke: 0.65pt)
  content((0.12, 0.55), text(size: 8.5pt, weight: "bold")[$t$], anchor: "east")

  line((6.55, 0.55), (7.45, 0.55), mark: (start: ">", end: ">", fill: black), stroke: 0.9pt)

  line((3.15, 0.0), (3.15, 1.10), stroke: (paint: rgb("#008844"), thickness: 1.1pt))
  line((2.75, 0.0), (3.55, 1.10), stroke: (paint: rgb("#2244cc"), thickness: 1.0pt))
  bezier((2.95, 0.0), (4.35, 1.10), (3.10, 0.55), (3.00, 1.05), stroke: (paint: rgb("#dd2222"), thickness: 1.0pt))

  line((2.65, -0.55), (2.65, -0.04), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((2.65, -0.62), text(size: 8pt, weight: "bold")[Stress evaluation plane], anchor: "north")

  line((3.15, -0.25), (3.15, -0.04), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((3.22, -0.22), text(size: 8pt, weight: "bold")[Membrane stress], anchor: "west")

  line((3.55, 1.55), (3.55, 1.14), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((3.50, 1.62), text(size: 8pt, weight: "bold")[Hot spot stress], anchor: "west")

  line((4.35, 1.38), (4.35, 1.14), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((4.42, 1.36), text(size: 8pt, weight: "bold")[Notch stress], anchor: "west")

  line((2.65, 2.40), (2.65, 4.30), mark: (end: ">", fill: black), stroke: 0.8pt)
  line((2.65, 2.40), (6.20, 2.40), mark: (end: ">", fill: black), stroke: 0.8pt)
  content((2.55, 4.00), text(size: 8pt, weight: "bold")[Stress], anchor: "east")

  line((3.35, 2.40), (3.35, 2.52), stroke: 1.1pt)
  line((4.75, 2.40), (4.75, 2.52), stroke: 1.1pt)
  content((3.35, 2.28), text(size: 8pt, weight: "bold")[$t slash 2$], anchor: "north")
  content((4.75, 2.28), text(size: 8pt, weight: "bold")[$3t slash 2$], anchor: "north")

  line((3.35, 2.52), (3.35, 3.10), mark: (end: ">", fill: black), stroke: 0.65pt)
  line((4.75, 2.52), (4.75, 2.84), mark: (end: ">", fill: black), stroke: 0.65pt)

  line((2.65, 3.25), (5.35, 2.75), stroke: (paint: rgb("#2244cc"), thickness: 1.05pt))
  bezier((2.65, 4.10), (3.45, 3.10), (2.70, 3.40), (3.00, 3.18), stroke: (paint: rgb("#dd2222"), thickness: 1.05pt))

  line((3.65, 3.95), (2.75, 3.95), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((3.72, 3.95), text(size: 8pt, weight: "bold")[Notch stress], anchor: "west")

  line((3.65, 3.55), (2.72, 3.27), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((3.72, 3.55), text(size: 8pt, weight: "bold")[Hot spot stress], anchor: "west")

  line((6.00, 2.75), (5.42, 2.75), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((6.05, 2.75), text(size: 8pt, weight: "bold")[Surface stress], anchor: "west")
})
