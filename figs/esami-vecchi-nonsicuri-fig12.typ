// Figura estratta da esami-vecchi-nonsicuri.typ (riga 1133) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Tronco superiore del montante FH (sezione F in y=1.8)
  line((1.2, 0.5), (1.2, 1.8), (2.2, 1.8), (2.2, 0.5), stroke: 0.9pt)
  arc((1.45, 0.5), start: 180deg, stop: 360deg, radius: 0.25, anchor: "origin", stroke: 0.8pt)
  arc((1.95, 0.5), start: 0deg, stop: 180deg, radius: 0.25, anchor: "origin", stroke: 0.8pt)

  // Punto più sollecitato (spigolo superiore sinistro della sezione F)
  circle((1.2, 1.8), radius: 0.07, fill: blue.darken(20%), stroke: none)
  line((1.28, 1.75), (2.5, 1.35), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Diagramma sigma_N (compressione uniforme, in rosso)
  line((1.2, 2.15), (2.2, 2.15), stroke: (paint: red, thickness: 0.8pt))
  line((1.2, 2.40), (2.2, 2.40), stroke: (paint: red, thickness: 0.8pt))
  line((1.2, 2.40), (1.2, 2.17), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((1.53, 2.40), (1.53, 2.17), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((1.86, 2.40), (1.86, 2.17), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((2.2, 2.40), (2.2, 2.17), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))

  // Diagramma sigma_F (farfalla lineare, in rosso)
  line((1.2, 3.15), (2.2, 3.15), stroke: (paint: red, thickness: 0.8pt))
  line((1.2, 2.75), (2.2, 3.55), stroke: (paint: red, thickness: 0.8pt))
  line((1.2, 3.15), (1.2, 2.77), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((1.45, 3.15), (1.45, 2.95), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((1.95, 3.15), (1.95, 3.35), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))
  line((2.2, 3.15), (2.2, 3.53), mark: (end: ">"), stroke: (paint: red, thickness: 0.7pt))

  // Etichette
  content((2.4, 3.05), text(size: 7pt, fill: red)[$sigma_F$], anchor: "west")
  content((1.7, 2.65), text(size: 7pt, fill: red)[$+$], anchor: "center")
  content((2.4, 2.28), text(size: 7pt, fill: red)[$sigma_N$], anchor: "west")
  content((2.35, 1.8), text(size: 7pt)[F], anchor: "west")
  content((2.55, 1.35), text(size: 7pt, fill: blue.darken(20%))[Punto + soll.], anchor: "west")
  content((2.55, 1.05), text(size: 7pt, fill: blue.darken(20%))[della sezione F], anchor: "west")
  content((2.55, 0.75), text(size: 7pt, fill: blue.darken(20%))[(compressione)], anchor: "west")
})
