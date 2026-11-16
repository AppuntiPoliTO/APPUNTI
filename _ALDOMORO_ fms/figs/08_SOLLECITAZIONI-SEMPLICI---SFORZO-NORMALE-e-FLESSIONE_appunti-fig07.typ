// Figura estratta da 08_SOLLECITAZIONI SEMPLICI - SFORZO NORMALE e FLESSIONE_appunti.typ (riga 359) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1.5cm, {
  import draw: *
  // Centro di curvatura O in (0, 4.4)
  content((0.0, 4.65), text(size: 7pt)[$O$], anchor: "south")

  // Raggi tratteggiati dal centro O ai bordi del concio (angoli 248deg e 292deg)
  line((0, 4.4), (-1.8, 0.04), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 4.4), (1.8, 0.04), stroke: (dash: "dashed", thickness: 0.6pt))

  // Concio inflesso: bordo superiore (r = 3.2), bordo inferiore (r = 4.4)
  arc((0, 4.4), start: 248deg, stop: 292deg, radius: 3.2, anchor: "origin", stroke: 1.2pt)
  arc((0, 4.4), start: 248deg, stop: 292deg, radius: 4.4, anchor: "origin", stroke: 1.2pt)
  line((-1.2, 1.43), (-1.65, 0.32), stroke: 1.2pt)
  line((1.2, 1.43), (1.65, 0.32), stroke: 1.2pt)

  // Asse neutro CD (r = 3.7) e fibra generica AB (r = 4.05)
  arc((0, 4.4), start: 248deg, stop: 292deg, radius: 3.7, anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))
  arc((0, 4.4), start: 248deg, stop: 292deg, radius: 4.05, anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))

  // Etichette estremi C, A, D, B e lunghezze l, l + Delta l
  content((-1.45, 1.05), text(size: 7pt)[$C$], anchor: "east")
  content((-1.6, 0.65), text(size: 7pt)[$A$], anchor: "east")
  content((1.4, 1.15), text(size: 7pt)[$D$], anchor: "west")
  content((1.6, 0.55), text(size: 7pt)[$B$], anchor: "west")
  content((-0.15, 0.85), text(size: 7pt)[$l$], anchor: "south")
  content((0.0, 0.3), text(size: 7pt)[$l + Delta l$], anchor: "north")

  // Sistema di riferimento locale (x, y) sull'asse neutro
  line((0.1, 0.36), (0.95, 0.58), mark: (end: ">"), stroke: (paint: rgb(40, 110, 180), thickness: 0.8pt))
  content((0.85, 0.72), text(size: 7pt, fill: rgb(40, 110, 180))[$x$], anchor: "south")
  line((0.1, 0.36), (-0.18, 1.4), mark: (end: ">"), stroke: (paint: rgb(40, 110, 180), thickness: 0.8pt))
  content((-0.3, 1.35), text(size: 7pt, fill: rgb(40, 110, 180))[$y$], anchor: "east")

  // Quota raggio di curvatura R e ordinata y a destra
  line((0.35, 4.54), (1.73, 1.1), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((1.25, 2.85), text(size: 7pt)[$R$], anchor: "west")
  line((1.39, 0.97), (1.9, 1.18), stroke: 0.5pt)
  line((1.52, 0.64), (2.03, 0.85), stroke: 0.5pt)
  line((1.73, 1.1), (1.98, 0.48), stroke: 0.5pt)
  content((2.05, 0.95), text(size: 7pt)[$y$], anchor: "west")
})
