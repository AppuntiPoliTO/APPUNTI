// Figura estratta da esami-vecchi-nonsicuri.typ (riga 421) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi cartesiani
  line((0.4, 2.2), (6.0, 2.2), mark: (end: ">"), stroke: 0.8pt)
  line((1.0, 0.3), (1.0, 4.2), mark: (end: ">"), stroke: 0.8pt)

  // I tre cerchi di Mohr
  circle((3.24, 2.20), radius: 1.76, stroke: (paint: blue.darken(30%), thickness: 1pt))
  circle((2.70, 2.20), radius: 1.22, stroke: (paint: blue.darken(30%), thickness: 1pt))
  circle((4.46, 2.20), radius: 0.54, stroke: (paint: blue.darken(30%), thickness: 1pt))

  // Punti delle tensioni principali
  circle((1.48, 2.20), radius: 0.04, fill: black)
  circle((3.92, 2.20), radius: 0.04, fill: black)
  circle((5.00, 2.20), radius: 0.04, fill: black)

  // Etichette
  content((0.9, 4.1), text(size: 7pt)[$tau thin ["MPa"]$], anchor: "east")
  content((5.9, 2.05), text(size: 7pt)[$sigma thin ["MPa"]$], anchor: "north")
  content((1.35, 2.05), text(size: 7pt)[$sigma_3$], anchor: "north")
  content((1.35, 1.70), text(size: 7pt)[$24$], anchor: "north")
  content((3.78, 2.05), text(size: 7pt)[$sigma_2$], anchor: "north")
  content((3.78, 1.70), text(size: 7pt)[$146$], anchor: "north")
  content((5.15, 2.05), text(size: 7pt)[$sigma_1$], anchor: "north")
  content((5.15, 1.70), text(size: 7pt)[$200$], anchor: "north")
})
