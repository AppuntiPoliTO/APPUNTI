// Figura estratta da main.typ (riga 399) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Riempimento e bordi orizzontali della striscia elementare azzurra
  rect((-3.88, 4.16), (0, 4.75), fill: rgb(195, 214, 238), stroke: none)
  line((-3.88, 4.75), (0, 4.75), stroke: 1.2pt + rgb(35, 75, 120))
  line((-3.88, 4.16), (0, 4.16), stroke: 1.2pt + rgb(35, 75, 120))

  // 2. Linee di riferimento sottili per le quote
  // Riferimenti per dy (a sinistra)
  line((-4.70, 4.75), (-3.88, 4.75), stroke: 0.5pt)
  line((-4.70, 4.16), (-3.88, 4.16), stroke: 0.5pt)
  line((-4.58, 4.16), (-4.58, 4.75), stroke: 0.5pt)

  // Riferimenti per b (in basso)
  line((-3.88, 0), (-3.88, -0.95), stroke: 0.5pt)
  line((0, 0), (0, -0.95), stroke: 0.5pt)

  // Riferimenti per h (a destra)
  line((0, 5.62), (1.25, 5.62), stroke: 0.5pt)
  line((0, 0), (1.25, 0), stroke: 0.5pt)

  // 3. Assi principali z e y
  line((0, 0), (0, 6.95), mark: (end: ">", size: 0.22), stroke: 0.6pt)
  line((0, 0), (-5.45, 0), mark: (end: ">", size: 0.22), stroke: 0.6pt)

  // 4. Contorno del rettangolo principale (spesso)
  rect((-3.88, 0), (0, 5.62), stroke: 1.4pt)

  // 5. Baricentro G e assi baricentrici (z_G, y_G)
  circle((-1.94, 2.81), radius: 0.04, fill: black, stroke: none)
  line((-1.94, 2.81), (-1.94, 3.88), mark: (end: ">", size: 0.14), stroke: 0.5pt)
  line((-1.94, 2.81), (-3.05, 2.81), mark: (end: ">", size: 0.14), stroke: 0.5pt)

  // 6. Frecce delle quote
  // Quota dy
  line((-4.58, 5.45), (-4.58, 4.75), mark: (end: ">", size: 0.15), stroke: 0.5pt)
  line((-4.58, 3.46), (-4.58, 4.16), mark: (end: ">", size: 0.15), stroke: 0.5pt)

  // Quota h
  line((1.10, 0), (1.10, 5.62), mark: (start: ">", end: ">", size: 0.20), stroke: 0.6pt)

  // Quota b
  line((-3.88, -0.82), (0, -0.82), mark: (start: ">", end: ">", size: 0.20), stroke: 0.6pt)

  // 7. Etichette (tutte con text(size: 7pt))
  content((0.40, 6.70), text(size: 7pt)[$y$], anchor: "west")
  content((-5.10, 0.25), text(size: 7pt)[$z$], anchor: "south")
  content((0.20, -0.15), text(size: 7pt)[$O$], anchor: "north-west")
  content((-1.94, -0.70), text(size: 7pt)[$b$], anchor: "south")
  content((1.28, 2.81), text(size: 7pt)[$h$], anchor: "west")
  content((-4.78, 4.45), text(size: 7pt, fill: rgb(45, 105, 155))[$d y$], anchor: "east")

  content((-2.15, 2.55), text(size: 7pt)[$G$], anchor: "north")
  content((-2.08, 3.65), text(size: 7pt)[$y_("G")$], anchor: "east")
  content((-2.95, 2.95), text(size: 7pt)[$z_("G")$], anchor: "south")
})
