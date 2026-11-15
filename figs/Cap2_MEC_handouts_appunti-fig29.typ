// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1453) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))
  resistor("r4", (0, 0), (0, 3.2), n: "o-o", label: (content: $R_4$, anchor: "west", distance: 5pt))
  content((0.4, 3.2), sans("A", weight: "bold"))
  content((0.4, 0), sans("B", weight: "bold"))
  line((0, 1.0), (0, 0.4), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
  content((0.5, 0.7), text(fill: rgb("#1b5e20"), $I_4$))
  bezier((1.1, 0.3), (1.1, 2.9), (1.4, 1.6), stroke: (paint: rgb("#1b5e20"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
  content((1.8, 2.2), text(fill: rgb("#1b5e20"), $V_(A B)$))
})
