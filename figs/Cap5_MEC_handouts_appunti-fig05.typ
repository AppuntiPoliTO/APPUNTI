// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 230) con LocalTypst
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
  // Fase 1: Produzione
  rect((0, 0), (3.8, 2.6), stroke: (paint: rgb("#2b5c8f"), thickness: 1.2pt), radius: 0.15)
  content((1.9, 2.2), sans("PRODUZIONE", weight: "bold", size: 9.5pt))
  content((1.9, 1.4), align(center)[#sans("Centrale elettrica", size: 8.5pt)\ #sans("(Alternatore + Trasf. elevatore)", size: 8pt)])

  line((3.8, 1.3), (4.8, 1.3), stroke: 1.2pt, mark: (end: "stealth", fill: black))

  // Fase 2: Trasmissione
  rect((4.8, 0), (8.6, 2.6), stroke: (paint: rgb("#2b5c8f"), thickness: 1.2pt), radius: 0.15)
  content((6.7, 2.2), sans("TRASMISSIONE", weight: "bold", size: 9.5pt))
  content((6.7, 1.4), align(center)[#sans("Linea ad Alta Tensione (AT)", size: 8.5pt)\ #sans("e Trasf. AT/MT", size: 8pt)])

  line((8.6, 1.3), (9.6, 1.3), stroke: 1.2pt, mark: (end: "stealth", fill: black))

  // Fase 3: Distribuzione
  rect((9.6, 0), (13.6, 2.6), stroke: (paint: rgb("#2b5c8f"), thickness: 1.2pt), radius: 0.15)
  content((11.6, 2.2), sans("DISTRIBUZIONE", weight: "bold", size: 9.5pt))
  content((11.6, 1.4), align(center)[#sans("Linea a Media Tensione (MT),", size: 8.5pt)\ #sans("Trasf. MT/BT e Utenze BT", size: 8pt)])
})
