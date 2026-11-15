// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1249) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let vsource = zap.vsource.with(variant: "iec")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(vsource: (variant: "iec"))

  vsource("e", (0, 0), (0, 2.6))
  wire((0, 2.6), (1.8, 2.6), n: "-o")
  wire((0, 0), (1.8, 0), n: "-o")
  line((0.7, 2.6), (1.3, 2.6), mark: (end: "stealth", fill: red, stroke: red))
  content((1.0, 2.95), text(fill: red)[$I$])

  line((1.8, 0.2), (1.8, 2.4), mark: (end: "stealth", fill: blue, stroke: blue))
  content((1.4, 1.3), text(fill: blue)[$E$])

  wire((2.0, 2.6), (2.6, 2.6))
  wire((2.0, 0), (2.6, 0))
  rect((2.6, -0.3), (4.2, 2.9))
  content((3.4, 1.8), $P_"sou"$)
  content((3.4, 0.8), $Q_"sou"$)
})
