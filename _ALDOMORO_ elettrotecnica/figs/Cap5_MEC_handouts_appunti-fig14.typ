// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 675) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

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

  wire((0, 0.5), (0, 3.5))
  node("O", (0, 2.0))
  content((-0.2, 2.0), anchor: "east", $O$)

  vsource("e1", (0, 3.5), (3.2, 3.5), position: 45%)
  vsource("e2", (0, 2.0), (3.2, 2.0), position: 45%)
  vsource("e3", (0, 0.5), (3.2, 0.5), position: 45%)

  node("m1", (3.2, 3.5), fill: false)
  node("m2", (3.2, 2.0), fill: false)
  node("m3", (3.2, 0.5), fill: false)

  content((rel: (0, 0.55), to: "e1.center"), anchor: "south", $overline(E)_1$)
  content((rel: (0.48, 0.15), to: "e1.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "e2.center"), anchor: "south", $overline(E)_2$)
  content((rel: (0.48, 0.15), to: "e2.center"), anchor: "south", sans("+", weight: "bold"))
  content((rel: (0, 0.55), to: "e3.center"), anchor: "south", $overline(E)_3$)
  content((rel: (0.48, 0.15), to: "e3.center"), anchor: "south", sans("+", weight: "bold"))

  content((3.2, 3.68), anchor: "south", sans("1", weight: "bold"))
  content((3.2, 2.18), anchor: "south", sans("2", weight: "bold"))
  content((3.2, 0.68), anchor: "south", sans("3", weight: "bold"))

  bezier((3.35, 2.15), (3.35, 3.35), (3.75, 2.75), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((3.68, 2.75), anchor: "west", $overline(V)_(1 2)$)

  bezier((3.35, 0.65), (3.35, 1.85), (3.75, 1.25), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((3.68, 1.25), anchor: "west", $overline(V)_(2 3)$)

  bezier((3.8, 3.4), (3.8, 0.6), (5.1, 2.0), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((4.9, 2.0), anchor: "west", $overline(V)_(3 1)$)
})
