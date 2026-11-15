// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2033) con LocalTypst
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
  import zap: *
  import zap.cetz.draw: *

  // Impedenza Z1 (rettangolo IEC)
  resistor("z1", (0, 3), (3.5, 3), variant: "iec", label: (content: $macron(Z)_1$, anchor: "south", distance: 6pt))
  // Impedenza Z2 (rettangolo IEC)
  resistor("z2", (3.5, 3), (3.5, 0), variant: "iec", label: (content: $macron(Z)_2$, anchor: "north", distance: 6pt))

  // Fili di collegamento
  wire((3.5, 3), (5.5, 3))
  wire((0, 0), (5.5, 0))

  // Nodo di giunzione centrale
  node("n1", (3.5, 3))

  // Morsetti di ingresso e uscita (aperti)
  node("in_p", (0, 3), fill: false)
  node("in_m", (0, 0), fill: false)
  node("out_p", (5.5, 3), fill: false)
  node("out_m", (5.5, 0), fill: false)

  // Indicazioni di tensione Vin
  content((0, 2.5), sans("+", weight: "bold"))
  content((0, 1.5), $macron(V)_"in"$)
  content((0, 0.5), sans("-", weight: "bold"))

  // Indicazioni di tensione Vout
  content((5.5, 2.5), sans("+", weight: "bold"))
  content((5.5, 1.5), $macron(V)_"out"$)
  content((5.5, 0.5), sans("-", weight: "bold"))
})
