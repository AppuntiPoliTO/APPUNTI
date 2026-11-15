// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1000) con LocalTypst
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
  set-style(vsource: (variant: "iec"))

  let y = 0.0
  vsource("e1", (0, y), (3.6, y), position: 45%)
  wire((3.6, y), (5.0, y))
  resistor("z1", (5.0, y), (8.2, y), variant: "iec", position: 50%)

  node("O", (0, y), fill: false)
  node("m1", (3.6, y), fill: false)
  node("Op", (8.2, y), fill: false)

  content((-0.2, y), anchor: "east", $O$)
  content((3.6, y + 0.2), anchor: "south", sans("1", weight: "bold"))
  content((8.4, y), anchor: "west", $O'$)

  content((rel: (0, 0.55), to: "e1.center"), anchor: "south", $overline(E)_1$)
  content((rel: (0.48, 0.15), to: "e1.center"), anchor: "south", sans("+", weight: "bold"))

  line((4.05, y + 0.2), (4.75, y + 0.2), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((4.4, y + 0.35), anchor: "south", $overline(I)_1$)

  content((rel: (0, -0.45), to: "z1.center"), anchor: "north", $overline(Z)_1$)
  bezier((7.1, y + 0.38), (6.1, y + 0.38), (6.6, y + 0.72), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((6.6, y + 0.72), anchor: "south", $overline(E)'_1$)

  bezier((0, -0.45), (8.2, -0.45), (4.1, -1.45), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  content((4.1, -1.2), anchor: "north", $overline(V)_(O' O)$)
})
