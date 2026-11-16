// Figura estratta da main.typ (riga 913) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.85cm, {
  import draw: *
  // Rettangolo base b, altezza h
  rect((-2.6, 0), (0, 3.4), stroke: 1.4pt)
  // Striscia orizzontale dy (rossa)
  rect((-2.6, 2.1), (0, 2.45), fill: rgb(235, 65, 55, 180), stroke: 0.6pt)
  // Striscia verticale dz (verde)
  rect((-0.95, 0), (-0.55, 3.4), fill: rgb(45, 165, 85, 180), stroke: 0.6pt)

  // Assi z e y centrati in O
  line((0.4, 0), (-3.6, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, -0.4), (0, 4.2), mark: (end: ">"), stroke: 0.8pt)
  content((-3.5, 0.25), text(size: 8pt)[$z$])
  content((0.3, 4.0), text(size: 8pt)[$y$])
  content((0.3, -0.3), text(size: 8pt)[$O$])

  // Baricentro G e assi baricentrici
  circle((-1.3, 1.7), radius: 0.06, fill: black)
  line((-1.3, 1.7), (-2.1, 1.7), mark: (end: ">", size: 0.14), stroke: 0.6pt)
  line((-1.3, 1.7), (-1.3, 2.5), mark: (end: ">", size: 0.14), stroke: 0.6pt)
  content((-1.45, 1.4), text(size: 8pt)[$G$])
  content((-2.1, 1.9), text(size: 7pt)[$z_0$])
  content((-1.05, 2.4), text(size: 7pt)[$y_0$])

  // Quote b, h, dy, dz
  line((-2.6, -0.5), (0, -0.5), mark: (start: ">", end: ">", size: 0.14), stroke: 0.6pt)
  content((-1.3, -0.75), text(size: 8pt)[$b$])
  line((0.6, 0), (0.6, 3.4), mark: (start: ">", end: ">", size: 0.14), stroke: 0.6pt)
  content((0.85, 1.7), text(size: 8pt)[$h$])
  content((-3.0, 2.27), text(size: 8pt, fill: rgb(180, 30, 30))[$dif y$])
  content((-0.75, 3.75), text(size: 8pt, fill: rgb(30, 130, 60))[$dif z$])
})
