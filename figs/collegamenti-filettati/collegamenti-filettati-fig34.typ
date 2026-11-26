// Figura estratta da collegamenti filettati.typ (riga 991) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-1.5, 0), (-0.28, 0), (-0.28, 0.6), (-1.5, 0.6), close: true, fill: luma(205), stroke: 0.9pt)
  line((-1.5, -0.6), (-0.28, -0.6), (-0.28, 0), (-1.5, 0), close: true, fill: luma(205), stroke: 0.9pt)
  line((0.28, 0), (1.5, 0), (1.5, 0.6), (0.28, 0.6), close: true, fill: luma(205), stroke: 0.9pt)
  line((0.28, -0.6), (1.5, -0.6), (1.5, 0), (0.28, 0), close: true, fill: luma(205), stroke: 0.9pt)

  rect((-1.12, -0.22), (-0.68, 0.22), fill: white, stroke: none)
  content((-0.9, 0), text(size: 8.5pt)[A])

  line((-0.22, -1.16), (0.22, -1.16), (0.22, 0.6), (-0.22, 0.6), close: true, fill: white, stroke: none)
  line((-0.22, -1.16), (0.22, -1.16), (0.17, -1.22), (-0.17, -1.22), close: true, fill: white, stroke: 0.9pt)
  line((-0.22, -1.16), (-0.22, 0.6), stroke: 0.9pt)
  line((0.22, -1.16), (0.22, 0.6), stroke: 0.9pt)
  line((-0.17, -1.22), (-0.17, -0.15), stroke: 0.65pt)
  line((0.17, -1.22), (0.17, -0.15), stroke: 0.65pt)

  line((-0.38, 0.6), (0.38, 0.6), (0.38, 0.84), (0.32, 0.9), (-0.32, 0.9), (-0.38, 0.84), close: true, fill: white, stroke: 0.9pt)
  line((-0.19, 0.6), (-0.19, 0.9), stroke: 0.75pt)
  line((0.19, 0.6), (0.19, 0.9), stroke: 0.75pt)

  line((-0.32, -0.6), (0.32, -0.6), (0.38, -0.66), (0.38, -0.86), (0.32, -0.92), (-0.32, -0.92), (-0.38, -0.86), (-0.38, -0.66), close: true, fill: white, stroke: 0.9pt)
  line((-0.19, -0.6), (-0.19, -0.92), stroke: 0.75pt)
  line((0.19, -0.6), (0.19, -0.92), stroke: 0.75pt)

  line((0, -1.32), (0, 1.15), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((-0.6, 0.6), (-0.6, 1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((0.6, 0.6), (0.6, 1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((-0.6, -0.6), (-0.6, -1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((0.6, -0.6), (0.6, -1.15), mark: (end: ">", fill: black), stroke: 1.5pt)

  line((1.5, 0.6), (2.05, 0.6), stroke: 0.55pt)
  line((1.5, -0.6), (2.05, -0.6), stroke: 0.55pt)
  line((1.9, -0.6), (1.9, 0.6), mark: (start: ">", end: ">", fill: black), stroke: 0.7pt)
  content((2.02, 0), text(size: 8.5pt)[$L_p$], anchor: "west")

  line((3.0, 0.35), (3.55, 0.35), (3.55, 0), (4.22, 0), (4.22, 0.6), (3.0, 0.6), close: true, fill: luma(205), stroke: 0.9pt)
  line((3.0, -0.6), (4.22, -0.6), (4.22, 0), (3.55, 0), (3.55, -0.35), (3.0, -0.35), close: true, fill: luma(205), stroke: 0.9pt)
  line((4.78, 0), (5.45, 0), (5.45, 0.35), (6.0, 0.35), (6.0, 0.6), (4.78, 0.6), close: true, fill: luma(205), stroke: 0.9pt)
  line((4.78, -0.6), (6.0, -0.6), (6.0, -0.35), (5.45, -0.35), (5.45, 0), (4.78, 0), close: true, fill: luma(205), stroke: 0.9pt)

  rect((3.66, -0.22), (4.1, 0.22), fill: white, stroke: none)
  content((3.88, 0), text(size: 8.5pt)[B])

  line((4.28, -1.16), (4.72, -1.16), (4.72, 0.6), (4.28, 0.6), close: true, fill: white, stroke: none)
  line((4.28, -1.16), (4.72, -1.16), (4.67, -1.22), (4.33, -1.22), close: true, fill: white, stroke: 0.9pt)
  line((4.28, -1.16), (4.28, 0.6), stroke: 0.9pt)
  line((4.72, -1.16), (4.72, 0.6), stroke: 0.9pt)
  line((4.33, -1.22), (4.33, -0.15), stroke: 0.65pt)
  line((4.67, -1.22), (4.67, -0.15), stroke: 0.65pt)

  line((4.12, 0.6), (4.88, 0.6), (4.88, 0.84), (4.82, 0.9), (4.18, 0.9), (4.12, 0.84), close: true, fill: white, stroke: 0.9pt)
  line((4.31, 0.6), (4.31, 0.9), stroke: 0.75pt)
  line((4.69, 0.6), (4.69, 0.9), stroke: 0.75pt)

  line((4.18, -0.6), (4.82, -0.6), (4.88, -0.66), (4.88, -0.86), (4.82, -0.92), (4.18, -0.92), (4.12, -0.86), (4.12, -0.66), close: true, fill: white, stroke: 0.9pt)
  line((4.31, -0.6), (4.31, -0.92), stroke: 0.75pt)
  line((4.69, -0.6), (4.69, -0.92), stroke: 0.75pt)

  line((4.5, -1.32), (4.5, 1.15), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  line((3.275, 0.6), (3.275, 1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((5.725, 0.6), (5.725, 1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((3.275, -0.6), (3.275, -1.15), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((5.725, -0.6), (5.725, -1.15), mark: (end: ">", fill: black), stroke: 1.5pt)

  line((6.0, 0.6), (7.3, 0.6), stroke: 0.55pt)
  line((6.0, 0.35), (6.5, 0.35), stroke: 0.55pt)
  line((6.0, -0.35), (6.5, -0.35), stroke: 0.55pt)
  line((6.0, -0.6), (7.3, -0.6), stroke: 0.55pt)

  line((6.35, 1.05), (6.35, 0.6), mark: (end: ">", fill: black), stroke: 0.7pt)
  content((6.47, 0.85), text(size: 8.5pt)[$L_a$], anchor: "west")

  line((6.35, -0.35), (6.35, 0.35), mark: (start: ">", end: ">", fill: black), stroke: 0.7pt)
  content((6.47, 0), text(size: 8.5pt)[$L_b$], anchor: "west")

  line((6.35, -1.05), (6.35, -0.6), mark: (end: ">", fill: black), stroke: 0.7pt)
  content((6.47, -0.85), text(size: 8.5pt)[$L_c$], anchor: "west")

  line((7.15, -0.6), (7.15, 0.6), mark: (start: ">", end: ">", fill: black), stroke: 0.7pt)
  content((7.27, 0), text(size: 8.5pt)[$L_p$], anchor: "west")
})
