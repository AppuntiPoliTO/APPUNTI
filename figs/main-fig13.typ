// Figura estratta da main.typ (riga 947) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.85cm, {
  import draw: *
  // Cerchio esterno di raggio R
  circle((0, 0), radius: 2.0, stroke: 1.4pt)
  // Corona circolare elementare tra r e r + dr
  circle((0, 0), radius: 1.35, fill: rgb(198, 217, 241), stroke: 0.6pt)
  circle((0, 0), radius: 1.05, fill: white, stroke: 0.6pt)

  // Assi z e y centrati nel polo P
  line((2.5, 0), (-2.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, -2.4), (0, 2.6), mark: (end: ">"), stroke: 0.8pt)
  content((-2.5, -0.3), text(size: 8pt)[$z$])
  content((0.3, 2.45), text(size: 8pt)[$y$])
  content((0.25, -0.28), text(size: 8pt)[$P$])

  // Raggi r, r + dr e R
  line((0, 0), (-0.95, 0.45), mark: (end: ">", size: 0.13), stroke: 0.6pt)
  content((-0.35, 0.45), text(size: 8pt)[$r$])
  line((0, 0), (-2.1, 0.75), stroke: 0.5pt)
  content((-2.2, 1.05), text(size: 8pt)[$r + dif r$])
  line((-2.0, 0), (-2.0, -2.1), stroke: 0.5pt)
  line((-2.0, -1.9), (0, -1.9), mark: (start: ">", end: ">", size: 0.14), stroke: 0.6pt)
  content((-1.0, -1.65), text(size: 8pt)[$R$])
})
