// Figura estratta da main.typ (riga 475) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Contorno del cerchio
  circle((0, 0), radius: 2.47, stroke: 1.4pt)

  // 2. Linee di riferimento verticali
  line((0, 0), (0, 3.60), stroke: 0.7pt)
  line((4.75, -3.00), (4.75, 3.60), stroke: 0.9pt)

  // 3. Vettore raggio r e quota d
  line((0, 0), (2.05, -1.38), mark: (end: ">", size: 0.22), stroke: 1.4pt)
  line((0, 2.55), (4.75, 2.55), mark: (start: ">", end: ">", size: 0.22), stroke: 1.1pt)

  // 4. Etichette (tutte con text(size: 7pt))
  content((2.38, 2.75), text(size: 7pt)[$d$], anchor: "south")
  content((0.10, -1.35), text(size: 7pt)[$r$], anchor: "north")
})
