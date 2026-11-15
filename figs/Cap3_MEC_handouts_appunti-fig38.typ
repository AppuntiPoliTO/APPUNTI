// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1768) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  vsource("e", (0, 0), (0, 4), variant: "ieee", label: (content: $macron(E)$, anchor: "north", distance: 8pt))
  content((-0.35, 2.7), sans("+", weight: "bold"))

  wire((0, 4), (3.5, 4))
  line((0.8, 4.3), (1.8, 4.3), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((1.3, 4.8), text(fill: red)[$macron(I)$])

  resistor("r", (3.5, 4), (3.5, 2), n: "*-*", label: (content: $ med thin med macron(Z)_1 = R$, anchor: "east", distance: 8pt))
  inductor("l", (3.5, 2), (3.5, 0), n: "-*", label: (content: $med thin med macron(Z)_2 = j omega L$, anchor: "east", distance: 8pt))
  wire((3.5, 0), (0, 0))

  let green-v = rgb("#2e6b4e")
  bezier((3.9, 2.2), (3.9, 3.8), (4.1, 3.0), stroke: green-v + 1pt, mark: (end: "stealth", fill: green-v))
  content((4.6, 3.0), text(fill: green-v)[$macron(V)_R$])

  bezier((3.9, 0.2), (3.9, 1.8), (4.1, 1.0), stroke: green-v + 1pt, mark: (end: "stealth", fill: green-v))
  content((4.6, 1.0), text(fill: green-v)[$macron(V)_L$])
})
