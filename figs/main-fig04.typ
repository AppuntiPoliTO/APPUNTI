// Figura estratta da main.typ (riga 310) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Riempimento e contorno della striscia elementare azzurra
  rect((-1.56, 3.09), (0, 3.69), fill: rgb(195, 214, 238), stroke: 0.5pt + rgb(70, 80, 95))

  // 2. Linee di riferimento sottili per le quote
  // Riferimenti per dy (a sinistra)
  line((-3.85, 3.69), (-1.56, 3.69), stroke: 0.5pt)
  line((-3.85, 3.09), (-1.56, 3.09), stroke: 0.5pt)

  // Riferimento verticale per z (sotto la striscia)
  line((-1.56, 3.09), (-1.56, 2.45), stroke: 0.5pt)

  // Riferimenti per b (in basso)
  line((-3.77, 0), (-3.77, -1.00), stroke: 0.5pt)
  line((0, 0), (0, -1.00), stroke: 0.5pt)

  // Riferimenti per y e h (a destra)
  line((0, 3.09), (0.65, 3.09), stroke: 0.5pt)
  line((0, 6.29), (1.45, 6.29), stroke: 0.5pt)
  line((0, 0), (1.45, 0), stroke: 0.5pt)

  // 3. Assi principali z e y
  line((0, 0), (0, 7.25), mark: (end: ">", size: 0.22), stroke: 0.6pt)
  line((0, 0), (-4.45, 0), mark: (end: ">", size: 0.22), stroke: 0.6pt)

  // 4. Contorno del triangolo rettangolo (spesso)
  line((0, 0), (-3.77, 0), (0, 6.29), close: true, stroke: 1.4pt)

  // 5. Baricentro G e assi baricentrici (z_G, y_G)
  circle((-1.14, 1.80), radius: 0.03, fill: black, stroke: none)
  line((-1.14, 1.80), (-1.14, 2.40), mark: (end: ">", size: 0.12), stroke: 0.5pt)
  line((-1.14, 1.80), (-1.68, 1.80), mark: (end: ">", size: 0.12), stroke: 0.5pt)

  // 6. Frecce delle quote
  // Quota dy
  line((-3.68, 4.45), (-3.68, 3.69), mark: (end: ">", size: 0.20), stroke: 0.5pt)
  line((-3.68, 2.33), (-3.68, 3.09), mark: (end: ">", size: 0.20), stroke: 0.5pt)

  // Quota z (con pallino sull'asse y)
  circle((0, 2.55), radius: 0.07, fill: black, stroke: none)
  line((0, 2.55), (-1.56, 2.55), mark: (end: ">", size: 0.20), stroke: 0.6pt)

  // Quota y (con pallino sulla base)
  circle((0.52, 0), radius: 0.07, fill: black, stroke: none)
  line((0.52, 0), (0.52, 3.09), mark: (end: ">", size: 0.20), stroke: 0.6pt)

  // Quota h
  line((1.30, 0), (1.30, 6.29), mark: (start: ">", end: ">", size: 0.20), stroke: 0.6pt)

  // Quota b
  line((-3.77, -0.82), (0, -0.82), mark: (start: ">", end: ">", size: 0.20), stroke: 0.6pt)

  // 7. Etichette (tutte con text(size: 7pt))
  content((-0.25, 7.15), text(size: 7pt)[$y$], anchor: "east")
  content((-4.30, 0.30), text(size: 7pt)[$z$], anchor: "south")
  content((-1.88, -0.70), text(size: 7pt)[$b$], anchor: "south")
  content((1.48, 3.15), text(size: 7pt)[$h$], anchor: "west")
  content((0.65, 1.55), text(size: 7pt)[$y$], anchor: "west")
  content((-0.78, 2.65), text(size: 7pt)[$z$], anchor: "south")
  content((-3.95, 3.39), text(size: 7pt, fill: rgb(45, 105, 155))[$d y$], anchor: "east")

  content((-1.20, 1.58), text(size: 7pt, fill: rgb(80, 90, 105))[$G$], anchor: "north")
  content((-1.00, 2.15), text(size: 7pt)[$y_("G")$], anchor: "west")
  content((-1.72, 1.75), text(size: 7pt)[$z_("G")$], anchor: "east")
})
