// Figura estratta da esami.typ (riga 3216) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Contorno della sezione a doppio T
  line((-1.15, -1.45), (1.15, -1.45), (1.15, -1.17), (0.14, -1.17), (0.14, 1.17), (1.15, 1.17), (1.15, 1.45), (-1.15, 1.45), (-1.15, 1.17), (-0.14, 1.17), (-0.14, -1.17), (-1.15, -1.17), close: true, stroke: 1pt)

  // Linee medie tratteggiate nei 3 rettangoli
  line((-1.05, 1.31), (1.05, 1.31), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, -1.15), (0, 1.15), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-1.05, -1.31), (1.05, -1.31), stroke: (dash: "dashed", thickness: 0.6pt))

  // Frecce del flusso tangenziale nell'ala superiore
  line((0.8, 1.39), (0.2, 1.39), stroke: 0.6pt, mark: (end: ">"))
  line((-0.2, 1.39), (-0.8, 1.39), stroke: 0.6pt, mark: (end: ">"))
  line((-0.8, 1.23), (-0.2, 1.23), stroke: 0.6pt, mark: (end: ">"))
  line((0.2, 1.23), (0.8, 1.23), stroke: 0.6pt, mark: (end: ">"))

  // Frecce del flusso tangenziale nell'anima verticale
  line((-0.07, 0.8), (-0.07, 0.2), stroke: 0.6pt, mark: (end: ">"))
  line((-0.07, -0.2), (-0.07, -0.8), stroke: 0.6pt, mark: (end: ">"))
  line((0.07, -0.8), (0.07, -0.2), stroke: 0.6pt, mark: (end: ">"))
  line((0.07, 0.2), (0.07, 0.8), stroke: 0.6pt, mark: (end: ">"))

  // Frecce del flusso tangenziale nell'ala inferiore
  line((0.8, -1.23), (0.2, -1.23), stroke: 0.6pt, mark: (end: ">"))
  line((-0.2, -1.23), (-0.8, -1.23), stroke: 0.6pt, mark: (end: ">"))
  line((-0.8, -1.39), (-0.2, -1.39), stroke: 0.6pt, mark: (end: ">"))
  line((0.2, -1.39), (0.8, -1.39), stroke: 0.6pt, mark: (end: ">"))

  // Indicazione di M_x al centro
  arc((0, 0), start: 140deg, stop: 240deg, radius: 0.45, anchor: "origin", stroke: 0.8pt, mark: (end: ">"))

  // Etichette (con text(size: 7pt))
  content((-0.52, 0), text(size: 7pt)[$M_x$], anchor: "east")
  content((0, -1.85), text(size: 7pt)[$tau_x$], anchor: "north")
})
