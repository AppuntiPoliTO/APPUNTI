// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1438) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let isource = zap.isource.with(variant: "iec")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), isource: (variant: "iec"))
  isource("a3", (0, 0), (0, 1.8), n: "o-")
  line((0, 1.4), (0, 1.9), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
  content((0.6, 1.65), text(fill: rgb("#1b5e20"), $A_3$))
  resistor("r3", (0, 1.8), (0, 3.5), n: "-o")
})
