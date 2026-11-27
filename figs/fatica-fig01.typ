// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((0, 0), (10, 6), stroke: 0.6pt + black, fill: none)

  line((0.2, 0), (0.2, 6), stroke: 0.45pt + black)
  line((0.4, 0), (0.4, 6), stroke: 0.45pt + black)
  line((0.6, 0), (0.6, 6), stroke: 0.45pt + black)
  line((0.8, 0), (0.8, 6), stroke: 0.45pt + black)
  line((1, -0.15), (1, 6), stroke: 0.5pt + black)
  line((2, -0.15), (2, 6), stroke: 0.5pt + black)
  line((3, -0.15), (3, 6), stroke: 0.5pt + black)
  line((4, -0.15), (4, 6), stroke: 0.5pt + black)
  line((5, -0.15), (5, 6), stroke: 0.5pt + black)
  line((6, -0.15), (6, 6), stroke: 0.5pt + black)
  line((7, -0.15), (7, 6), stroke: 0.5pt + black)
  line((8, -0.15), (8, 6), stroke: 0.5pt + black)
  line((9, -0.15), (9, 6), stroke: 0.5pt + black)
  line((10, -0.15), (10, 6), stroke: 0.6pt + black)

  line((-0.2, 0), (0, 0), stroke: 0.5pt + black)
  line((-0.2, 0.6), (10, 0.6), stroke: 0.5pt + black)
  line((-0.2, 1.2), (10, 1.2), stroke: 0.5pt + black)
  line((-0.2, 1.8), (10, 1.8), stroke: 0.5pt + black)
  line((-0.2, 2.4), (10, 2.4), stroke: 0.5pt + black)
  line((-0.2, 3.0), (10, 3.0), stroke: 0.5pt + black)
  line((-0.2, 3.6), (10, 3.6), stroke: 0.5pt + black)
  line((-0.2, 4.2), (10, 4.2), stroke: 0.5pt + black)
  line((-0.2, 4.8), (10, 4.8), stroke: 0.5pt + black)
  line((-0.2, 5.4), (10, 5.4), stroke: 0.5pt + black)
  line((-0.2, 6.0), (0, 6.0), stroke: 0.5pt + black)

  rect((2.35, 0.85), (8.45, 4.45), fill: white, stroke: none)

  bezier((0.08, 4.00), (1.00, 5.65), (0.20, 5.05), (0.55, 5.52), stroke: 2.8pt + black)
  bezier((1.00, 5.65), (2.08, 5.83), (1.35, 5.77), (1.75, 5.82), stroke: 2.8pt + black)

  bezier((0.08, 2.00), (1.00, 4.80), (0.20, 3.30), (0.55, 4.42), stroke: 2.8pt + black)
  bezier((1.00, 4.80), (3.00, 5.52), (1.35, 5.18), (2.10, 5.40), stroke: 2.8pt + black)
  bezier((3.00, 5.52), (10.00, 5.80), (4.60, 5.74), (7.00, 5.79), stroke: 2.8pt + black)

  bezier((0.08, 1.12), (1.00, 4.05), (0.25, 2.30), (0.62, 3.55), stroke: 2.8pt + black)
  bezier((1.00, 4.05), (3.00, 5.16), (1.42, 4.58), (2.15, 4.96), stroke: 2.8pt + black)
  bezier((3.00, 5.16), (10.00, 5.72), (4.60, 5.48), (7.00, 5.60), stroke: 2.8pt + black)

  content((0, -0.35), text(size: 10.5pt)[0], anchor: "north")
  content((1, -0.35), text(size: 10.5pt)[1], anchor: "north")
  content((2, -0.35), text(size: 10.5pt)[2], anchor: "north")
  content((3, -0.35), text(size: 10.5pt)[3], anchor: "north")
  content((4, -0.35), text(size: 10.5pt)[4], anchor: "north")
  content((5, -0.35), text(size: 10.5pt)[5], anchor: "north")
  content((6, -0.35), text(size: 10.5pt)[6], anchor: "north")
  content((7, -0.35), text(size: 10.5pt)[7], anchor: "north")
  content((8, -0.35), text(size: 10.5pt)[8], anchor: "north")
  content((9, -0.35), text(size: 10.5pt)[9], anchor: "north")
  content((9.75, -0.35), text(size: 11.5pt)[$r$ (mm)], anchor: "north-west")

  content((-0.35, 0), text(size: 10.5pt)[0], anchor: "east")
  content((-0.35, 0.6), text(size: 10.5pt)[0.1], anchor: "east")
  content((-0.35, 1.2), text(size: 10.5pt)[0.2], anchor: "east")
  content((-0.35, 1.8), text(size: 10.5pt)[0.3], anchor: "east")
  content((-0.35, 2.4), text(size: 10.5pt)[0.4], anchor: "east")
  content((-0.35, 3.0), text(size: 10.5pt)[0.5], anchor: "east")
  content((-0.35, 3.6), text(size: 10.5pt)[0.6], anchor: "east")
  content((-0.35, 4.2), text(size: 10.5pt)[0.7], anchor: "east")
  content((-0.35, 4.8), text(size: 10.5pt)[0.8], anchor: "east")
  content((-0.35, 5.4), text(size: 10.5pt)[0.9], anchor: "east")
  content((-0.35, 6.0), text(size: 10.5pt)[1.0], anchor: "east")

  content((-1.35, 3.6), text(size: 12pt)[$q$], anchor: "east")

  content((2.48, 4.10), text(size: 11pt)[Acciai temprati], anchor: "west")
  content((2.48, 3.60), text(size: 11pt)[Acciai rinvenuti o normalizzati], anchor: "west")
  content((2.48, 3.10), text(size: 11pt)[Leghe di alluminio], anchor: "west")
  content((2.48, 2.15), text(size: 11pt)[(valori approssimati)], anchor: "west")
  content((2.48, 1.25), text(size: 11pt)[Non verificato con intagli profondi], anchor: "west")

  line((2.52, 4.25), (1.75, 5.66), stroke: 0.6pt + black, mark: (end: ">", fill: black, scale: 0.5))
  line((2.45, 3.62), (1.15, 4.78), stroke: 0.6pt + black, mark: (end: ">", fill: black, scale: 0.5))
  line((2.40, 3.22), (0.85, 3.45), stroke: 0.6pt + black, mark: (end: ">", fill: black, scale: 0.5))
})
