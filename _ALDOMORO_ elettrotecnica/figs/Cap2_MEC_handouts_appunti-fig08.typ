// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 492) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let vsource = zap.vsource.with(variant: "iec")
#let isource = zap.isource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *

  // --- RIGA 1: Generatore di Tensione ---
  content((-2.3, 4.2), align(center)[_Generatore_ \ _Ideale di_ \ _Tensione_])
  vsource("e1", (0, 3.0), (0, 5.4), variant: "iec")
  content((-0.95, 4.2), text(size: 13pt)[$e(t)$])
  content((-0.3, 4.85), sans("+", size: 12pt, weight: "bold"))

  // Freccia nera spessa
  line((1.0, 4.2), (2.2, 4.2), stroke: 7pt + black, mark: (end: "triangle", fill: black, scale: 0.7))

  content((3.3, 4.2), text(size: 13pt)[$e(t) = 0$])
  wire((4.5, 3.0), (4.5, 5.4))
  content((5.8, 4.2), align(center)[_Corto_ \ _Circuito_])

  // --- RIGA 2: Generatore di Corrente ---
  content((-2.3, 1.2), align(center)[_Generatore_ \ _Ideale di_ \ _Corrente_])
  isource("a1", (0, 0.0), (0, 2.4), variant: "iec")
  line((0, 1.75), (0, 2.05), mark: (end: "stealth", fill: black, scale: 0.9))
  content((-0.95, 1.2), text(size: 13pt)[$a(t)$])

  // Freccia nera spessa
  line((1.0, 1.2), (2.2, 1.2), stroke: 7pt + black, mark: (end: "triangle", fill: black, scale: 0.7))

  content((3.3, 1.2), text(size: 13pt)[$a(t) = 0$])
  wire((4.5, 0.0), (4.5, 0.55))
  wire((4.5, 1.85), (4.5, 2.4))
  content((5.8, 1.2), align(center)[_Circuito_ \ _Aperto_])
})
