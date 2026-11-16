// Figura estratta da esami.typ (riga 2510) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Concio elementare [- +]
  rect((-0.7, 0.7), (0.7, 1.3), fill: luma(220), stroke: 0.6pt)

  // Vettori N, T, M a sinistra e a destra (in blu)
  line((-0.7, 0.8), (-1.4, 0.8), stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (end: ">"))
  line((0.7, 0.8), (1.4, 0.8), stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (end: ">"))
  line((-0.7, 0.7), (-0.7, 1.55), stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (end: ">"))
  line((0.7, 1.3), (0.7, 0.45), stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (end: ">"))
  arc((-0.5, 1.0), start: 120deg, stop: 240deg, radius: 0.55, anchor: "origin", stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (start: ">"))
  arc((0.5, 1.0), start: -60deg, stop: 60deg, radius: 0.55, anchor: "origin", stroke: (paint: blue.darken(20%), thickness: 0.8pt), mark: (end: ">"))

  // Diagramma sforzo normale nullo in basso
  line((-2.0, -0.5), (2.0, -0.5), stroke: 1.2pt)
  line((-1.15, -0.62), (-0.85, -0.38), stroke: (paint: blue.darken(20%), thickness: 1.2pt))
  line((-1.15, -0.38), (-0.85, -0.62), stroke: (paint: blue.darken(20%), thickness: 1.2pt))
  line((0.85, -0.62), (1.15, -0.38), stroke: (paint: blue.darken(20%), thickness: 1.2pt))
  line((0.85, -0.38), (1.15, -0.62), stroke: (paint: blue.darken(20%), thickness: 1.2pt))

  // Etichette (con text(size: 7pt))
  content((-0.52, 0.85), text(size: 7pt)[$-$], anchor: "west")
  content((0.52, 0.85), text(size: 7pt)[$+$], anchor: "east")
  content((-1.45, 0.88), text(size: 7pt, fill: blue.darken(20%))[$N$], anchor: "south")
  content((1.45, 0.72), text(size: 7pt, fill: blue.darken(20%))[$N$], anchor: "north")
  content((-0.58, 1.55), text(size: 7pt, fill: blue.darken(20%))[$T$], anchor: "west")
  content((0.82, 0.5), text(size: 7pt, fill: blue.darken(20%))[$T$], anchor: "west")
  content((-1.15, 1.48), text(size: 7pt, fill: blue.darken(20%))[$M$], anchor: "east")
  content((1.15, 1.48), text(size: 7pt, fill: blue.darken(20%))[$M$], anchor: "west")
  content((-2.0, -0.65), text(size: 7pt)[$A$], anchor: "north")
  content((0, -0.65), text(size: 7pt)[$B$], anchor: "north")
  content((2.0, -0.65), text(size: 7pt)[$C$], anchor: "north")
})
