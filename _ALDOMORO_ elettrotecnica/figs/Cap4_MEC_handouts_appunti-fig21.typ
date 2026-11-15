// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1288) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  resistor("zl", (0, 1.8), (5.0, 1.8), variant: "iec", label: (content: $macron(Z)_l = R_l + j X_l$, anchor: "south", distance: 6pt))
  wire((0, 0), (5.0, 0))

  line((0.8, -0.4), (0.8, 2.3), stroke: (dash: "dashed"))
  line((4.2, -0.4), (4.2, 2.3), stroke: (dash: "dashed"))

  line((4.3, 2.05), (4.9, 2.05), mark: (end: "stealth", fill: black))
  content((4.6, 2.45), $macron(I)$)

  // Frecce sinuose P_in e P_out
  content((0.1, 0.9), $P_"in"$)
  bezier((0.5, 0.9), (0.8, 0.9), (0.65, 1.1))
  bezier((0.8, 0.9), (1.2, 0.9), (0.95, 0.7), mark: (end: "stealth", fill: black))

  bezier((3.8, 0.9), (4.1, 0.9), (3.95, 1.1))
  bezier((4.1, 0.9), (4.5, 0.9), (4.25, 0.7), mark: (end: "stealth", fill: black))
  content((5.0, 0.9), $P_"out"$)
})
