// Figura estratta da fatica.typ (riga 4600) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.05cm, {
  // BBox: x in [-0.35, 6.85] (dx=7.20), y in [-0.40, 4.70], length=1.05cm -> larghezza = 7.56 cm <= 8.2 cm
  import draw: line, rect, circle, bezier, content

  // Telaio fisso inferiore (orizzontale) + tratteggio d'incastro
  line((1.5, 0.0), (4.5, 0.0), stroke: 1.05pt)
  for hx in (1.7, 2.1, 2.5, 2.9, 3.3, 3.7, 4.1, 4.45) {
    line((hx, 0.0), (hx - 0.20, -0.22), stroke: 0.6pt)
  }
  content((4.62, -0.05), anchor: "west", text(size: 7pt, fill: luma(50))[Telaio di supporto])

  // Telaio fisso sinistro (verticale) + tratteggio d'incastro
  line((0.0, 1.65), (0.0, 4.25), stroke: 1.05pt)
  for hy in (1.85, 2.25, 2.65, 3.05, 3.45, 3.85, 4.20) {
    line((0.0, hy), (-0.22, hy - 0.20), stroke: 0.6pt)
  }

  // Collare di carico e sezione alare della pala
  rect((2.25, 2.55), (3.75, 3.65), radius: 0.08, fill: black.transparentize(90%), stroke: 0.9pt)
  bezier((2.46, 3.10), (3.60, 3.04), (2.72, 3.48), (3.22, 3.30), stroke: 1.05pt)
  bezier((2.46, 3.10), (3.60, 3.04), (2.72, 2.82), (3.22, 2.92), stroke: 1.05pt)
  circle((2.82, 3.12), radius: 0.11, fill: black.transparentize(75%), stroke: 0.65pt)

  // Spostamenti simultanei sui due piani ortogonali
  line((2.42, 4.02), (3.58, 4.02), mark: (start: ">", end: ">", scale: 0.50, fill: blue), stroke: (paint: blue, thickness: 0.85pt))
  content((3.00, 4.14), anchor: "south", text(size: 7.5pt, fill: blue)[$Delta x(t)$])

  line((4.10, 2.68), (4.10, 3.52), mark: (start: ">", end: ">", scale: 0.50, fill: red.transparentize(10%)), stroke: (paint: red.transparentize(10%), thickness: 0.85pt))
  content((4.22, 3.10), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%))[$Delta y(t)$])

  // Attuatore verticale Fy(t) + cerniere di disaccoppiamento
  line((2.80, 0.0), (3.00, 0.24), (3.20, 0.0), stroke: 0.8pt)
  line((3.00, 0.33), (3.00, 0.62), stroke: 0.95pt)
  rect((2.78, 0.62), (3.22, 1.56), fill: black.transparentize(86%), stroke: 0.95pt)
  line((2.81, 1.12), (3.19, 1.12), stroke: 1.1pt)
  line((3.00, 1.12), (3.00, 2.46), stroke: 0.95pt)
  // Traccia cinematica tratteggiata (rotazione libera senza flessione parassita)
  line((3.00, 0.24), (3.32, 2.52), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  circle((3.00, 0.24), radius: 0.09, fill: white, stroke: 0.95pt)
  circle((3.00, 2.55), radius: 0.09, fill: white, stroke: 0.95pt)
  content((2.64, 1.10), anchor: "east", text(size: 7.5pt, fill: red.transparentize(10%))[$F_y (t)$])

  // Attuatore orizzontale Fx(t) + cerniere di disaccoppiamento
  line((0.0, 2.90), (0.24, 3.10), (0.0, 3.30), stroke: 0.8pt)
  line((0.33, 3.10), (0.60, 3.10), stroke: 0.95pt)
  rect((0.60, 2.88), (1.50, 3.32), fill: black.transparentize(86%), stroke: 0.95pt)
  line((1.05, 2.91), (1.05, 3.29), stroke: 1.1pt)
  line((1.05, 3.10), (2.16, 3.10), stroke: 0.95pt)
  line((0.24, 3.10), (2.22, 3.38), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(95)))
  circle((0.24, 3.10), radius: 0.09, fill: white, stroke: 0.95pt)
  circle((2.25, 3.10), radius: 0.09, fill: white, stroke: 0.95pt)
  content((1.05, 3.46), anchor: "south", text(size: 7.5pt, fill: blue)[$F_x (t)$])

  // Richiami esterni senza collisioni
  line((4.25, 4.12), (3.76, 3.63), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  content((4.32, 4.18), anchor: "west", text(size: 7pt)[Sezione pala \ e collare])

  line((4.22, 1.58), (3.13, 2.48), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  line((4.22, 1.32), (3.13, 0.30), mark: (end: ">", scale: 0.45, fill: black), stroke: 0.6pt)
  content((4.28, 1.45), anchor: "west", text(size: 7pt)[Cerniere di \ disaccoppiamento])
})
