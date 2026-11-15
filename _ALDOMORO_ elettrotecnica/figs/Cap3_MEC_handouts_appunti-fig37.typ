// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1744) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let green-vec = rgb("#2e6b4e")
  line((0, 0), (2.8, 0.6), stroke: green-vec + 2pt, mark: (end: "stealth", fill: green-vec))
  content((1.5, -0.3), text(fill: green-vec, size: 13pt)[$macron(V)_1$])

  line((2.8, 0.6), (2.2, 2.8), stroke: green-vec + 2pt, mark: (end: "stealth", fill: green-vec))
  content((3.0, 1.8), text(fill: green-vec, size: 13pt)[$macron(V)_2$])

  line((0, 0), (2.2, 2.8), stroke: green-vec + 2pt, mark: (end: "stealth", fill: green-vec))
  content((0.6, 1.7), text(fill: green-vec, size: 13pt)[$macron(V)_3$])
})
