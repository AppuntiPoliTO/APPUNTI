// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1036) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
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

  vsource("e1", (0, 0), (0, 1.5))
  content((-0.55, 0.75), $E_1quad $)
  content((0.3, 1.3), sans("+", size: 9pt, weight: "bold"))
  resistor("r1", (0, 1.5), (0, 3.0), label: (content: $R_1$, anchor: "east", distance: 4pt))

  vsource("e2", (4.0, 0), (4.0, 1.5))
  content((4.6, 0.75), $quad E_2$)
  content((4.3, 1.3), sans("+", size: 9pt, weight: "bold"))
  resistor("r2", (4.0, 1.5), (4.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 4pt))

  wire((0, 3.0), (4.0, 3.0))
  wire((0, 0), (4.0, 0))
  wire((2.0, 3.0), (2.0, 2.4))
  circle((2.0, 2.33), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((2.35, 2.33), sans("A", size: 9pt))
  wire((2.0, 0), (2.0, 0.6))
  circle((2.0, 0.67), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((2.35, 0.67), sans("B", size: 9pt))

  line((1.9, 0.85), (1.9, 2.15), stroke: red.darken(10%), mark: (end: "stealth", fill: red.darken(10%), scale: 0.7))
  content((2.5, 1.5), text(fill: red.darken(10%))[$V_(A B)$])
})
