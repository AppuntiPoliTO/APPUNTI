// Figura estratta da esami.typ (riga 2588) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Asse trave A-B-C
  line((0, 0), (4.4, 0), stroke: 1.2pt)

  // Diagramma del taglio T (in blu)
  line((0, 0), (0, 0.48), (2.2, -1.35), (2.2, 0.92), (4.4, 0), stroke: (paint: blue.darken(20%), thickness: 1pt))

  // Etichette (con text(size: 7pt))
  content((0, 0.58), text(size: 7pt, fill: blue.darken(20%))[$1500 "N"$], anchor: "south")
  content((2.3, -1.35), text(size: 7pt, fill: blue.darken(20%))[$-4500 "N"$], anchor: "west")
  content((2.2, 1.02), text(size: 7pt, fill: blue.darken(20%))[$3000 "N"$], anchor: "south")
  content((0.2, 0.2), text(size: 7pt, fill: blue.darken(20%))[$+$], anchor: "center")
  content((1.75, -0.55), text(size: 7pt, fill: blue.darken(20%))[$-$], anchor: "center")
  content((2.65, 0.35), text(size: 7pt, fill: blue.darken(20%))[$+$], anchor: "center")
  content((0, -0.15), text(size: 7pt)[$A$], anchor: "north")
  content((2.35, -0.15), text(size: 7pt)[$B$], anchor: "north")
  content((4.4, -0.15), text(size: 7pt)[$C$], anchor: "north")
})
