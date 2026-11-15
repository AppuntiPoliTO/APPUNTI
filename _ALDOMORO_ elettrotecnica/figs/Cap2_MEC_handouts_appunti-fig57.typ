// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2782) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
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
  set-style(resistor: (variant: "ieee"), vsource: (variant: "ieee"))

  vsource("e", (0, 0), (0, 3), label: (content: $E$, anchor: "east", distance: 6pt))
  resistor("r", (0, 3), (3.2, 3), label: (content: $R$, anchor: "south", distance: 6pt))
  wire((0, 0), (3.2, 0))

  // Ramo di cortocircuito
  wire((3.2, 3), (4.3, 3), (4.3, 0), (3.2, 0))

  node("n1", (0, 3), fill: false)
  node("n2", (0, 0), fill: false)
  node("A", (3.2, 3), fill: false, label: (content: sans("A", weight: "bold", size: 10pt), anchor: "north", distance: 5pt))
  node("B", (3.2, 0), fill: false, label: (content: sans("B", weight: "bold", size: 10pt), anchor: "south", distance: 5pt))

  content((0.45, 2.3), sans("+", weight: "bold"))
  line((0.65, 0.8), (0.65, 2.1), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))
  bezier((2.2, 3.65), (1.0, 3.65), (1.6, 3.95), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))
  bezier((1.4, 1.8), (1.6, 1.0), (2.1, 2.1), stroke: orange + 1.2pt, mark: (end: "stealth", fill: orange))

  line((3.2, 0.2), (3.2, 2.75), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((3.55, 1.9), text(fill: red)[$V$])

  // Corrente di cortocircuito
  line((4.3, 2.0), (4.3, 1.3), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((5.1, 3.3), sans("cto cto", size: 9pt, weight: "bold"))
  content((5.25, 1.7), text(fill: red)[$I_"cc", V = 0$])
})
