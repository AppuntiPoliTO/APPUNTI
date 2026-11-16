// Figura estratta da esami.typ (riga 3076) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
      import draw: *

      // Struttura principale A-B-C-D-E
      line((0, 0), (0, 3.0), (2.0, 3.0), (2.0, 1.0), stroke: 1pt)

      // Cerniera interna in B (0, 2.0)
      circle((0, 2.0), radius: 0.07, fill: white, stroke: 1pt)

      // Cerniera fissa in A (0, 0)
      line((0, 0), (-0.14, -0.22), (0.14, -0.22), close: true, stroke: 0.6pt)
      line((-0.22, -0.22), (0.22, -0.22), stroke: 0.6pt)

      // Cerniera fissa in E (2.0, 1.0)
      line((2.0, 1.0), (1.86, 0.78), (2.14, 0.78), close: true, stroke: 0.6pt)
      line((1.78, 0.78), (2.22, 0.78), stroke: 0.6pt)
      line((1.8, 0.68), (1.88, 0.78), stroke: 0.6pt)
      line((1.9, 0.68), (1.98, 0.78), stroke: 0.6pt)
      line((2.0, 0.68), (2.08, 0.78), stroke: 0.6pt)
      line((2.1, 0.68), (2.18, 0.78), stroke: 0.6pt)

      // Carico distribuito q su AC
      line((-0.45, 0), (-0.45, 3.0), stroke: 0.6pt)
      line((-0.45, 0), (-0.02, 0), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 0.375), (-0.02, 0.375), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 0.75), (-0.02, 0.75), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 1.125), (-0.02, 1.125), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 1.5), (-0.02, 1.5), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 1.875), (-0.02, 1.875), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 2.25), (-0.02, 2.25), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 2.625), (-0.02, 2.625), stroke: 0.6pt, mark: (end: ">"))
      line((-0.45, 3.0), (-0.02, 3.0), stroke: 0.6pt, mark: (end: ">"))

      // Forza concentrata F in D
      line((2.0, 3.0), (2.0, 3.65), stroke: 1pt, mark: (end: ">"))

      // Quote geometriche
      line((0.32, 0), (0.32, 2.0), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((0.32, 2.0), (0.32, 3.0), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((0, 2.0), (0.4, 2.0), stroke: 0.6pt)

      line((0, -0.55), (2.0, -0.55), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((0, -0.25), (0, -0.65), stroke: 0.6pt)
      line((2.0, 0.65), (2.0, -0.65), stroke: 0.6pt)

      line((2.85, 1.0), (2.85, 3.0), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((2.0, 1.0), (2.95, 1.0), stroke: 0.6pt)
      line((2.0, 3.0), (2.95, 3.0), stroke: 0.6pt)

      // Etichette (tutte con text(size: 7pt))
      content((0.15, -0.1), text(size: 7pt)[$A$], anchor: "west")
      content((0.1, 2.15), text(size: 7pt)[$B$], anchor: "west")
      content((0, 3.12), text(size: 7pt)[$C$], anchor: "south")
      content((2.12, 3.12), text(size: 7pt)[$D$], anchor: "west")
      content((1.88, 1.08), text(size: 7pt)[$E$], anchor: "east")
      content((2.12, 3.55), text(size: 7pt)[$F$], anchor: "west")
      content((-0.58, 1.5), text(size: 7pt)[$q$], anchor: "east")
      content((0.42, 1.0), text(size: 7pt)[$L$], anchor: "west")
      content((0.42, 2.65), text(size: 7pt)[$L / 2$], anchor: "west")
      content((1.0, -0.48), text(size: 7pt)[$L$], anchor: "south")
      content((2.98, 2.0), text(size: 7pt)[$L$], anchor: "west")
    })
