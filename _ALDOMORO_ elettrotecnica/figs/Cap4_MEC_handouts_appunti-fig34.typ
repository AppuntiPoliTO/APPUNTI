// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1830) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  // Impedenza di linea a monte
  wire((0, 3), (1.2, 3))
  resistor("zl", (1.2, 3), (3.2, 3), variant: "iec", label: (content: $macron(Z)_"l"$, anchor: "south", distance: 6pt))
  wire((3.2, 3), (10.2, 3))
  wire((0, 0), (10.2, 0))

  // Gruppo Motore 1 + Condensatore 1
  node("g1a", (4.5, 3))
  node("g1b", (4.5, 0))
  capacitor("c1", (4.5, 3), (4.5, 0), label: (content: $C_1$, anchor: "south", distance: 2pt))
  node("m1a", (5.6, 3))
  node("m1b", (5.6, 0))
  wire((5.6, 3), (5.6, 2.0))
  wire((5.6, 1.0), (5.6, 0))
  circle((5.6, 1.5), radius: 0.5, fill: white, stroke: 1pt)
  content((5.6, 1.5), sans("M", weight: "bold"))

  // Gruppo Motore 2 + Condensatore 2
  node("g2a", (7.0, 3))
  node("g2b", (7.0, 0))
  capacitor("c2", (7.0, 3), (7.0, 0), label: (content: $C_2$, anchor: "south", distance: 2pt))
  node("m2a", (8.1, 3))
  node("m2b", (8.1, 0))
  wire((8.1, 3), (8.1, 2.0))
  wire((8.1, 1.0), (8.1, 0))
  circle((8.1, 1.5), radius: 0.5, fill: white, stroke: 1pt)
  content((8.1, 1.5), sans("M", weight: "bold"))

  // Gruppo Motore 3 + Condensatore 3
  node("g3a", (9.4, 3))
  node("g3b", (9.4, 0))
  capacitor("c3", (9.4, 3), (9.4, 0), label: (content: $C_3$, anchor: "south", distance: 1pt))
  wire((10.2, 3), (10.5, 3))
  wire((10.2, 0), (10.5, 0))
  wire((10.5, 3), (10.5, 2.0))
  wire((10.5, 1.0), (10.5, 0))
  circle((10.5, 1.5), radius: 0.5, fill: white, stroke: 1pt)
  content((10.5, 1.5), sans("M", weight: "bold"))
})
