// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1415) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  rect((0, 0.5), (1.2, 4.1), stroke: 1.2pt)
  wire((1.2, 3.6), (2.2, 3.6))
  wire((1.2, 2.3), (2.2, 2.3))
  wire((1.2, 1.0), (2.2, 1.0))

  node("m1", (2.2, 3.6), fill: false)
  node("m2", (2.2, 2.3), fill: false)
  node("m3", (2.2, 1.0), fill: false)

  content((2.2, 3.78), anchor: "south", sans("1", weight: "bold"))
  content((2.2, 2.48), anchor: "south", sans("2", weight: "bold"))
  content((2.2, 1.18), anchor: "south", sans("3", weight: "bold"))

  // Nodo O in basso
  circle((4.1, -0.8), radius: 0.07, fill: black)
  content((4.1, -0.95), anchor: "north", sans("O", weight: "bold"))

  // Archi tensioni E_1, E_2, E_3 dal nodo O ai morsetti 1, 2, 3
  bezier((4.25, -0.65), (2.5, 3.5), (5.2, 1.2), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((4.1, 1.9), anchor: "east", $overline(E)_1$)

  bezier((4.05, -0.6), (2.5, 2.2), (3.8, 0.8), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((3.4, 0.9), anchor: "east", $overline(E)_2$)

  bezier((3.85, -0.65), (2.45, 0.8), (3.0, -0.1), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((3.0, -0.35), anchor: "east", $overline(E)_3$)

  // Frecce correnti I_1, I_2, I_3
  line((5.4, 3.6), (4.7, 3.6), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((5.2, 3.75), anchor: "south", $overline(I)_1$)

  line((5.4, 2.3), (4.7, 2.3), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((5.2, 2.45), anchor: "south", $overline(I)_2$)

  line((5.4, 1.0), (4.7, 1.0), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((5.2, 1.15), anchor: "south", $overline(I)_3$)

  // Freccia ondulata potenza complessa S
  line((7.2, 1.8), (6.9, 2.0), (6.6, 1.85), (6.2, 2.15), stroke: 1.2pt, mark: (end: "stealth", fill: black))
  content((7.4, 2.15), anchor: "west", $overline(S)$)
})
