// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1612) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let varphi = $phi$

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  resistor("rt1", (0, 3.0), (3.0, 3.0))
  resistor("rt2", (0, 1.8), (3.0, 1.8))
  resistor("rt3", (0, 0.6), (3.0, 0.6))
  rect((3.0, 0.0), (4.6, 3.6), stroke: 1.2pt)
  content((3.8, 1.8), align(center)[$P$\ $cos varphi$])

  node("t1", (0, 3.0), fill: false)
  node("t2", (0, 1.8), fill: false)
  node("t3", (0, 0.6), fill: false)

  line((-0.8, 3.0), (-0.25, 3.0), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((-0.5, 3.15), anchor: "south", $I_"t"$)

  content((rel: (0, 0.42), to: "rt1.center"), anchor: "south", $R_"t"$)
  content((rel: (0, 0.42), to: "rt2.center"), anchor: "south", $R_"t"$)
  content((rel: (0, 0.42), to: "rt3.center"), anchor: "south", $overline(R)_"t"$)

  bezier((2.8, 1.95), (2.8, 2.85), (2.5, 2.4), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((2.55, 2.4), anchor: "east", $V$)
})
