// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 406) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "ieee"))

  // Bipolo resistore
  resistor("r1", (0, 2.2), (0, 0), label: (content: $R$, anchor: "east", distance: 6pt), n: "o-o")
  line((0, 2.9), (0, 2.35), mark: (end: "stealth", fill: black), stroke: 0.9pt)
  content((-0.35, 2.65), $macron(I)$)
  bezier((0.25, 0.3), (0.25, 1.9), (0.65, 1.1), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((0.8, 1.1), $macron(V)$)

  // Diagramma fasoriale (in fase)
  let ox = 2.6
  let oy = 0.3
  line((ox, oy), (ox + 2.2, oy + 1.4), mark: (end: "stealth", fill: black), stroke: 1.0pt)
  line((ox, oy), (ox + 1.2, oy + 0.76), mark: (end: "stealth", fill: black), stroke: 1.1pt)
  content((ox + 0.55, oy + 0.65), $macron(I)$)
  content((ox + 1.65, oy + 1.35), $macron(V)$)
})
