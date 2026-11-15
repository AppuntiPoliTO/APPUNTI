// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1648) con LocalTypst
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

  // Generatore di prova rosso tra A e C
  {
    set-style(zap: (stroke: (paint: red, thickness: 1pt)))
    wire((-1.2, 2.8), (0, 2.8))
    wire((-1.2, 0), (0, 0))
    vsource("vp", (-1.2, 0), (-1.2, 2.8))
    content((-0.7, 2.0), text(fill: red, sans("+", size: 12pt, weight: "bold")))
  }

  wire((0, 2.8), (0.8, 2.8), n: "o-")
  content((0, 3.25), sans("A", weight: "bold"))
  wire((0, 0), (0.8, 0), n: "o-")
  content((0, -0.45), sans("C", weight: "bold"))

  resistor("r4", (0.8, 0), (0.8, 2.8), label: (content: $R_4$, anchor: "west", distance: 5pt))
  line((0.8, 1.1), (0.8, 0.5), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))

  resistor("rs1", (0.8, 2.8), (3.2, 2.8), label: (content: $R'_S$, anchor: "north", distance: 5pt))
  wire((3.2, 2.8), (3.2, 0))
  line((3.0, 1.7), (3.0, 0.9), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  wire((0.8, 0), (3.2, 0))
})
