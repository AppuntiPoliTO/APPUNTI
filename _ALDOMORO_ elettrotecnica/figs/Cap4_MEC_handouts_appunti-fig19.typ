// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1214) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  // Modello compatto IEC
  resistor("zl", (0, 2.2), (3.6, 2.2), variant: "iec", n: "o-o", label: (content: $macron(Z)_l = R_l + j X_l$, anchor: "north", distance: 6pt))
  line((2.8, 2.2), (3.3, 2.2), mark: (end: "stealth", fill: blue, stroke: blue))
  content((3.05, 1.75), text(fill: blue)[$macron(I)$])
  wire((0, 1.2), (3.6, 1.2), n: "o-o")

  // Modello serie R_l - X_l IEEE
  resistor("rl", (0, 0), (1.8, 0), variant: "ieee", n: "o-", label: (content: $R_l$, anchor: "south", distance: 6pt))
  inductor("xl", (1.8, 0), (3.6, 0), variant: "ieee", n: "-o", label: (content: $X_l$, anchor: "south", distance: 6pt))
  wire((0, -1.0), (3.6, -1.0), n: "o-o")
})
