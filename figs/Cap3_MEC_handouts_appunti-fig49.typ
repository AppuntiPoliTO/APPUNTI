// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2299) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({

  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  // Condensatore C in serie
  capacitor("c1", (0, 3), (3.5, 3), label: (content: $C$, anchor: "south", distance: 6pt))
  // Resistore R in parallelo
  resistor("r1", (3.5, 3), (3.5, 0), label: (content: $R$, anchor: "north", distance: 6pt))

  // Fili di collegamento
  wire((3.5, 3), (5.5, 3))
  wire((0, 0), (5.5, 0))

  // Nodo di giunzione
  node("n1", (3.5, 3))

  // Morsetti aperti
  node("in_p", (0, 3), fill: false)
  node("in_m", (0, 0), fill: false)
  node("out_p", (5.5, 3), fill: false)
  node("out_m", (5.5, 0), fill: false)

  // Tensioni Vin e Vout
  content((0, 2.5), sans("+", weight: "bold"))
  content((0, 1.5), $macron(V)_"in"$)
  content((0, 0.5), sans("-", weight: "bold"))

  content((5.5, 2.5), sans("+", weight: "bold"))
  content((5.5, 1.5), $macron(V)_"out"$)
  content((5.5, 0.5), sans("-", weight: "bold"))
})
