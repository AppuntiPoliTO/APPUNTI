// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1638) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  rect((0, 0), (2.8, 3.2), stroke: 1.2pt)
  content((1.4, 1.6), sans("Rete\nlineare", weight: "bold"))

  wire((2.8, 2.6), (4.2, 2.6))
  wire((2.8, 0.6), (4.2, 0.6))
  node("A", (4.2, 2.6), fill: false, label: (content: sans("A", weight: "bold"), anchor: "south", distance: 6pt))
  node("B", (4.2, 0.6), fill: false, label: (content: sans("B", weight: "bold"), anchor: "north", distance: 6pt))

  wire((4.2, 2.6), (5.4, 2.6))
  resistor("u", (5.4, 2.6), (5.4, 0.6), variant: "iec")
  wire((5.4, 0.6), (4.2, 0.6))
})
