// Figura estratta da esami.typ (riga 3012) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
      import draw: *

      // Contorno della sezione a doppio T
      line((-1.2, -1.6), (1.2, -1.6), (1.2, -1.36), (0.12, -1.36), (0.12, 1.36), (1.2, 1.36), (1.2, 1.6), (-1.2, 1.6), (-1.2, 1.36), (-0.12, 1.36), (-0.12, -1.36), (-1.2, -1.36), close: true, stroke: 1pt)

      // Baricentro G e terna baricentrica (y, z, x)
      circle((0, 0), radius: 0.04, fill: black)
      line((0, 0), (0, 1.8), stroke: 0.6pt, mark: (end: ">"))
      line((0, 0), (-1.0, 0), stroke: 0.6pt, mark: (end: ">"))
      line((-1.45, 0), (-2.1, 0), stroke: 0.8pt, mark: (end: ">"))
      line((-1.45, 0), (-1.92, 0), stroke: 0.8pt, mark: (end: ">"))

      // Quota superiore b
      line((-1.2, 1.65), (-1.2, 2.05), stroke: 0.6pt)
      line((1.2, 1.65), (1.2, 2.05), stroke: 0.6pt)
      line((-1.2, 1.95), (1.2, 1.95), stroke: 0.6pt, mark: (start: ">", end: ">"))

      // Quota spessore p
      line((1.25, 1.36), (1.65, 1.36), stroke: 0.6pt)
      line((1.25, 1.6), (1.65, 1.6), stroke: 0.6pt)
      line((1.5, 1.36), (1.5, 1.6), stroke: 0.6pt, mark: (start: ">", end: ">"))

      // Quota laterale h
      line((1.25, -1.6), (2.25, -1.6), stroke: 0.6pt)
      line((1.65, 1.6), (2.25, 1.6), stroke: 0.6pt)
      line((2.1, -1.6), (2.1, 1.6), stroke: 0.6pt, mark: (start: ">", end: ">"))

      // Etichette (tutte con text(size: 7pt))
      content((0, 2.05), text(size: 7pt)[$b$], anchor: "south")
      content((1.62, 1.48), text(size: 7pt)[$p$], anchor: "west")
      content((2.22, 0), text(size: 7pt)[$h$], anchor: "west")
      content((-0.12, 1.72), text(size: 7pt)[$y$], anchor: "east")
      content((-1.15, 0), text(size: 7pt)[$z$], anchor: "east")
      content((-0.1, 0.15), text(size: 7pt)[$G$], anchor: "east")
      content((0.05, -0.18), text(size: 7pt)[$x$], anchor: "north")
      content((-1.8, 0.15), text(size: 7pt)[$M_z$], anchor: "south")
    })
