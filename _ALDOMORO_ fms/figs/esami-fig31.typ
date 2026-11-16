// Figura estratta da esami.typ (riga 2282) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.8cm, {
  import draw: *

  // Profilo a C sinistro con suddivisione 1, 2, 3
  line((-1.8, -1.25), (-0.65, -1.25), (-0.65, -1.03), (-1.58, -1.03), (-1.58, 1.03), (-0.65, 1.03), (-0.65, 1.25), (-1.8, 1.25), close: true, stroke: 1pt)
  line((-1.8, 1.03), (-1.58, 1.03), stroke: 0.6pt)
  line((-1.8, -1.03), (-1.58, -1.03), stroke: 0.6pt)

  // Tratteggio profilo sinistro
  line((-1.6, 1.05), (-1.4, 1.23), stroke: 0.6pt)
  line((-1.25, 1.05), (-1.05, 1.23), stroke: 0.6pt)
  line((-0.9, 1.05), (-0.7, 1.23), stroke: 0.6pt)
  line((-1.78, 0.5), (-1.6, 0.7), stroke: 0.6pt)
  line((-1.78, 0.0), (-1.6, 0.2), stroke: 0.6pt)
  line((-1.78, -0.5), (-1.6, -0.3), stroke: 0.6pt)
  line((-1.6, -1.23), (-1.4, -1.05), stroke: 0.6pt)
  line((-1.25, -1.23), (-1.05, -1.05), stroke: 0.6pt)
  line((-0.9, -1.23), (-0.7, -1.05), stroke: 0.6pt)

  // Profilo a C destro con suddivisione 1, 2, 3
  line((1.8, -1.25), (0.65, -1.25), (0.65, -1.03), (1.58, -1.03), (1.58, 1.03), (0.65, 1.03), (0.65, 1.25), (1.8, 1.25), close: true, stroke: 1pt)
  line((1.58, 1.03), (1.8, 1.03), stroke: 0.6pt)
  line((1.58, -1.03), (1.8, -1.03), stroke: 0.6pt)

  // Tratteggio profilo destro
  line((0.7, 1.05), (0.9, 1.23), stroke: 0.6pt)
  line((1.05, 1.05), (1.25, 1.23), stroke: 0.6pt)
  line((1.4, 1.05), (1.6, 1.23), stroke: 0.6pt)
  line((1.6, 0.5), (1.78, 0.7), stroke: 0.6pt)
  line((1.6, 0.0), (1.78, 0.2), stroke: 0.6pt)
  line((1.6, -0.5), (1.78, -0.3), stroke: 0.6pt)
  line((0.7, -1.23), (0.9, -1.05), stroke: 0.6pt)
  line((1.05, -1.23), (1.25, -1.05), stroke: 0.6pt)
  line((1.4, -1.23), (1.6, -1.05), stroke: 0.6pt)

  // Baricentro G
  line((-0.07, 0), (0.07, 0), stroke: 0.6pt)
  line((0, -0.07), (0, 0.07), stroke: 0.6pt)

  // Quote H, B, s
  line((-2.1, -1.25), (-2.1, 1.25), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((-1.8, -1.55), (-0.65, -1.55), stroke: 0.6pt, mark: (start: ">", end: ">"))
  line((-0.48, -1.25), (-0.48, -1.03), stroke: 0.6pt, mark: (start: ">", end: ">"))

  // Etichette (con text(size: 7pt))
  content((-2.22, 0), text(size: 7pt)[$H$], anchor: "east")
  content((-1.22, -1.65), text(size: 7pt)[$B$], anchor: "north")
  content((-0.38, -1.14), text(size: 7pt)[$s$], anchor: "west")
  content((0.1, -0.15), text(size: 7pt)[$G$], anchor: "west")
  content((-0.35, 1.2), text(size: 7pt)[$1$], anchor: "west")
  content((-1.25, 0.2), text(size: 7pt)[$2$], anchor: "west")
  content((-0.95, -0.82), text(size: 7pt)[$3$], anchor: "south")
  content((1.95, 1.2), text(size: 7pt)[$1$], anchor: "west")
  content((1.95, 0.2), text(size: 7pt)[$2$], anchor: "west")
  content((1.85, -1.35), text(size: 7pt)[$3$], anchor: "north")
})
