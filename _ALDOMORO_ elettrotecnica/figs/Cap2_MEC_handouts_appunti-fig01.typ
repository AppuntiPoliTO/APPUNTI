// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 95) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(zap: (variant: "iec"))

  // Biforcazioni ai nodi esterni
  line((-0.4, 0.5), (0, 0))
  line((-0.4, -0.5), (0, 0))
  line((6.6, 0), (7.0, 0.5))
  line((6.6, 0), (7.0, -0.5))

  // 3 bipoli generici in serie
  resistor("b1", (0, 0), (2.2, 0), n: "o-")
  resistor("b2", (2.2, 0), (4.4, 0))
  resistor("b3", (4.4, 0), (6.6, 0), n: "-o")

  // Frecce di corrente sul filo
  line((0.2, 0), (0.65, 0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((0.4, 0.35), $I$)
  line((2.1, 0), (2.5, 0), mark: (end: "stealth", fill: black, scale: 0.7))
  line((4.3, 0), (4.7, 0), mark: (end: "stealth", fill: black, scale: 0.7))

  // Indicazione di "lato" superiore
  bezier((0.6, 0.5), (6.0, 0.5), (3.3, 1.1))
  content((3.3, 1.15), sans("lato"))

  // Freccia di tensione V inferiore
  bezier((6.2, -0.5), (0.4, -0.5), (3.3, -1.2), mark: (end: "stealth", fill: black))
  content((3.3, -1.2), $V$)
})
