// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2752) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "iec"))

  // Bipolo generico con convenzione degli utilizzatori
  resistor("b", (0, 2.6), (0, 0), n: "o-o")
  line((0, 2.4), (0, 1.9), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((-0.5, 2.2), text(fill: red)[$I$])
  line((0.55, 0.3), (0.55, 2.2), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((0.95, 1.25), text(fill: red)[$V$])
})
