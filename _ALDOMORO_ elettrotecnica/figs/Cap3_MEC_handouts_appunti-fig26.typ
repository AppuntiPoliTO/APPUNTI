// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1326) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  resistor("z1", (0, 0), (3, 0), variant: "iec", n: "*-*", label: (content: $macron(Z)_1$, anchor: "north", distance: 6pt))
  resistor("z2", (3, 0), (6, 0), variant: "iec", n: "-*", label: (content: $macron(Z)_2$, anchor: "north", distance: 6pt))

  content((0, 0.45), sans("A", weight: "bold"))
  content((6, 0.45), sans("B", weight: "bold"))

  // Freccia corrente I
  line((-1.0, 0), (-0.25, 0), stroke: red + 1pt, mark: (end: "stealth", fill: red))
  content((-0.6, -0.45), text(fill: red)[$macron(I)$])

  // Tensioni V1 e V2
  line((2.5, -0.6), (0.5, -0.6), stroke: green.darken(30%) + 1pt, mark: (end: "stealth", fill: green.darken(30%)))
  content((1.5, -1.05), text(fill: green.darken(30%))[$macron(V)_1$])

  line((5.5, -0.6), (3.5, -0.6), stroke: green.darken(30%) + 1pt, mark: (end: "stealth", fill: green.darken(30%)))
  content((4.5, -1.05), text(fill: green.darken(30%))[$macron(V)_2$])

  // Tensione totale V
  bezier((5.6, 0.7), (0.4, 0.7), (3.0, 1.5), stroke: green.darken(30%) + 1pt, mark: (end: "stealth", fill: green.darken(30%)))
  content((3.0, 1.6), text(fill: green.darken(30%))[$macron(V)$])
})
