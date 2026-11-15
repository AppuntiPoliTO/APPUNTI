// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1588) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  wire((0, 0), (0, 2.8))
  resistor("rs", (0, 2.8), (2.6, 2.8), label: (content: $R_S$, anchor: "north", distance: 5pt))
  wire((0, 0), (2.6, 0))
  resistor("r2", (2.6, 0), (2.6, 2.8), label: (content: $R_2$, anchor: "west", distance: 5pt))
  wire((2.6, 2.8), (3.6, 2.8), n: "-o")
  wire((2.6, 0), (3.6, 0), n: "-o")
})
