// Figura estratta da esami.typ (riga 648) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 2cm, {
  import draw: *

  // Spezzone verticale Tratto IV
  line((0, 0), (0, 1.2), stroke: 1pt)
  circle((0, 0), radius: 0.05, fill: black)

  // Reazioni O_F e V_F
  line((-0.55, 0), (-0.05, 0), stroke: 1pt, mark: (end: ">"))
  line((0, -0.55), (0, -0.05), stroke: 1pt, mark: (end: ">"))

  // Quota x'
  line((-0.45, 0), (-0.25, 0), stroke: 0.6pt)
  line((-0.45, 1.2), (-0.25, 1.2), stroke: 0.6pt)
  line((-0.35, 0), (-0.35, 1.2), stroke: 0.6pt, mark: (end: ">"))

  // Azioni interne in cima allo spezzone
  line((-0.15, 1.2), (0.15, 1.2), stroke: 0.6pt)
  line((0, 1.25), (0, 1.75), stroke: 0.6pt, mark: (end: ">"))
  line((-0.2, 1.1), (0.4, 1.1), stroke: 0.6pt, mark: (end: ">"))
  arc((0, 1.2), start: 30deg, stop: 150deg, radius: 0.35, anchor: "origin", stroke: 0.6pt, mark: (end: ">"))

  // Etichette
  content((0.15, 0.05), text(size: 7pt)[$O_F$], anchor: "west")
  content((0.1, -0.35), text(size: 7pt)[$V_F$], anchor: "west")
  content((-0.45, 0.6), text(size: 7pt)[$x'$], anchor: "east")
  content((-0.1, 1.7), text(size: 7pt)[$N$], anchor: "east")
  content((0.42, 0.98), text(size: 7pt)[$T$], anchor: "north")
  content((-0.38, 1.38), text(size: 7pt)[$M$], anchor: "east")
})
