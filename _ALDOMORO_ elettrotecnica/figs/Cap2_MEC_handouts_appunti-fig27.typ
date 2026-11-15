// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1414) con LocalTypst
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
  vsource("e2", (0, 0), (0, 1.8), label: (content: $E_2$, anchor: "west", distance: 5pt))
  content((0.4, 0.3), sans("+", weight: "bold"))
  resistor("r2", (0, 1.8), (0, 3.5), label: (content: $R_2$, anchor: "east", distance: 5pt))
  wire((0, 3.5), (1.4, 3.5), n: "-o")
  wire((0, 0), (1.4, 0), n: "-o")
  // Frecce
  line((-0.8, 1.5), (-0.8, 0.3), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  line((-0.8, 2.1), (-0.8, 3.2), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  line((0.9, 3.5), (0.2, 3.5), stroke: (paint: rgb("#1b5e20"), thickness: 1.5pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
  content((0.5, 3.9), text(fill: rgb("#1b5e20"), $I_2$))
  bezier((1.6, 0.3), (1.6, 3.2), (1.9, 1.75), stroke: (paint: rgb("#1b5e20"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#1b5e20")))
  content((2.3, 2.5), text(fill: rgb("#1b5e20"), $V_(A B)$))
  bezier((0.8, 2.2), (0.8, 1.4), (1.2, 1.8), stroke: (paint: orange, thickness: 1.2pt), mark: (end: "stealth", fill: orange))
})
