// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1598) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  wire((0, 3), (4, 3))
  wire((0, 0), (4, 0))
  resistor("r", (1.8, 3), (1.8, 0), n: "*-*", label: (content: $R$, anchor: "north", distance: 8pt))
  capacitor("c", (4, 3), (4, 0), n: "*-*", label: (content: $C$, anchor: "north", distance: 8pt))
})
