// Figura estratta da 07_RELAZIONI di EQUIVALENZA CdS-COMPONENTI di TENSIONE_appunti.typ (riga 46) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Parte inferiore A
  arc((0, 0), start: 0deg, stop: 180deg, radius: (1.4, 0.45), anchor: "origin", stroke: 0.8pt)
  arc((0, 0), start: 180deg, stop: 360deg, radius: (1.4, 0.45), anchor: "origin", stroke: 0.8pt)
  bezier((-1.4, 0.0), (1.4, 0.0), (-1.4, -2.5), (1.4, -2.5), stroke: 0.9pt)
  content((0.0, -1.3), text(size: 7pt)[*A*])

  // Frecce esterne su A (punta vuota)
  line((-2.2, -1.4), (-1.15, -0.95), mark: (end: ">", fill: white), stroke: 0.7pt)
  line((-0.5, -2.6), (-0.25, -1.8), mark: (end: ">", fill: white), stroke: 0.7pt)
  line((0.9, -2.3), (0.55, -1.65), mark: (end: ">", fill: white), stroke: 0.7pt)

  // Frecce interne su S di A
  line((-0.8, 0.1), (-0.9, 1.0), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((-0.4, -0.15), (-0.4, 0.75), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((0.0, 0.0), (0.15, 0.9), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((0.4, -0.2), (0.55, 0.65), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((0.9, -0.1), (1.2, 0.6), mark: (end: ">", fill: black), stroke: 0.7pt)

  // Indicatore sezione S inferiore
  line((-1.8, 0.45), (-0.95, 0.15), stroke: 0.6pt)
  circle((-0.95, 0.15), radius: 0.04, fill: black)
  content((-2.0, 0.5), text(size: 7pt)[*S*], anchor: "east")

  // Parte superiore B
  arc((1.0, 2.3), start: 0deg, stop: 180deg, radius: (1.4, 0.45), anchor: "origin", stroke: 0.8pt)
  arc((1.0, 2.3), start: 180deg, stop: 360deg, radius: (1.4, 0.45), anchor: "origin", stroke: 0.8pt)
  bezier((-0.4, 2.3), (2.4, 2.3), (-0.1, 4.8), (2.5, 4.8), stroke: 0.9pt)
  content((1.25, 3.5), text(size: 7pt)[*B*])

  // Frecce esterne su B (punta vuota)
  line((0.2, 4.7), (0.5, 3.9), mark: (end: ">", fill: white), stroke: 0.7pt)
  line((2.5, 4.5), (1.95, 3.85), mark: (end: ">", fill: white), stroke: 0.7pt)

  // Frecce interne su S di B
  line((0.0, 2.4), (-0.35, 1.6), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((0.5, 2.35), (0.3, 1.45), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((0.95, 2.2), (0.75, 1.35), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((1.4, 2.25), (1.35, 1.35), mark: (end: ">", fill: black), stroke: 0.7pt)
  line((1.8, 2.05), (1.9, 1.15), mark: (end: ">", fill: black), stroke: 0.7pt)

  // Indicatore sezione S superiore
  line((-0.8, 2.75), (-0.05, 2.45), stroke: 0.6pt)
  circle((-0.05, 2.45), radius: 0.04, fill: black)
  content((-1.0, 2.8), text(size: 7pt)[*S*], anchor: "east")
})
