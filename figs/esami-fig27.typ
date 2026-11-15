// Figura estratta da esami.typ (riga 1982) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
      import draw: *

      // Profilo a C di sinistra
      line((-2.2, -1.5), (-0.8, -1.5), (-0.8, -1.28), (-1.98, -1.28), (-1.98, 1.28), (-0.8, 1.28), (-0.8, 1.5), (-2.2, 1.5), close: true, stroke: 1pt)

      // Profilo a C di destra
      line((2.2, -1.5), (0.8, -1.5), (0.8, -1.28), (1.98, -1.28), (1.98, 1.28), (0.8, 1.28), (0.8, 1.5), (2.2, 1.5), close: true, stroke: 1pt)

      // Crocette baricentriche sulle anime verticali
      line((-2.13, 0), (-2.05, 0), stroke: 0.6pt)
      line((-2.09, -0.05), (-2.09, 0.05), stroke: 0.6pt)
      line((2.05, 0), (2.13, 0), stroke: 0.6pt)
      line((2.09, -0.05), (2.09, 0.05), stroke: 0.6pt)

      // Baricentro G e assi y, z
      line((-0.08, 0), (0.08, 0), stroke: 1pt)
      line((0, -0.08), (0, 0.08), stroke: 1pt)
      line((0, 0), (0, 0.8), stroke: 1pt, mark: (end: ">"))
      line((0, 0), (-0.75, 0), stroke: 1pt, mark: (end: ">"))

      // Vettore momento flettente M_z (in verde con doppia punta)
      line((-0.75, 0), (-1.45, 0), stroke: (paint: green.darken(20%), thickness: 1pt), mark: (end: ">"))
      line((-0.75, 0), (-1.28, 0), stroke: (paint: green.darken(20%), thickness: 1pt), mark: (end: ">"))

      // Coppia torcente M_x (in rosso)
      arc((0, 0), start: -40deg, stop: 40deg, radius: 0.52, anchor: "origin", stroke: (paint: red, thickness: 1pt), mark: (end: ">"))

      // Quota verticale H
      line((-2.5, -1.5), (-2.5, 1.5), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((-2.6, -1.5), (-2.25, -1.5), stroke: 0.6pt)
      line((-2.6, 1.5), (-2.25, 1.5), stroke: 0.6pt)

      // Quota spessore s
      line((-0.62, 1.28), (-0.62, 1.5), stroke: 0.6pt, mark: (start: ">", end: ">"))

      // Quota larghezza ala B
      line((-2.2, -1.85), (-0.8, -1.85), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((-2.2, -1.55), (-2.2, -2.35), stroke: 0.6pt)
      line((-0.8, -1.55), (-0.8, -1.92), stroke: 0.6pt)

      // Quota larghezza totale L
      line((-2.2, -2.3), (2.2, -2.3), stroke: 0.6pt, mark: (start: ">", end: ">"))
      line((2.2, -1.55), (2.2, -2.35), stroke: 0.6pt)

      // Etichette (tutte con text(size: 7pt))
      content((-2.65, 0), text(size: 7pt)[$H$], anchor: "east")
      content((-0.52, 1.39), text(size: 7pt)[$s$], anchor: "west")
      content((-1.5, -1.78), text(size: 7pt)[$B$], anchor: "south")
      content((0, -2.22), text(size: 7pt)[$L$], anchor: "south")
      content((0.12, 0.65), text(size: 7pt)[$y$], anchor: "west")
      content((-0.45, -0.15), text(size: 7pt)[$z$], anchor: "north")
      content((0.12, -0.18), text(size: 7pt)[$G$], anchor: "west")
      content((-1.15, 0.15), text(size: 7pt, fill: green.darken(20%))[$M_z$], anchor: "south")
      content((0.6, 0), text(size: 7pt, fill: red)[$M_x$], anchor: "west")
    })
