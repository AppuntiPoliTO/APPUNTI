// Figura estratta da cuscinetti.typ (riga 710) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  // Circonferenza principale
  circle((0, 0), radius: 2.52, stroke: 1pt)

  // Assi di simmetria (tratto-punto)
  line((-3.50, 0), (3.90, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -3.15), (0, 3.10), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Semirette che delimitano l'angolo 2gamma
  line((0, 0), (-2.38, -4.12), stroke: 1pt)
  line((0, 0), (2.38, -4.12), stroke: 1pt)

  // Arco di quota con frecce agli estremi
  arc((0, 0), start: 240deg, stop: 300deg, radius: 4.10, anchor: "origin", mark: (start: ">", end: ">"), stroke: 1pt)

  // Etichetta dell'angolo
  content((0, -3.65), text(size: 12pt)[$2 gamma$], anchor: "center")
})
