// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1013) con LocalTypst
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
  scale(0.75)

  resistor("r1", (0, 0), (0, 3.0), label: (content: $R_1$, anchor: "east", distance: 4pt))
  resistor("r2", (4.0, 0), (4.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 4pt))
  wire((0, 3.0), (4.0, 3.0))
  wire((0, 0), (4.0, 0))

  wire((2.0, 3.0), (2.0, 2.3))
  wire((2.0, 0), (2.0, 0.7))
  vsource("vp", (2.0, 0.7), (2.0, 2.3), stroke: red.darken(10%))
  line((2.0, 2.0), (2.0, 2.3), stroke: red.darken(10%), mark: (end: "stealth", fill: red.darken(10%), scale: 0.6))
  content((2.6, 1.5), text(fill: red.darken(10%))[+$V$])
  content((2.6, 2.1), text(fill: red.darken(10%))[$I$])
  content((2.35, 2.55), sans("A", size: 9pt))
  content((2.35, 0.45), sans("B", size: 9pt))
})
