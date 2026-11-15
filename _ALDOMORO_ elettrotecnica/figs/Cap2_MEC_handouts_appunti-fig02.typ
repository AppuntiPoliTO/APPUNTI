// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 139) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  import zap.cetz.draw: *
  
  
  set-style(resistor: (variant: "ieee"))

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((5.4, 0), (5.7, 0.4))
  line((5.4, 0), (5.7, -0.4))

  resistor("r1", (0, 0), (1.8, 0), label: (content: $R_1$, anchor: "north", distance: 4pt), n: "o-")
  resistor("r2", (1.8, 0), (3.6, 0), label: (content: $R_2$, anchor: "north", distance: 4pt))
  resistor("r3", (3.6, 0), (5.4, 0), label: (content: $R_3$, anchor: "north", distance: 4pt), n: "-o")

  line((0.15, 0), (0.55, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.25, 0.45), $I$)

  bezier((5.1, -0.45), (0.3, -0.45), (2.7, -1.1), mark: (end: "stealth", fill: black))
  content((2.7, -1.1), $V$)
})
