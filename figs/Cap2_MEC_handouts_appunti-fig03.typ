// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 175) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(zap: (variant: "iec"))

  line((-0.3, 0.4), (0, 0))
  line((-0.3, -0.4), (0, 0))
  line((5.4, 0), (5.7, 0.4))
  line((5.4, 0), (5.7, -0.4))

  vsource("e1", (0, 0), (1.8, 0), label: (content: $E_1$, anchor: "north", distance: 5pt), n: "o-")
  vsource("e2", (1.8, 0), (3.6, 0), label: (content: $E_2$, anchor: "north", distance: 5pt))
  vsource("e3", (3.6, 0), (5.4, 0), label: (content: $E_3$, anchor: "north", distance: 5pt), n: "-o")

  content((1.35, -0.45), sans("+", size: 10pt, weight: "bold"))
  content((3.15, -0.45), sans("+", size: 10pt, weight: "bold"))
  content((4.05, -0.45), sans("+", size: 10pt, weight: "bold"))

  line((0.15, 0), (0.5, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.3, 0.35), $I$)

  bezier((5.1, -0.65), (0.3, -0.65), (2.7, -1.3), mark: (end: "stealth", fill: black))
  content((2.7, -1.3), $V$)
})
