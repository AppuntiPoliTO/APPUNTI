// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 285) con LocalTypst
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

  // Terminali esterni e nodi di giunzione
  wire((0, 0), (1.2, 0), n: "o-*")
  resistor("rk", (1.2, 0), (4.8, 0), label: (content: $R_k$, anchor: "south", distance: 6pt))
  wire((4.8, 0), (6.0, 0), n: "*-o")

  // Ramo in parallelo con generatore di corrente Ak
  wire((1.2, 0), (1.2, 1.8))
  isource("ak", (1.2, 1.8), (4.8, 1.8))
  wire((4.8, 1.8), (4.8, 0))

  // Frecce di corrente Ik e Ak sui rami
  line((0.7, 0), (0.4, 0), mark: (end: "stealth", fill: black, scale: 0.9))
  content((0.6, 0.38), $I_k$)

  line((1.9, 1.8), (1.6, 1.8), mark: (end: "stealth", fill: black, scale: 0.9))
  content((1.8, 2.2), $A_k$)

  // Freccia di tensione Vk curva sotto
  bezier((5.7, -0.6), (0.3, -0.6), (3.0, -1.35), mark: (end: "stealth", fill: black))
  content((3.0, -1.35), $V_k$)
})
