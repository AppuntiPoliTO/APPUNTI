// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2426) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let inductor = zap.inductor.with(variant: "ieee")
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

  vsource("e1", (0, 0), (0, 2.5), label: (content: $E$, anchor: "east", distance: 12pt))
  content((0.35, 1.9), sans("+", weight: "bold"))
  resistor("r1", (0, 2.5), (3.8, 2.5), label: (content: $R$, anchor: "south", distance: 6pt))
  inductor("l1", (3.8, 2.5), (3.8, 0), label: (content: $L$, anchor: "east", distance: 6pt))
  wire((3.8, 0), (0, 0))

  // Condizioni a t = 0+
  bezier((2.6, 2.9), (1.2, 2.9), (1.9, 3.3), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 0.8pt))
  content((1.9, 3.55), text(fill: blue)[$v_R(0^+) = 0$])

  line((3.8, 2.4), (3.8, 1.9), mark: (end: "stealth", fill: red.darken(10%)), stroke: (paint: red.darken(10%), thickness: 1pt))
  content((4.6, 2.7), text(fill: red.darken(10%))[$i(0^+) = 0$])

  bezier((4.3, 0.3), (4.3, 2.2), (4.5, 1.25), mark: (end: "stealth", fill: blue), stroke: (paint: blue, thickness: 0.8pt))
  content((5.5, 1.25), text(fill: blue)[$v_L(0^+) = E$])
})
