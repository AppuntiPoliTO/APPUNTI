// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1577) con LocalTypst
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
  set-style(resistor: (variant: "ieee"))

  wire((0, 3), (4, 3))
  wire((0, 0), (4, 0))
  node("A", (0, 3), fill: false, label: (content: sans("A", weight: "bold"), anchor: "south-east", distance: 5pt))
  node("B", (0, 0), fill: false, label: (content: sans("B", weight: "bold"), anchor: "north-east", distance: 5pt))

  resistor("r", (1.8, 3), (1.8, 0), label: (content: $med thin R$, anchor: "east", distance: 8pt))
  capacitor("c", (4, 3), (4, 0), label: (content: $med C$, anchor: "north", distance: 8pt))

  rect((1.35, 0.7), (2.25, 2.3), stroke: (paint: red, thickness: 0.8pt, dash: "dashed"))
  content((2.65, 1.5), text(fill: red)[$macron(Z)_R$])

  rect((3.5, 0.9), (4.6, 2.1), stroke: (paint: red, thickness: 0.8pt, dash: "dashed"))
  content((4.65, 0.5), text(fill: red)[$macron(Z)_C$])
})
