// Figura estratta da esami.typ (riga 141) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.5cm, {
      import draw: *

      // Struttura principale (ritti e traverso)
      line((0, 0), (0, 2.0), (4.0, 2.0), (4.0, 0), stroke: 1pt)

      // Cerniera interna in C (2.0, 2.0)
      circle((2.0, 2.0), radius: 0.08, fill: white, stroke: 1pt)

      // Carrello in A (0, 0)
      circle((0, -0.08), radius: 0.08, fill: white, stroke: 0.6pt)
      line((-0.2, -0.16), (0.2, -0.16), stroke: 0.6pt)

      // Carrello intermedio in D (3.0, 2.0)
      circle((3.0, 1.92), radius: 0.08, fill: white, stroke: 0.6pt)
      line((2.8, 1.84), (3.2, 1.84), stroke: 0.6pt)

      // Cerniera fissa in F (4.0, 0)
      line((4.0, 0), (3.85, -0.2), (4.15, -0.2), close: true, stroke: 0.6pt)
      line((3.75, -0.2), (4.25, -0.2), stroke: 0.6pt)

      // Forza concentrata F in B
      line((-0.75, 2.0), (-0.02, 2.0), stroke: 1pt, mark: (end: ">"))

      // Carico distribuito q su BE
      line((0, 2.45), (4.0, 2.45), stroke: 0.6pt)
      line((0, 2.45), (0, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((0.5, 2.45), (0.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((1.0, 2.45), (1.0, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((1.5, 2.45), (1.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((2.0, 2.45), (2.0, 2.1), stroke: 0.6pt, mark: (end: ">"))
      line((2.5, 2.45), (2.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((3.0, 2.45), (3.0, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((3.5, 2.45), (3.5, 2.02), stroke: 0.6pt, mark: (end: ">"))
      line((4.0, 2.45), (4.0, 2.02), stroke: 0.6pt, mark: (end: ">"))

      // Quote geometriche
      line((0, -0.55), (4.0, -0.55), stroke: 0.6pt)
      line((0, -0.45), (0, -0.65), stroke: 0.6pt)
      line((2.0, -0.45), (2.0, -0.65), stroke: 0.6pt)
      line((3.0, -0.45), (3.0, -0.65), stroke: 0.6pt)
      line((4.0, -0.45), (4.0, -0.65), stroke: 0.6pt)

      line((4.55, 0), (4.55, 2.0), stroke: 0.6pt)
      line((4.45, 0), (4.65, 0), stroke: 0.6pt)
      line((4.45, 2.0), (4.65, 2.0), stroke: 0.6pt)

      // Etichette (tutte con text(size: 7pt))
      content((-0.18, 0.05), text(size: 7pt)[$A$], anchor: "east")
      content((0.12, 1.82), text(size: 7pt)[$B$], anchor: "north")
      content((1.88, 1.82), text(size: 7pt)[$C$], anchor: "north")
      content((2.82, 1.82), text(size: 7pt)[$D$], anchor: "north")
      content((4.15, 1.85), text(size: 7pt)[$E$], anchor: "west")
      content((4.18, 0.05), text(size: 7pt)[$F$], anchor: "west")
      content((-0.45, 2.15), text(size: 7pt)[$F$], anchor: "south")
      content((2.2, 2.55), text(size: 7pt)[$q$], anchor: "south")
      content((1.0, -0.65), text(size: 7pt)[$2 L$], anchor: "north")
      content((2.5, -0.65), text(size: 7pt)[$L$], anchor: "north")
      content((3.5, -0.65), text(size: 7pt)[$L$], anchor: "north")
      content((4.7, 1.0), text(size: 7pt)[$2 L$], anchor: "west")
    })
