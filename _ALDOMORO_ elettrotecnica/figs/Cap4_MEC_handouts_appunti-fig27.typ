// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1509) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  resistor("zl", (0, 2.4), (3.0, 2.4), variant: "iec", n: "o-", label: (content: $macron(Z)_"linea"$, anchor: "south", distance: 6pt))
  wire((3.0, 2.4), (5.2, 2.4))
  wire((0, 0), (5.2, 0), n: "o-")

  line((3.8, 2.4), (4.3, 2.4), mark: (end: "stealth", fill: black))
  content((4.05, 2.0), $I$)

  line((4.7, 0.2), (4.7, 2.2), mark: (end: "stealth", fill: black))
  content((5.0, 1.2), $V$)

  rect((5.2, -0.3), (6.6, 2.7))
  content((5.9, 1.55), $P$)
  content((5.9, 0.85), $Q$)
})
