// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 841) con LocalTypst
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

  wire((0, 3.6), (3.4, 3.6))
  wire((0, 1.8), (1.6, 1.8))
  wire((0, 0.0), (3.4, 0.0))

  resistor("z1", (1.6, 3.6), (1.6, 1.8), variant: "iec")
  resistor("z2", (1.6, 1.8), (1.6, 0.0), variant: "iec")
  resistor("z3", (3.4, 3.6), (3.4, 0.0), variant: "iec")

  node("d1", (1.6, 3.6))
  node("d2", (1.6, 1.8))
  node("d3", (1.6, 0.0))

  node("m1", (0, 3.6), fill: false)
  node("m2", (0, 1.8), fill: false)
  node("m3", (0, 0.0), fill: false)

  content((0, 3.8), anchor: "south", sans("1", weight: "bold"))
  content((0, 2.0), anchor: "south", sans("2", weight: "bold"))
  content((0, 0.2), anchor: "south", sans("3", weight: "bold"))

  content((rel: (0.45, 0), to: "z1.center"), anchor: "west", $overline(Z)_1$)
  content((rel: (0.45, 0), to: "z2.center"), anchor: "west", $overline(Z)_2$)
  content((rel: (0.45, 0), to: "z3.center"), anchor: "west", $overline(Z)_3$)
})
