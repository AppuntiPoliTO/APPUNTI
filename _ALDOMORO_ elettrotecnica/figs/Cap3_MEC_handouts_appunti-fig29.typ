// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1441) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  wire((0, 0), (1, 0))
  resistor("r", (1, 0), (3.5, 0), label: (content: $R$, anchor: "north", distance: 8pt))
  capacitor("c", (3.5, 0), (6, 0), label: (content: $C$, anchor: "north", distance: 8pt))
  wire((6, 0), (6.8, 0))

  rect((1.4, -0.45), (3.1, 0.45), stroke: (paint: red, thickness: 0.8pt, dash: "dashed"))
  content((2.25, -0.75), text(fill: red)[$macron(Z)_R$])

  rect((4.1, -0.55), (5.4, 0.55), stroke: (paint: red, thickness: 0.8pt, dash: "dashed"))
  content((4.75, -0.8), text(fill: red)[$macron(Z)_C$])

  node("in", (0, 0), fill: false)
  node("out", (6.8, 0), fill: false)

  line((-0.9, 0), (-0.2, 0), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((-0.55, 0.45), text(fill: red)[$macron(I)$])

  bezier((6.5, -0.4), (0.3, -0.4), (3.4, -1.75), stroke: blue + 1pt, mark: (end: "stealth", fill: blue))
  content((3.4, -1.6), text(fill: blue)[$macron(V)$])
})
