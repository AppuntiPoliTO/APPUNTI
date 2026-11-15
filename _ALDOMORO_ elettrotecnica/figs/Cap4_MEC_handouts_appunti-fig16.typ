// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 965) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas(length: 0.85cm, {
  import draw: *
  line((0, 0), (4, 0), (4, 3), close: true, stroke: 1.2pt + black)
  arc((1.2, 0), start: 0deg, stop: 36.87deg, radius: 1.2, mark: (end: "stealth", fill: black, scale: 0.8), stroke: 0.7pt + black)
  content((1.65, 0.55), $phi$)
  content((2, -0.5), $R I^2$)
  content((4.65, 1.5), $X I^2$)
  content((1.5, 1.9), $Z I^2$)
})
