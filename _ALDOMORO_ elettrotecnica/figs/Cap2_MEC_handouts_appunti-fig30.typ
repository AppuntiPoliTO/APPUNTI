// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1508) con LocalTypst
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

  // Fili orizzontali
  wire((0, 3.8), (4.4, 3.8))
  wire((0, 0), (4.4, 0))

  // Ramo sinistro (E1, R1)
  vsource("e1", (0, 0), (0, 2.0), label: (content: $E_1$, anchor: "east", distance: 6pt))
  content((0.35, 1.75), sans("+", weight: "bold"))
  line((0.6, 0.4), (0.6, 1.6), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  resistor("r1", (0, 2.0), (0, 3.8), label: (content: $R_1$, anchor: "east", distance: 6pt))

  // Ramo destro (E2, R2)
  vsource("e2", (4.4, 0), (4.4, 2.0), label: (content: $E_2 $, anchor: "west", distance: 6pt))
  content((4.75, 1.75), sans("+", weight: "bold"))
  line((3.8, 0.4), (3.8, 1.6), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  resistor("r2", (4.4, 2.0), (4.4, 3.8), label: (content: $R_2$, anchor: "west", distance: 6pt))

  // Morsetti centrali A e B
  wire((2.2, 3.8), (2.2, 3.0), n: "-o")
  content((2.6, 3.0), sans("A", weight: "bold"))
  wire((2.2, 0), (2.2, 0.8), n: "-o")
  content((2.6, 0.8), sans("B", weight: "bold"))

  // Freccia rossa V_AB
  line((2.1, 1.1), (2.1, 2.7), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((2.7, 1.9), text(fill: red, $V_(A B)$))
})
