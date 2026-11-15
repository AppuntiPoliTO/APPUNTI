// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1413) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  resistor("r", (0, 0), (2.8, 0), n: "*-*", label: (content: $R$, anchor: "north", distance: 8pt))
  inductor("l", (2.8, 0), (5.6, 0), n: "*-*", label: (content: $L$, anchor: "north", distance: 8pt))
})
