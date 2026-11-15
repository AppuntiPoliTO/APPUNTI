// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1587) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  resistor("rm1", (0, 2.4), (3.0, 2.4))
  resistor("rm2", (0, 0.6), (3.0, 0.6))
  rect((3.0, 0.0), (4.5, 3.0), stroke: 1.2pt)
  content((3.75, 1.5), $P$)

  node("m1", (0, 2.4), fill: false)
  node("m2", (0, 0.6), fill: false)

  line((-0.8, 2.4), (-0.25, 2.4), stroke: 0.9pt, mark: (end: "stealth", fill: black, scale: 1.1))
  content((-0.5, 2.55), anchor: "south", $I_"m"$)

  content((rel: (0, 0.45), to: "rm1.center"), anchor: "south", $R_"m"$)
  content((rel: (0, 0.45), to: "rm2.center"), anchor: "south", $R_"m"$)

  bezier((2.8, 0.85), (2.8, 2.15), (2.45, 1.5), stroke: 0.75pt, mark: (end: "stealth", fill: black))
  content((2.5, 1.5), anchor: "east", $V$)
})
