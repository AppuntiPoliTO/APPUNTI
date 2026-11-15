// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 674) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.75cm, {
  import draw: *
  // Assi
  line((-2.5, 0), (2.5, 0), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((2.5, 0), $x$, anchor: "west", padding: 0.1)
  line((0, -2.5), (0, 2.5), mark: (end: "stealth", fill: c-aux), stroke: 0.6pt + c-aux)
  content((0, 2.5), $y$, anchor: "south", padding: 0.1)
  // Rettangolo
  rect((-1.5, -2), (1.5, 2), stroke: (paint: c-geo, thickness: 1pt))
  // Quote
  line((-1.5, -2.3), (0, -2.3), mark: (start: "stealth", end: "stealth", fill: c-geo))
  content((-0.75, -2.3), $a/2$, anchor: "north", padding: 0.1)
  line((0, -2.3), (1.5, -2.3), mark: (start: "stealth", end: "stealth", fill: c-geo))
  content((0.75, -2.3), $a/2$, anchor: "north", padding: 0.1)
  line((-1.8, -2), (-1.8, 0), mark: (start: "stealth", end: "stealth", fill: c-geo))
  content((-1.8, -0.9), $b/2$, anchor: "east", padding: 0.1)
  line((-1.8, 0), (-1.8, 2), mark: (start: "stealth", end: "stealth", fill: c-geo))
  content((-1.8, 0.9), $b/2$, anchor: "east", padding: 0.1)
  // Baricentro
  circle((0,0), radius: 0.05, fill: c-geo)
  content((0,0), $G$, anchor: "south-west", padding: 0.1)
})
