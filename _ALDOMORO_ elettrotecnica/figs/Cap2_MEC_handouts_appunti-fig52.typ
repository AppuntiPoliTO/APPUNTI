// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2585) con LocalTypst
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

  vsource("e1", (0, 0), (0, 3), label: (content: $E$, anchor: "east", distance: 12pt))
  content((-0.35, 2.2), sans("+", weight: "bold"))

  switch("s1", (0, 3), (2.2, 3), closed: true)
  content((1.1, 2.3), $t = 0$)

  resistor("r1", (2.2, 3), (5.0, 3), label: (content: $R$, anchor: "south", distance: 6pt), n: "*-*")
  bezier((4.4, 3.4), (2.8, 3.4), (3.6, 3.7), mark: (end: "stealth", fill: green.darken(30%)), stroke: (paint: green.darken(30%), thickness: 0.8pt))
  content((3.6, 3.95), text(fill: green.darken(30%))[$v_R$])

  capacitor("c1", (5.0, 3), (5.0, 0), label: (content: $C$, anchor: "south", distance: 6pt))
  line((5.35, 2.7), (5.35, 2.0), mark: (end: "stealth", fill: red.darken(10%)), stroke: (paint: red.darken(10%), thickness: 0.9pt))
  content((5.75, 2.35), text(fill: red.darken(10%))[$i_C$])

  bezier((5.45, 0.3), (5.45, 1.9), (5.65, 1.1), mark: (end: "stealth", fill: green.darken(30%)), stroke: (paint: green.darken(30%), thickness: 0.8pt))
  content((5.9, 1.1), text(fill: green.darken(30%))[$v$])

  wire((5.0, 0), (0, 0))

  bezier((2.2, 1.8), (2.2, 0.8), (2.9, 1.3), mark: (end: "stealth", fill: orange.darken(10%)), stroke: (paint: orange.darken(10%), thickness: 1.2pt))
})
