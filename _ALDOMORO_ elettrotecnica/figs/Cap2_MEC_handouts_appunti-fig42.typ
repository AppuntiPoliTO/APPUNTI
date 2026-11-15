// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2176) con LocalTypst
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

  isource("i1", (0, 0), (0, 3), i: (content: $A$, anchor: "east", distance: 15pt))
  resistor("r1", (2.2, 3), (2.2, 0), label: (content: $R$, anchor: "west", distance: 6pt), i: (content: $i_R$, anchor: "east", distance: 15pt), n: "*-*")
  capacitor("c1", (4.4, 3), (4.4, 0), label: (content: $C$, anchor: "north", distance: 6pt), i: (content: $i_C$, anchor: "east", distance: 15pt))

  wire((0, 3), (4.4, 3))
  wire((0, 0), (4.4, 0))

  // Freccia di tensione v
  line((1.2, 0.4), (1.2, 2.6), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 1pt))
  content((0.9, 1.5), text(fill: blue)[$v$])
})
