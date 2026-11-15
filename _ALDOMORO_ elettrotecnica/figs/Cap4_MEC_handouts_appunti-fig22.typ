// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1355) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#canvas({
  import draw: *
  // Freccia P e Q
  rect((0, 1.2), (2.8, 1.8), fill: luma(220), stroke: none)
  rect((0, 0.6), (2.8, 1.2), fill: luma(140), stroke: none)
  line((2.8, 1.8), (2.8, 2.2), (3.5, 1.2), (2.8, 0.2), (2.8, 0.6), fill: luma(180), stroke: gray)
  content((2.2, 1.5), sans("P", weight: "bold"))
  content((2.2, 0.9), text(fill: white, sans("Q", weight: "bold")))
  // Blocco motore stilizzato
  rect((3.6, 0.3), (5.2, 2.1), radius: 0.15)
  content((4.4, 1.2), sans("Motore", size: 9pt, weight: "bold"))
})
