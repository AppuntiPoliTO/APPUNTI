// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1034) con LocalTypst
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
  set-style(vsource: (variant: "iec"))

  vsource("e1", (0, 0), (0, 3.2), position: 45%)
  wire((0, 3.2), (3.4, 3.2))
  resistor("z", (3.4, 3.2), (3.4, 0), variant: "iec", position: 55%)
  wire((3.4, 0), (0, 0))

  node("OO", (1.7, 0))
  content((1.7, -0.22), anchor: "north", $O = O'$)

  content((rel: (-0.6, 0), to: "e1.center"), anchor: "east", $overline(E)_1$)
  content((rel: (-0.35, 0.55), to: "e1.center"), anchor: "south", sans("+", weight: "bold"))

  line((1.3, 3.4), (2.1, 3.4), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((1.7, 3.55), anchor: "south", $overline(I)_1$)

  content((rel: (0.45, 0), to: "z.center"), anchor: "west", $overline(Z)$)
})
