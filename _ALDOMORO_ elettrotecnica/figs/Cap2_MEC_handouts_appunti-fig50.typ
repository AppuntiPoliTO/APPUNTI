// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2491) con LocalTypst
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

  capacitor("c1", (0, 3), (0, 0), label: (content: $C$, anchor: "north", distance: 8pt))
  content((-0.35, 2.0), sans("+", weight: "bold"))
  content((-0.35, 1.0), sans("-", weight: "bold"))

  // Corrente iC
  line((0.35, 2.4), (0.35, 1.7), mark: (end: "stealth", fill: black))
  content((0.75, 2.05), $i_C$)

  // Freccia v
  bezier((-0.6, 0.4), (-0.6, 2.6), (-0.9, 1.5), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((-1.15, 1.5), $v$)

  switch("s1", (0, 3), (4, 3), closed: false, label: (content: $S$, anchor: "north", distance: 8pt))
  content((2.0, 2), $t = 0$)

  resistor("r1", (4, 3), (4, 0), label: (content: $R$, anchor: "west", distance: 8pt))
  bezier((3.4, 2.5), (3.4, 0.5), (3.1, 1.5), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((2.8, 1.5), $v_R$)

  wire((4, 0), (0, 0))
})
