// Figura estratta da esami.typ (riga 506) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Struttura spezzone Tratto II
  line((0, 0), (0, 1.5), (1.2, 1.5), stroke: 1pt)

  // Forza F e reazione V_A
  line((-0.6, 1.5), (-0.02, 1.5), stroke: 1pt, mark: (end: ">"))
  line((0, -0.5), (0, -0.02), stroke: 1pt, mark: (end: ">"))

  // Carico distribuito q
  line((0, 1.85), (1.2, 1.85), stroke: 0.6pt)
  line((0.2, 1.85), (0.2, 1.52), stroke: 0.6pt, mark: (end: ">"))
  line((0.6, 1.85), (0.6, 1.52), stroke: 0.6pt, mark: (end: ">"))
  line((1.0, 1.85), (1.0, 1.52), stroke: 0.6pt, mark: (end: ">"))

  // Quota x
  line((0, 1.15), (1.2, 1.15), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne nella sezione x
  line((1.2, 1.3), (1.2, 1.7), stroke: 0.6pt)
  line((1.25, 1.5), (1.75, 1.5), stroke: 0.6pt, mark: (end: ">"))
  line((1.1, 1.45), (1.1, 0.95), stroke: 0.6pt, mark: (end: ">"))
  arc((1.2, 1.5), start: -60deg, stop: 60deg, radius: 0.35, anchor: "origin", stroke: 0.6pt, mark: (end: ">"))

  // Etichette
  content((-0.35, 1.38), text(size: 7pt)[$F$], anchor: "north")
  content((0.1, -0.3), text(size: 7pt)[$V_A$], anchor: "west")
  content((0.6, 1.08), text(size: 7pt)[$x$], anchor: "north")
  content((1.7, 1.38), text(size: 7pt)[$N$], anchor: "north")
  content((1.1, 0.9), text(size: 7pt)[$T$], anchor: "north")
  content((1.45, 1.88), text(size: 7pt)[$M$], anchor: "south")
})
