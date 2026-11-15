// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 161) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  line((0, -1.5), (0, 1.8), mark: (end: "stealth", fill: black))
  line((-0.3, 0), (4.2, 0), mark: (end: "stealth", fill: black))
  content((4.1, -0.3), $t$)
  content((-0.3, 1.7), $a(t)$)
  line((0, 1.0), (1.3, 1.0), (1.3, -1.0), (2.6, -1.0), (2.6, 1.0), (3.6, 1.0), (3.6, -1.0), (3.9, -1.0), stroke: 1.2pt + black)
  line((0, -1.3), (2.6, -1.3), mark: (start: "stealth", end: "stealth", fill: black), stroke: 0.7pt)
  content((1.3, -1.6), $T$)
})
