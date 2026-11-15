// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1370) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  line((0, 0), (4.5, 0), stroke: 1pt + black)
  content((2.25, -0.35), $P$)
  line((4.5, 0), (4.5, 2.7), stroke: 1.2pt + blue)
  content((4.85, 1.35), text(fill: blue)[$Q$])
  line((0, 0), (4.5, 2.7), stroke: 1.2pt + blue)
  content((4.3, 2.95), text(fill: blue)[$S$])
  arc((1.3, 0), start: 0deg, stop: 31deg, radius: 1.3, stroke: blue, mark: (end: "stealth", fill: blue))
  content((1.6, 0.45), text(fill: blue)[$varphi$])
})
