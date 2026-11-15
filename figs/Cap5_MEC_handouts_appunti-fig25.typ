// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1224) con LocalTypst
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

  let y1 = 4.4
  let y2 = 2.2
  let y3 = 0.0

  wire((0, y3), (0, y1))
  node("O", (0, y2))
  content((-0.25, y2), anchor: "east", $O$)

  vsource("e1", (0, y1), (3.4, y1), position: 45%)
  vsource("e2", (0, y2), (3.4, y2), position: 45%)
  vsource("e3", (0, y3), (3.4, y3), position: 45%)

  content((rel: (0, 0.55), to: "e1.center"), anchor: "south", $overline(E)_1$)
  content((rel: (0.48, 0.15), to: "e1.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "e2.center"), anchor: "south", $overline(E)_2$)
  content((rel: (0.48, 0.15), to: "e2.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "e3.center"), anchor: "south", $overline(E)_3$)
  content((rel: (0.48, 0.15), to: "e3.center"), anchor: "south", sans("+", weight: "bold"))

  wire((3.4, y1), (8.4, y1))
  wire((3.4, y2), (6.0, y2))
  wire((3.4, y3), (8.4, y3))

  node("m1", (3.4, y1), fill: false)
  node("m2", (3.4, y2), fill: false)
  node("m3", (3.4, y3), fill: false)

  content((3.4, y1 + 0.2), anchor: "south", sans("1", weight: "bold"))
  content((3.4, y2 + 0.2), anchor: "south", sans("2", weight: "bold"))
  content((3.4, y3 + 0.2), anchor: "south", sans("3", weight: "bold"))

  // Frecce correnti di linea
  line((4.3, y1 + 0.2), (4.9, y1 + 0.2), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((4.6, y1 + 0.35), anchor: "south", $overline(I)_1$)

  line((4.3, y2 + 0.2), (4.9, y2 + 0.2), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((4.6, y2 + 0.35), anchor: "south", $overline(I)_2$)

  line((4.3, y3 + 0.2), (4.9, y3 + 0.2), stroke: 0.85pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((4.6, y3 + 0.35), anchor: "south", $overline(I)_3$)

  // Rami del triangolo
  resistor("z1", (6.0, y1), (6.0, y2), variant: "iec", position: 58%)
  resistor("z2", (6.0, y2), (6.0, y3), variant: "iec", position: 42%)
  resistor("z3", (8.4, y1), (8.4, y3), variant: "iec", position: 50%)

  node("d1", (6.0, y1))
  node("d2", (6.0, y2))
  node("d3", (6.0, y3))

  // Etichette impedenze a sinistra dei rami verticali
  content((rel: (-0.38, 0), to: "z1.center"), anchor: "east", $overline(Z)_1$)
  content((rel: (-0.38, 0), to: "z2.center"), anchor: "east", $overline(Z)_2$)
  content((rel: (-0.38, 0), to: "z3.center"), anchor: "east", $overline(Z)_3$)

  // Frecce tensioni concatenate a destra dei bipoli
  bezier((6.38, y2 + 0.45), (6.38, y1 - 0.75), (6.65, (y1 + y2) / 2 - 0.15), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((6.65, (y1 + y2) / 2 - 0.15), anchor: "west", $overline(V)_(1 2)$)

  bezier((6.38, y3 + 0.75), (6.38, y2 - 0.45), (6.65, (y2 + y3) / 2 + 0.15), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((6.65, (y2 + y3) / 2 + 0.15), anchor: "west", $overline(V)_(2 3)$)

  bezier((8.78, y2 + 0.5), (8.78, y2 - 0.5), (9.05, y2), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((9.05, y2), anchor: "west", $overline(V)_(3 1)$)

  // Frecce correnti di fase
  line((6.2, y1 - 0.15), (6.2, y1 - 0.6), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  content((6.35, y1 - 0.38), anchor: "west", $overline(I)_(1 2)$)

  line((6.2, y3 + 0.6), (6.2, y3 + 0.15), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  content((6.35, y3 + 0.38), anchor: "west", $overline(I)_(2 3)$)

  line((8.6, y1 - 1.15), (8.6, y1 - 0.7), stroke: 0.8pt, mark: (end: "stealth", fill: black))
  content((8.75, y1 - 0.92), anchor: "west", $overline(I)_(3 1)$)
})
