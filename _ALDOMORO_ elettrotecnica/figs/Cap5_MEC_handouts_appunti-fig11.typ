// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 448) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
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

  line((4.1, 3.4), (3.1, 3.4), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((3.7, 3.55), anchor: "south", $overline(I)_1$)

  line((4.1, 2.0), (3.1, 2.0), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((3.7, 2.15), anchor: "south", $overline(I)_2$)

  line((4.1, 0.6), (3.1, 0.6), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((3.7, 0.75), anchor: "south", $overline(I)_3$)
})
