// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1517) con LocalTypst
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

  wire((0, 3.4), (3.4, 3.4))
  wire((0, 1.8), (1.6, 1.8))
  wire((0, 0.2), (3.4, 0.2))

  resistor("zd1", (1.6, 3.4), (1.6, 1.8), variant: "iec")
  resistor("zd2", (1.6, 1.8), (1.6, 0.2), variant: "iec")
  resistor("zd3", (3.4, 3.4), (3.4, 0.2), variant: "iec")

  node("d1", (1.6, 3.4))
  node("d2", (1.6, 1.8))
  node("d3", (1.6, 0.2))

  node("m1", (0, 3.4), fill: false)
  node("m2", (0, 1.8), fill: false)
  node("m3", (0, 0.2), fill: false)

  content((0, 3.6), anchor: "south", sans("1", weight: "bold"))
  content((0, 2.0), anchor: "south", sans("2", weight: "bold"))
  content((0, 0.4), anchor: "south", sans("3", weight: "bold"))

  content((rel: (0.42, 0), to: "zd1.center"), anchor: "west", $overline(Z)_Delta$)
  content((rel: (0.42, 0), to: "zd2.center"), anchor: "west", $overline(Z)_Delta$)
  content((rel: (0.42, 0), to: "zd3.center"), anchor: "west", $overline(Z)_Delta$)

  line((1.22, 3.0), (1.22, 2.2), stroke: 0.85pt, mark: (end: "stealth", fill: black))
  content((1.12, 2.6), anchor: "east", $I_f$)

  line((0.55, -0.1), (0.55, 3.7), stroke: (dash: "dashed", thickness: 0.8pt))
  line((0.15, -0.05), (0.35, 0.08), (0.55, -0.08), (0.95, 0.02), stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((0.55, -0.22), anchor: "north", $P, Q$)
})
