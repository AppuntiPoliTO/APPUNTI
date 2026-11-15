// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1133) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  set-style(resistor: (variant: "iec"), vsource: (variant: "iec"))

  // Generatore E
  vsource("e", (0, 0), (0, 3.2))
  content((-0.4, 2.5), sans("+", weight: "bold"))
  line((-0.6, 0.7), (-0.6, 2.5), mark: (end: "stealth", fill: black))
  content((-0.95, 1.6), $E$)

  // Ramo superiore e impedenza di linea Z_l
  wire((0, 3.2), (1.5, 3.2))
  line((0.5, 3.2), (1.0, 3.2), mark: (end: "stealth", fill: black))
  content((0.75, 3.55), $I$)

  resistor("zl", (1.5, 3.2), (3.8, 3.2), label: (content: $macron(Z)_l = R_l + j X_l$, anchor: "north", distance: 6pt))
  line((3.5, 3.2), (3.85, 3.2), mark: (end: "stealth", fill: red, stroke: red))

  wire((3.8, 3.2), (6.8, 3.2))
  wire((0, 0), (6.8, 0))

  // Sezione B
  line((1.5, 0), (1.5, 3.2), stroke: (dash: "dashed"))
  content((1.2, 0.4), $B$)
  content((1.0, -0.4), $macron(S)_"gen"$)
  content((2.05, -0.4), $macron(S)_"utl"$)
  bezier((1.0, -0.8), (1.5, -0.8), (1.25, -1.1))
  bezier((1.5, -0.8), (2.0, -0.8), (1.75, -0.5), mark: (end: "stealth", fill: black))

  // Sezione A
  line((3.6, -0), (3.6, 3.2), stroke: (dash: "dashed"))
  content((3.3, 0.4), $A$)
  bezier((3.1, 1.5), (3.6, 1.5), (3.35, 1.8))
  bezier((3.6, 1.5), (4.1, 1.5), (3.85, 1.2), mark: (end: "stealth", fill: black))
  content((4.65, 1.3), $macron(S)_"load"$)

  // Nodi verso il carico 2
  node("n1", (4.0, 3.2))
  node("n2", (5.6, 0))
  wire((4.0, 3.2), (4.0, -1.2))
  wire((5.6, 0), (5.6, -1.2))

  // Carico 2
  rect((3.5, -2.5), (6.1, -1.2))
  content((4.8, -1.85), sans("2", weight: "bold"))
  content((6.7, -1.55), $P_2$)
  content((6.7, -2.15), $Q_2$)

  // Tensione V nota
  line((6.0, 0.15), (6.0, 3.05), mark: (end: "stealth", fill: black))
  content((5.65, 1.6), $V$)

  // Carico 1
  rect((6.8, -0.3), (8.3, 3.5))
  content((7.55, 1.6), sans("1", weight: "bold"))
  content((8.9, 2.2), $P_1$)
  content((8.9, 1.2), $Q_1$)
  content((9.2, 3.3), text(fill: blue)[$V "nota"$])
})
