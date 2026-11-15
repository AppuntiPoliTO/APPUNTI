// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1585) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  // Impedenza di linea
  resistor("zl", (0.5, 3), (3, 3), variant: "iec", label: (content: $macron(Z)_"l"$, anchor: "south", distance: 6pt))
  wire((0, 3), (0.5, 3))
  
  // Freccia corrente I'
  line((0.1, 3.35), (0.9, 3.35), mark: (end: "stealth", fill: black))
  content((0.5, 3.8), $macron(I)'$)

  // Nodo superiore e inferiore del condensatore
  node("n1", (3.8, 3))
  node("n2", (3.8, 0))
  wire((3, 3), (6.5, 3))
  wire((0, 0), (6.5, 0))

  // Condensatore in parallelo
  capacitor("c", (3.8, 3), (3.8, 0), label: (content: $C$, anchor: "north", distance: 8pt))
  line((4.1, 2.7), (4.1, 1.9), mark: (end: "stealth", fill: black))
  content((4.55, 2.3), $macron(I)_C$)

  // Carico utilizzatore
  resistor("zu", (6.5, 3), (6.5, 0), variant: "iec", label: (content: $macron(Z)_U$, anchor: "north", distance: 6pt))
  line((6.8, 2.8), (6.8, 2.0), mark: (end: "stealth", fill: black))
  content((7.15, 2.4), $macron(I)$)

  // Freccia curva di tensione V
  bezier((5.8, 0.6), (5.8, 2.4), (5.4, 1.5), mark: (end: "stealth", fill: black))
  content((5.2, 1.5), $macron(V)$)
})
