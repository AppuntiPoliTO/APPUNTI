// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 815) con LocalTypst
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

  resistor("z1", (0, 3.2), (3.4, 3.2), variant: "iec")
  resistor("z2", (0, 1.8), (3.4, 1.8), variant: "iec")
  resistor("z3", (0, 0.4), (3.4, 0.4), variant: "iec")

  wire((3.4, 0.4), (3.4, 3.2))
  node("O_load", (3.4, 1.8))

  node("c1", (0, 3.2), fill: false)
  node("c2", (0, 1.8), fill: false)
  node("c3", (0, 0.4), fill: false)

  content((0, 3.4), anchor: "south", sans("1", weight: "bold"))
  content((0, 2.0), anchor: "south", sans("2", weight: "bold"))
  content((0, 0.6), anchor: "south", sans("3", weight: "bold"))

  content((rel: (0, 0.45), to: "z1.center"), anchor: "south", $overline(Z)_1$)
  content((rel: (0, 0.45), to: "z2.center"), anchor: "south", $overline(Z)_2$)
  content((rel: (0, 0.45), to: "z3.center"), anchor: "south", $overline(Z)_3$)
})
