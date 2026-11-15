// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 350) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.65cm, {
  import draw: *

  // Liquido manometrico (riempimento chiaro)
  line(
    (5.5, 1.7), (5.5, 1.0),
    (5.6608, 0.4), (6.1, -0.0392), (6.7, -0.2), (7.3, -0.0392), (7.7392, 0.4),
    (7.9, 1.0), (7.9, 1.2), (7.1, 1.2), (7.1, 1.0),
    (7.0464, 0.8), (6.9, 0.6536), (6.7, 0.6), (6.5, 0.6536), (6.3536, 0.8),
    (6.3, 1.0), (6.3, 1.7),
    close: true, fill: c-fluido, stroke: none
  )

  // Superfici libere del liquido (A a sinistra, B a destra)
  line((5.5, 1.7), (6.3, 1.7), stroke: (paint: c-norm, thickness: 1pt))
  line((7.1, 1.2), (7.9, 1.2), stroke: (paint: c-norm, thickness: 1pt))

  // Serbatoio (con apertura per il raccordo tra y=2.0 e y=2.8)
  line((4.0, 2.8), (4.0, 5.5), (0, 5.5), (0, 0), (4.0, 0), (4.0, 2.0), stroke: 1pt)

  // Parete esterna: raccordo inferiore, ramo sinistro, curva esterna, ramo destro
  line((4.0, 2.0), (5.5, 2.0), (5.5, 1.0), stroke: 1pt)
  arc((6.7, 1.0), start: 180deg, stop: 360deg, radius: 1.2, anchor: "origin", stroke: 1pt)
  line((7.9, 1.0), (7.9, 5.5), stroke: 1pt)

  // Parete interna: raccordo superiore, ramo sinistro, curva interna, ramo destro
  line((4.0, 2.8), (6.3, 2.8), (6.3, 1.0), stroke: 1pt)
  arc((6.7, 1.0), start: 180deg, stop: 360deg, radius: 0.4, anchor: "origin", stroke: 1pt)
  line((7.1, 1.0), (7.1, 5.5), stroke: 1pt)

  // Linee di riferimento dai livelli A e B verso la quota
  line((5.5, 1.7), (9.4, 1.7), stroke: (paint: c-aux, thickness: 0.6pt))
  line((7.1, 1.2), (9.4, 1.2), stroke: (paint: c-aux, thickness: 0.6pt))

  // Quota del dislivello
  line((8.9, 1.7), (8.9, 1.2), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: (paint: c-geo, thickness: 0.6pt))

  // Etichette
  content((2.0, 2.75), text(c-geo)[$gamma$])
  content((5.4, 1.7), text(c-geo)[$A$], anchor: "east")
  content((8.0, 1.0), text(c-geo)[$B$], anchor: "north-west")
  content((9.0, 1.45), text(c-geo)[$gamma$], anchor: "west")
})
