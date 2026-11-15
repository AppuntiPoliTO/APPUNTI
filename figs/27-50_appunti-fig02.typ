// Figura estratta da 27-50_appunti.typ (riga 86) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.3cm, {
  import draw: *
  // Trave nella configurazione iniziale di lunghezza l
  rect((0, 0.25), (4.8, -0.25), stroke: 1pt)
  // Tratto allungato Delta l (tratteggiato)
  line((4.8, 0.25), (5.8, 0.25), stroke: (dash: "dashed", thickness: 1pt))
  line((4.8, -0.25), (5.8, -0.25), stroke: (dash: "dashed", thickness: 1pt))
  line((5.8, 0.25), (5.8, -0.25), stroke: (dash: "dashed", thickness: 1pt))

  // Asse di simmetria punto-tratto
  line((-0.2, 0), (6.0, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Forze esterne di trazione P
  line((-0.1, 0), (-1.4, 0), mark: (end: ">"), stroke: 1.1pt)
  content((-1.2, 0.3), text(size: 7pt)[$P$], anchor: "south")
  line((6.0, 0), (7.3, 0), mark: (end: ">"), stroke: 1.1pt)
  content((6.1, 0.3), text(size: 7pt)[$P$], anchor: "south")

  // Linee di estensione verticali per le quote
  line((0, -0.25), (0, -2.3), stroke: 0.5pt)
  line((4.8, -0.25), (4.8, -1.4), stroke: 0.5pt)
  line((5.8, -0.25), (5.8, -2.3), stroke: 0.5pt)

  // Quota l
  line((0, -1.1), (4.8, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.4, -0.95), text(size: 7pt)[$l$], anchor: "south")

  // Quota Delta l
  line((4.8, -1.1), (5.8, -1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((5.3, -0.95), text(size: 7pt)[$Delta l$], anchor: "south")

  // Quota totale l + Delta l
  line((0, -2.0), (5.8, -2.0), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.9, -1.85), text(size: 7pt)[$l + Delta l$], anchor: "south")
})
