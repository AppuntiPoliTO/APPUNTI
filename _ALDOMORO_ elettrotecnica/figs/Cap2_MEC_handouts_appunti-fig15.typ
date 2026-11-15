// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 905) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  rect((0, 0), (2.6, 2.4), fill: luma(238), stroke: 0.8pt + black)
  content((1.3, 1.2), align(center)[#sans("Rete", size: 11pt) \ #sans("Lineare", size: 11pt)])

  wire((2.6, 2.0), (3.4, 2.0))
  wire((2.6, 0.4), (3.4, 0.4))
  circle((3.45, 2.0), radius: 0.06, fill: white, stroke: 0.8pt + black)
  circle((3.45, 0.4), radius: 0.06, fill: white, stroke: 0.8pt + black)
  content((3.4, 2.3), sans("A", size: 11pt))
  content((3.4, 0.7), sans("B", size: 11pt))

  bezier((3.8, 0.45), (3.8, 1.95), (4.1, 1.2), mark: (end: "stealth", fill: black, scale: 0.7))
  content((4.5, 1.2), $E_"eq"$)
})
