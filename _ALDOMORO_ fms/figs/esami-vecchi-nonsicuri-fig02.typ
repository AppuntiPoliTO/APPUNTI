// Figura estratta da esami-vecchi-nonsicuri.typ (riga 88) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2.5cm, {
      import draw: *

      // Struttura principale
      line((0.8, 0.8), (0.8, 2.1), stroke: 1pt)
      line((0.8, 1.45), (1.2, 1.45), stroke: 1pt)
      line((0.8, 2.1), (6.0, 2.1), stroke: 1pt)
      line((4.7, 0.8), (4.7, 2.1), stroke: 1pt)

      // Cerniera interna in E(3.4, 2.1)
      circle((3.4, 2.1), radius: 0.08, fill: white, stroke: 1pt)

      // Cerniera a terra in A(0.8, 0.8)
      circle((0.8, 0.74), radius: 0.06, fill: white, stroke: 1pt)
      line((0.8, 0.68), (0.68, 0.52), (0.92, 0.52), close: true, stroke: 1pt)
      line((0.65, 0.52), (0.60, 0.42), stroke: 0.6pt)
      line((0.73, 0.52), (0.68, 0.42), stroke: 0.6pt)
      line((0.81, 0.52), (0.76, 0.42), stroke: 0.6pt)
      line((0.89, 0.52), (0.84, 0.42), stroke: 0.6pt)

      // Cerniera a terra in H(4.7, 0.8)
      circle((4.7, 0.74), radius: 0.06, fill: white, stroke: 1pt)
      line((4.7, 0.68), (4.58, 0.52), (4.82, 0.52), close: true, stroke: 1pt)
      line((4.55, 0.52), (4.50, 0.42), stroke: 0.6pt)
      line((4.63, 0.52), (4.58, 0.42), stroke: 0.6pt)
      line((4.71, 0.52), (4.66, 0.42), stroke: 0.6pt)
      line((4.79, 0.52), (4.74, 0.42), stroke: 0.6pt)

      // Carico distribuito q (in blu)
      line((0.8, 2.45), (4.7, 2.45), stroke: (paint: blue, thickness: 0.6pt))
      line((0.8, 2.45), (0.8, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((1.45, 2.45), (1.45, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((2.1, 2.45), (2.1, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((2.75, 2.45), (2.75, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((3.4, 2.45), (3.4, 2.18), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((4.05, 2.45), (4.05, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))
      line((4.7, 2.45), (4.7, 2.12), mark: (end: ">"), stroke: (paint: blue, thickness: 0.6pt))

      // Forza F in C (in blu)
      line((1.2, 1.45), (1.75, 1.45), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))

      // Coppia M in G (in blu)
      circle((6.0, 2.1), radius: 0.04, fill: black)
      arc((6.0, 2.1), start: -50deg, stop: 95deg, radius: 0.25, anchor: "origin", mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))

      // Quote geometriche
      // Quota verticale sinistra L/2
      line((0.4, 0.8), (0.7, 0.8), stroke: 0.4pt)
      line((0.4, 1.45), (0.7, 1.45), stroke: 0.4pt)
      line((0.45, 0.8), (0.45, 1.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
      // Quota L/4
      line((1.2, 1.45), (1.2, 1.75), stroke: 0.4pt)
      line((0.8, 1.7), (1.2, 1.7), mark: (start: ">", end: ">"), stroke: 0.6pt)
      // Quote superiori 2L, L, L
      line((0.8, 2.5), (0.8, 2.85), stroke: 0.4pt)
      line((3.4, 2.5), (3.4, 2.85), stroke: 0.4pt)
      line((4.7, 2.5), (4.7, 2.85), stroke: 0.4pt)
      line((6.0, 2.2), (6.0, 2.85), stroke: 0.4pt)
      line((0.8, 2.75), (3.4, 2.75), mark: (start: ">", end: ">"), stroke: 0.6pt)
      line((3.4, 2.75), (4.7, 2.75), mark: (start: ">", end: ">"), stroke: 0.6pt)
      line((4.7, 2.75), (6.0, 2.75), mark: (start: ">", end: ">"), stroke: 0.6pt)
      // Quota verticale destra L
      line((4.85, 0.8), (6.3, 0.8), stroke: 0.4pt)
      line((6.2, 0.8), (6.2, 2.1), mark: (start: ">", end: ">"), stroke: 0.6pt)

      // Dettaglio sezione quadrata a x a
      rect((6.8, 1.3), (7.3, 1.8), stroke: 0.8pt)
      line((6.8, 1.45), (6.95, 1.3), stroke: 0.4pt)
      line((6.8, 1.65), (7.15, 1.3), stroke: 0.4pt)
      line((6.85, 1.8), (7.3, 1.35), stroke: 0.4pt)
      line((7.05, 1.8), (7.3, 1.55), stroke: 0.4pt)
      line((6.8, 1.95), (7.3, 1.95), mark: (start: ">", end: ">"), stroke: 0.5pt)
      line((6.65, 1.3), (6.65, 1.8), mark: (start: ">", end: ">"), stroke: 0.5pt)

      // Etichette nodi (in rosso come nell'originale)
      content((0.68, 0.82), text(size: 7pt, fill: red)[A], anchor: "east")
      content((0.75, 1.45), text(size: 7pt, fill: red)[B], anchor: "east")
      content((1.2, 1.35), text(size: 7pt, fill: red)[C], anchor: "north")
      content((0.75, 2.15), text(size: 7pt, fill: red)[D], anchor: "east")
      content((3.4, 1.95), text(size: 7pt, fill: red)[E], anchor: "north")
      content((4.8, 2.2), text(size: 7pt, fill: red)[F], anchor: "south-west")
      content((6.0, 1.95), text(size: 7pt, fill: red)[G], anchor: "north")
      content((4.55, 0.82), text(size: 7pt, fill: red)[H], anchor: "east")

      // Etichette carichi e quote
      content((0.68, 2.35), text(size: 7pt, fill: blue)[$q$], anchor: "east")
      content((1.65, 1.35), text(size: 7pt, fill: blue)[$F$], anchor: "north")
      content((6.3, 2.25), text(size: 7pt, fill: blue)[$M$], anchor: "west")
      content((0.38, 1.12), text(size: 7pt)[$L/2$], anchor: "east")
      content((1.0, 1.75), text(size: 7pt)[$L/4$], anchor: "south")
      content((2.1, 2.82), text(size: 7pt)[$2 L$], anchor: "south")
      content((4.05, 2.82), text(size: 7pt)[$L$], anchor: "south")
      content((5.35, 2.82), text(size: 7pt)[$L$], anchor: "south")
      content((6.28, 1.45), text(size: 7pt)[$L$], anchor: "west")
      content((7.05, 2.0), text(size: 7pt)[$a$], anchor: "south")
      content((6.58, 1.55), text(size: 7pt)[$a$], anchor: "east")
    })
