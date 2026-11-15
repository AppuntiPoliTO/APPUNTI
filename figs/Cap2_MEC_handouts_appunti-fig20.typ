// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1067) con LocalTypst
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

  vsource("eth", (0, 0), (0, 2.2))
  content((0.35, 1.8), sans("+", size: 9pt, weight: "bold"))
  line((-0.45, 0.4), (-0.45, 1.8), mark: (end: "stealth", fill: black, scale: 0.6))
  content((-1.0, 1.1), $E_"TH" quad$)
  wire((0, 2.2), (0, 3.0))
  resistor("rth", (0, 3.0), (2.4, 3.0), label: (content: $R_"TH"$, anchor: "north", distance: 5pt))
  wire((2.4, 3.0), (3.2, 3.0))
  line((2.4, 3.0), (2.8, 3.0), mark: (end: "stealth", fill: black, scale: 0.6))
  content((2.6, 3.45), $I = 0$)

  circle((3.27, 3.0), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((3.6, 3.2), sans("A", size: 9pt))
  wire((0, 0), (3.2, 0))
  circle((3.27, 0), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((3.6, -0.2), sans("B", size: 9pt))

  line((3.27, 0.25), (3.27, 2.75), mark: (end: "stealth", fill: black, scale: 0.7))
  content((3.95, 1.5), $V_(A B)$)
})
