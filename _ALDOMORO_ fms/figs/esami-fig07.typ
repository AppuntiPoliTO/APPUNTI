// Figura estratta da esami.typ (riga 579) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Spezzone Tratto III
  line((0, 1.5), (1.2, 1.5), (1.2, 0), stroke: 1pt)

  // Reazioni O_F e V_F in F
  line((0.65, 0), (1.18, 0), stroke: 1pt, mark: (end: ">"))
  line((1.2, -0.55), (1.2, -0.02), stroke: 1pt, mark: (end: ">"))

  // Carico distribuito q su x'
  line((0, 1.85), (1.2, 1.85), stroke: 0.6pt)
  line((0.2, 1.85), (0.2, 1.52), stroke: 0.6pt, mark: (end: ">"))
  line((0.6, 1.85), (0.6, 1.52), stroke: 0.6pt, mark: (end: ">"))
  line((1.0, 1.85), (1.0, 1.52), stroke: 0.6pt, mark: (end: ">"))

  // Quota x'
  line((1.2, 1.1), (0, 1.1), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne sulla faccia sinistra (0, 1.5)
  line((0, 1.3), (0, 1.7), stroke: 0.6pt)
  line((-0.05, 1.5), (-0.55, 1.5), stroke: 0.6pt, mark: (end: ">"))
  line((0.1, 1.0), (0.1, 1.48), stroke: 0.6pt, mark: (end: ">"))
  arc((0, 1.5), start: 120deg, stop: 240deg, radius: 0.35, anchor: "origin", stroke: 0.6pt, mark: (start: ">"))

  // Etichette
  content((1.3, 0.1), text(size: 7pt)[$O_F$], anchor: "west")
  content((1.3, -0.35), text(size: 7pt)[$V_F$], anchor: "west")
  content((0.6, 1.05), text(size: 7pt)[$x'$], anchor: "north")
  content((-0.5, 1.38), text(size: 7pt)[$N$], anchor: "north")
  content((-0.05, 1.15), text(size: 7pt)[$T$], anchor: "east")
  content((-0.2, 1.88), text(size: 7pt)[$M$], anchor: "south")
})
