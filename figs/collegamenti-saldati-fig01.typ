// Figura estratta da collegamenti saldati.typ (riga 47) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((-0.8, 1.0), (0.0, 0.0), (0.8, 1.0), close: true, fill: black, stroke: none)
  arc((0.0, 0.0833), start: 48.89deg, stop: 131.11deg, radius: 1.2167, anchor: "origin", fill: black, stroke: 1pt)
  circle((0.0, 0.0), radius: 0.05, fill: black, stroke: none)
  line((-4.0, 0.0), (0.0, 0.0), (-0.8, 1.0), (-4.0, 1.0), close: true, stroke: 1pt)
  line((0.0, 0.0), (4.0, 0.0), (4.0, 1.0), (0.8, 1.0), close: true, stroke: 1pt)
  line((-1.0, 1.75), (-0.45, 1.28), mark: (end: ">"), stroke: 0.8pt)
  content((-1.3, 1.95), text(size: 8.5pt)[cordone di saldatura], anchor: "west")
  content((-2.2, 0.5), text(size: 8pt)[materiale base])
  content((2.2, 0.5), text(size: 8pt)[materiale base])
})
