// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1793) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  vsource("e", (0, 0), (0, 4), variant: "ieee", label: (content: $macron(E)$, anchor: "north", distance: 8pt))
  content((0.5, 2.8), sans("+", weight: "bold"))

  wire((0, 4), (3.2, 4))
  line((1.1, 4.25), (2.1, 4.25), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((1.6, 3.5), text(fill: red)[$macron(I)$])

  resistor("z", (3.2, 4), (3.2, 0), variant: "iec", label: (content: $macron(Z)$, anchor: "north", distance: 8pt))
  wire((3.2, 0), (0, 0))
})
