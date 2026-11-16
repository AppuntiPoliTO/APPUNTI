// Figura estratta da main.typ (riga 804) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. Riempimento e contorno dell'elemento infinitesimo (rettangolo azzurro)
  rect((-1.93, 0.90), (-0.90, 1.50), fill: rgb(198, 217, 241), stroke: none)
  line((-1.93, 0.90), (-1.93, 1.50), (-0.90, 1.50), (-0.90, 0.90), (-1.20, 0.90), stroke: 0.6pt)
  line((-1.93, 0.90), (-1.62, 0.90), stroke: 0.6pt)

  // 2. Contorno chiuso della superficie (4 Bezier C1)
  bezier((-3.40, 0.20), (-0.20, 2.17), (-3.40, 1.55), (-1.80, 2.17), stroke: 1.5pt)
  bezier((-0.20, 2.17), (2.73, 0.20), (1.45, 2.17), (2.73, 1.40), stroke: 1.5pt)
  bezier((2.73, 0.20), (0.10, -1.73), (2.73, -1.15), (1.50, -1.73), stroke: 1.5pt)
  bezier((0.10, -1.73), (-3.40, 0.20), (-1.85, -1.73), (-3.40, -1.05), stroke: 1.5pt)

  // 3. Assi y, z, a
  line((0, -0.40), (0, 3.55), mark: (end: ">", size: 0.22), stroke: 0.7pt)
  line((0.65, 0), (-4.80, 0), mark: (end: ">", size: 0.22), stroke: 0.7pt)
  line((0, 0), (-4.70, 1.90), mark: (end: ">", size: 0.22), stroke: 0.6pt)

  // 4. Segmenti r, d, punto P e arco alpha
  // Segmento r (da G a V)
  line((0, 0), (-1.42, 1.22), stroke: 0.6pt)

  // Segmento d (da V perpendicolare all'asse a in H)
  line((-1.42, 1.22), (-1.64, 0.66), stroke: 0.6pt)

  // Pallino nero per il punto P
  circle((-1.50, 1.26), radius: 0.08, fill: black, stroke: none)

  // Arco per l'angolo alpha (centro (0,0), raggio 2.38, da 158deg a 180deg)
  arc((0, 0), start: 158deg, stop: 180deg, radius: 2.38, anchor: "origin", mark: (start: ">", end: ">", size: 0.12), stroke: 0.5pt)

  // 5. Etichette (tutte con text(size: 7pt))
  content((0.28, 3.10), text(size: 7pt)[$y$], anchor: "west")
  content((-4.25, -0.22), text(size: 7pt)[$z$], anchor: "north")
  content((-3.95, 1.85), text(size: 7pt)[$a$], anchor: "south")
  content((-2.52, 0.55), text(size: 7pt)[$alpha$], anchor: "east")
  content((-1.32, 1.32), text(size: 7pt)[P], anchor: "south")
  content((-1.38, 0.82), text(size: 7pt, fill: rgb(70, 75, 85))[$d$], anchor: "west")
  content((-0.42, 0.75), text(size: 7pt)[$r$], anchor: "south-west")
  content((0.25, 0.45), text(size: 7pt)[$G$], anchor: "west")
})
