// Figura estratta da esami-vecchi-nonsicuri.typ (riga 28) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Spigoli del cubetto elementare
  line((3.0, 1.5), (3.0, 3.3), stroke: 1pt)
  line((1.6, 2.0), (1.6, 3.8), stroke: 1pt)
  line((4.5, 1.8), (4.5, 3.6), stroke: 1pt)
  line((1.6, 2.0), (3.0, 1.5), (4.5, 1.8), stroke: 1pt)
  line((1.6, 3.8), (3.0, 3.3), (4.5, 3.6), (3.1, 4.1), close: true, stroke: 1pt)

  // Assi coordinati
  line((3.0, 3.7), (3.0, 5.1), mark: (end: ">"), stroke: 0.6pt)
  line((2.3, 2.5), (0.6, 1.9), mark: (end: ">"), stroke: 0.6pt)
  line((3.7, 2.4), (5.5, 2.0), mark: (end: ">"), stroke: 0.6pt)

  // Vettori di tensione (in blu come nello schema a mano)
  // sigma_yy
  line((3.0, 3.7), (3.0, 4.7), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))
  // sigma_zz
  line((2.3, 2.5), (1.1, 2.08), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))
  // sigma_xx
  line((3.7, 2.4), (5.0, 2.11), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))
  // tau_xz sulla faccia z (verso lo spigolo centrale)
  line((2.0, 2.85), (2.9, 2.53), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))
  // tau_xz sulla faccia x (verso lo spigolo centrale)
  line((4.1, 2.7), (3.1, 2.5), mark: (end: ">"), stroke: (paint: blue, thickness: 1pt))

  // Etichette
  content((2.7, 5.0), text(size: 7pt)[$y$], anchor: "east")
  content((0.7, 1.6), text(size: 7pt)[$z$], anchor: "north")
  content((5.4, 1.7), text(size: 7pt)[$x$], anchor: "north")
  content((3.15, 4.45), text(size: 7pt)[$sigma_(y y)$], anchor: "west")
  content((1.4, 2.95), text(size: 7pt)[$sigma_(z z)$], anchor: "east")
  content((4.8, 2.45), text(size: 7pt)[$sigma_(x x)$], anchor: "west")
  content((2.45, 3.05), text(size: 7pt)[$tau_(x z)$], anchor: "south")
  content((3.75, 2.95), text(size: 7pt)[$tau_(x z)$], anchor: "south")
})
