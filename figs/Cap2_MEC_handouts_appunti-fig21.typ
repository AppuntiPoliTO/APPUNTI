// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1106) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let isource = zap.isource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  // Blocco Rete Lineare a sinistra
  rect((0, 0.2), (2.6, 2.6), fill: luma(238), stroke: 0.8pt + black)
  content((1.3, 1.4), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

  wire((2.6, 2.2), (4.0, 2.2))
  wire((2.6, 0.6), (4.0, 0.6))
  node("A1", (3.3, 2.2), label: (content: sans("A", size: 11pt), anchor: "south", distance: 3pt))
  node("B1", (3.3, 0.6), label: (content: sans("B", size: 11pt), anchor: "south", distance: 3pt))

  wire((4.0, 2.2), (4.0, 1.8))
  wire((4.0, 0.6), (4.0, 1.0))
  rect((3.82, 1.0), (4.18, 1.8), fill: luma(238), stroke: 0.8pt + black)

  // Freccia rossa
  line((4.9, 1.4), (6.0, 1.4), stroke: 5pt + red, mark: (end: "triangle", fill: red, scale: 0.7))

  // Circuito Equivalente di Norton a destra
  isource("anor", (7.2, 0), (7.2, 2.4), variant: "iec")
  wire((7.2, 2.4), (7.2, 2.8))
  line((7.2, 2.1), (7.2, 2.55), mark: (end: "stealth", fill: black, scale: 0.7))
  content((6.65, 2.3), $A_"NOR"$)


  resistor("rnor", (8.8, 0), (8.8, 2.8), variant: "ieee")
  content((9.45, 1.2), $R_"NOR"$)


  wire((7.2, 2.8), (11.2, 2.8))
  wire((7.2, 0), (11.2, 0))
  circle((9.8, 2.8), radius: 0.06, fill: white, stroke: 0.8pt + black)
  circle((9.8, 0), radius: 0.06, fill: white, stroke: 0.8pt + black)
  content((10.0, 3.15), sans("A", size: 11pt))
  content((10.0, -0.35), sans("B", size: 11pt))

  // Carico a destra
  wire((11.2, 2.8), (11.2, 1.8))
  wire((11.2, 0), (11.2, 1.0))
  rect((11.02, 1.0), (11.38, 1.8), fill: luma(238), stroke: 0.8pt + black)
})
