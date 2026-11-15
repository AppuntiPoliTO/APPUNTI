// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1252) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  resistor("z", (0, 0), (3, 0), variant: "iec", n: "o-o", label: (content: $macron(Z)$, anchor: "north", distance: 6pt))

  // Freccia corrente I
  line((-1.0, 0), (-0.25, 0), mark: (end: "stealth", fill: black))
  content((-0.6, 0.45), $macron(I)$)

  // Freccia tensione V
  bezier((2.7, 0.5), (0.3, 0.5), (1.5, 1.1), mark: (end: "stealth", fill: black))
  content((1.5, 1.25), $macron(V)$)
})
