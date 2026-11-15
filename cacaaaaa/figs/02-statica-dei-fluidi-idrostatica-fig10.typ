// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 714) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.75cm, {
  import draw: *
  // Assi
  line((-2.5, 0), (2.5, 0), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((2.5, 0), $x$, anchor: "west", padding: 0.1)
  line((0, -2.5), (0, 2.5), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((0, 2.5), $y$, anchor: "south", padding: 0.1)
  // Cerchio
  circle((0,0), radius: 2, stroke: (paint: c-geo, thickness: 1pt))
  // Quote
  line((0,0), (1.414, 1.414), mark: (end: "stealth", fill: c-geo))
  content((0.707, 0.707), $r$, anchor: "south-east", padding: 0.1)
  // Baricentro
  circle((0,0), radius: 0.05, fill: c-geo)
  content((0,0), $G$, anchor: "north-west", padding: 0.1)
})
