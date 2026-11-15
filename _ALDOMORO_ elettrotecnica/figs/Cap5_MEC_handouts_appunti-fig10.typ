// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 419) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  rect((0, 0), (1.3, 4.0), stroke: 1.2pt)
  wire((1.3, 3.4), (2.7, 3.4))
  wire((1.3, 2.0), (2.7, 2.0))
  wire((1.3, 0.6), (2.7, 0.6))

  node("m1", (2.7, 3.4), fill: false)
  node("m2", (2.7, 2.0), fill: false)
  node("m3", (2.7, 0.6), fill: false)

  content((2.7, 3.6), anchor: "south", sans("1", weight: "bold"))
  content((2.7, 2.2), anchor: "south", sans("2", weight: "bold"))
  content((2.7, 0.8), anchor: "south", sans("3", weight: "bold"))

  bezier((2.6, 2.15), (2.6, 3.25), (2.15, 2.7), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((2.2, 2.7), anchor: "east", $overline(V)_(1 2)$)

  bezier((2.6, 0.75), (2.6, 1.85), (2.15, 1.3), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((2.2, 1.3), anchor: "east", $overline(V)_(2 3)$)

  bezier((2.85, 0.7), (2.85, 3.3), (3.65, 2.0), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((3.55, 2.0), anchor: "west", $overline(V)_(3 1)$)
})
