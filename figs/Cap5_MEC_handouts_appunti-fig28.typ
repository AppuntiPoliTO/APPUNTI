// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1486) con LocalTypst
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

  resistor("zy1", (0, 3.2), (3.4, 3.2), variant: "iec")
  resistor("zy2", (0, 1.8), (3.4, 1.8), variant: "iec")
  resistor("zy3", (0, 0.4), (3.4, 0.4), variant: "iec")

  wire((3.4, 0.4), (3.4, 3.2))
  node("Oy", (3.4, 1.8))

  node("m1", (0, 3.2), fill: false)
  node("m2", (0, 1.8), fill: false)
  node("m3", (0, 0.4), fill: false)

  content((-0.2, 3.2), anchor: "east", sans("1", weight: "bold"))
  content((-0.2, 1.8), anchor: "east", sans("2", weight: "bold"))
  content((-0.2, 0.4), anchor: "east", sans("3", weight: "bold"))

  content((rel: (0, 0.45), to: "zy1.center"), anchor: "south", $overline(Z)_Y$)
  content((rel: (0, 0.45), to: "zy2.center"), anchor: "south", $overline(Z)_Y$)
  content((rel: (0, 0.45), to: "zy3.center"), anchor: "south", $overline(Z)_Y$)

  line((0.55, 0.0), (0.55, 3.6), stroke: (dash: "dashed", thickness: 0.8pt))
  line((0.15, 0.1), (0.35, 0.22), (0.55, 0.05), (0.95, 0.15), stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((0.55, -0.1), anchor: "north", $P, Q$)
})
