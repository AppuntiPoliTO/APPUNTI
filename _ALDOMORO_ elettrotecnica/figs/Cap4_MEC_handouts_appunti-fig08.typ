// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 581) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let inductor = zap.inductor.with(variant: "ieee")

#zap.circuit({
  
  import zap.cetz.draw: *

  // Bipolo induttore
  inductor("l1", (0, 2.2), (0, 0), label: (content: $j omega L$, anchor: "south", distance: 6pt), n: "o-o")
  line((0, 2.9), (0, 2.35), mark: (end: "stealth", fill: black), stroke: 0.9pt)
  content((-0.35, 2.65), $macron(I)$)
  bezier((0.35, 0.3), (0.35, 1.9), (0.75, 1.1), mark: (end: "stealth", fill: black), stroke: 0.7pt)
  content((0.9, 1.1), $macron(V)$)

  // Diagramma fasoriale (V in anticipo di 90 gradi su I)
  let ox = 4.2
  let oy = 0.2
  let ang_i = 57deg
  let ang_v = 147deg
  line((ox, oy), (ox + 1.4 * calc.cos(ang_i), oy + 1.4 * calc.sin(ang_i)), mark: (end: "stealth", fill: black), stroke: 1.0pt)
  line((ox, oy), (ox + 2.2 * calc.cos(ang_v), oy + 2.2 * calc.sin(ang_v)), mark: (end: "stealth", fill: black), stroke: 1.0pt)
  content((ox + 1.35 * calc.cos(ang_i) - 0.15, oy + 1.35 * calc.sin(ang_i) + 0.35), $macron(I)$)
  content((ox + 1.65 * calc.cos(ang_v) + 0.3, oy + 1.65 * calc.sin(ang_v) + 0.35), $macron(V)$)
})
