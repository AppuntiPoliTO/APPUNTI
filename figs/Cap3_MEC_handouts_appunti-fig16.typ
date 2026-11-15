// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 842) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  resistor("r", (0, 3), (0, 0), n: "o-o", label: (content: $R$, anchor: "west", distance: 8pt))

  // Freccia corrente i(t) dall'alto
  line((0, 3.6), (0, 3.15), stroke: (paint: red, thickness: 1.3pt), mark: (end: "stealth", fill: red))
  content((0.65, 3.4), text(fill: red)[$i(t)$])

  // Freccia curva tensione v(t)
  bezier((-0.35, 0.1), (-0.35, 2.9), (-0.75, 1.5), stroke: (paint: blue, thickness: 1.2pt), mark: (end: "stealth", fill: blue))
  content((-1.05, 1.5), text(fill: blue)[$v(t)$])
})
