// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 251) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))

  vsource("ek", (0, 0), (3.0, 0), label: (content: $E_k$, anchor: "north", distance: 6pt), n: "o-")
  resistor("rk", (3.0, 0), (6.0, 0), label: (content: $R_k$, anchor: "north", distance: 6pt), n: "-o")

  content((0.85, 0.38), sans("+", size: 12pt, weight: "bold"))

  // Freccia di corrente Ik staccata sopra il filo
  line((3.3, 0.25), (2.5, 0.25), mark: (end: "stealth", fill: black))
  content((2.9, 0.65), $I_k$)

  // Freccia di tensione Vk curva sotto
  bezier((5.7, -0.6), (0.3, -0.6), (3.0, -1.35), mark: (end: "stealth", fill: black))
  content((3.0, -1.35), $V_k$)
})
