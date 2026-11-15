// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 305) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))
  resistor("r1", (0, 0), (3.5, 0), n: "o-o", label: (content: $R$, anchor: "south", distance: 6pt), i: (content: $i(t)$, anchor: "south", invert: true, distance: 15pt))
  bezier((3.3, -0.3), (0.2, -0.3), (1.75, -1.2), mark: (end: "stealth", fill: red), stroke: red + 1pt)
  content((1.75, -1.1), text(fill: red)[$v(t) = R i(t)$])
})
