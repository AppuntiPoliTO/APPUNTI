// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1100) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let inductor = zap.inductor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  inductor("l", (0, 3), (0, 0), variant: "ieee", n: "o-o", label: (content: $L$, anchor: "west", distance: 8pt))

  // Freccia corrente i(t)
  line((0, 3.8), (0, 3.2), stroke: red + 1pt, mark: (end: "stealth", fill: red))
  content((0.6, 3.5), text(fill: red)[$i(t)$])

  // Freccia tensione v(t)
  bezier((-0.5, 0.2), (-0.5, 2.8), (-0.9, 1.5), stroke: blue + 1pt, mark: (end: "stealth", fill: blue))
  content((-1.2, 1.5), text(fill: blue)[$v(t)$])
})
