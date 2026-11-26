// Figura estratta da collegamenti filettati.typ (riga 1169) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((-1.5, 1.6), (1.5, 1.6), stroke: 1pt)
  line((-1.5, -1.6), (1.5, -1.6), stroke: 1pt)
  line((-1.5, 1.6), (-1.5, 1.3), stroke: 0.8pt)
  line((-1.5, -1.3), (-1.5, -1.6), stroke: 0.8pt)
  line((1.5, 1.6), (1.5, 1.3), stroke: 0.8pt)
  line((1.5, -1.3), (1.5, -1.6), stroke: 0.8pt)
  line((-1.5, 1.3), (-1.22, 1.2), (-1.78, 1.0), (-1.22, 0.8), (-1.78, 0.6), (-1.22, 0.4), (-1.78, 0.2), (-1.22, 0.0), (-1.78, -0.2), (-1.22, -0.4), (-1.78, -0.6), (-1.22, -0.8), (-1.78, -1.0), (-1.22, -1.2), (-1.5, -1.3), stroke: (thickness: 1.1pt, join: "round"))
  line((1.5, 1.3), (1.78, 1.2), (1.22, 1.0), (1.78, 0.8), (1.22, 0.6), (1.78, 0.4), (1.22, 0.2), (1.78, 0.0), (1.22, -0.2), (1.78, -0.4), (1.22, -0.6), (1.78, -0.8), (1.22, -1.0), (1.78, -1.2), (1.5, -1.3), stroke: (thickness: 1.1pt, join: "round"))
  circle((-1.5, 1.3), radius: 0.06, fill: rgb("#00c896"), stroke: 0.6pt)
  circle((-1.5, -1.3), radius: 0.06, fill: rgb("#00c896"), stroke: 0.6pt)
  circle((1.5, 1.3), radius: 0.06, fill: rgb("#00c896"), stroke: 0.6pt)
  circle((1.5, -1.3), radius: 0.06, fill: rgb("#00c896"), stroke: 0.6pt)
  line((0, 0.7), (0, 1.6), mark: (end: ">", fill: black), stroke: 1.5pt)
  line((0, -0.7), (0, -1.6), mark: (end: ">", fill: black), stroke: 1.5pt)
  content((-0.2, 1.15), text(size: 9pt)[$C$], anchor: "east")
  content((-0.2, -1.15), text(size: 9pt)[$C$], anchor: "east")
  line((1.5, 1.6), (2.7, 1.6), stroke: 0.5pt)
  line((1.5, -1.6), (2.7, -1.6), stroke: 0.5pt)
  line((2.4, -1.6), (2.4, 1.6), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)
  content((2.6, 0), text(size: 9pt)[$L_p = L_v$], anchor: "west")
})
