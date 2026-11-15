// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 214) con LocalTypst
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

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((4.8, 0), (5.1, 0.4))
  line((4.8, 0), (5.1, -0.4))

  resistor("rk", (0, 0), (2.4, 0), label: (content: $R_k$, anchor: "south", distance: 4pt), n: "o-")
  vsource("ek", (2.4, 0), (4.8, 0), label: (content: $E_k$, anchor: "north", distance: 5pt), n: "-o")

  content((4.1, 0.35), sans("+", size: 10pt, weight: "bold"))
  line((0.15, 0), (0.55, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.35, 0.35), $I$)

  bezier((0.3, -0.65), (4.5, -0.65), (2.4, -1.3), mark: (end: "stealth", fill: black))
  content((4.2, -1.2), $V$)
})
