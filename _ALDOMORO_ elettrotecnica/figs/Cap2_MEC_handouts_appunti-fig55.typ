// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2718) con LocalTypst
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

  // Generatore E e resistenza interna R
  vsource("e", (0, 0), (0, 3), label: (content: $E$, anchor: "east", distance: 6pt))
  resistor("r", (0, 3), (3.5, 3), label: (content: $R$, anchor: "south", distance: 6pt))
  wire((0, 0), (3.5, 0))

  // Nodi interni ed esterni A e B
  node("n1", (0, 3), fill: false)
  node("n2", (0, 0), fill: false)
  node("A", (3.5, 3), fill: false, label: (content: sans("A", weight: "bold", size: 10pt), anchor: "north", distance: 5pt))
  node("B", (3.5, 0), fill: false, label: (content: sans("B", weight: "bold", size: 10pt), anchor: "south", distance: 5pt))

  // Segno + e freccia blu di E
  content((0.45, 2.3), sans("+", weight: "bold"))
  line((0.65, 0.8), (0.65, 2.1), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))

  // Freccia curva blu su R
  bezier((2.3, 3.65), (1.1, 3.65), (1.7, 3.95), stroke: blue + 1.2pt, mark: (end: "stealth", fill: blue))

  // Orientamento orario della maglia (arancione)
  bezier((1.5, 1.8), (1.7, 1.0), (2.2, 2.1), stroke: orange + 1.2pt, mark: (end: "stealth", fill: orange))

  // Tensione V e corrente I ai morsetti A-B (rosso)
  line((3.5, 0.2), (3.5, 2.75), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((3.9, 1.8), text(fill: red)[$V$])
  line((3.7, 3), (4.6, 3), stroke: red + 1.2pt, mark: (end: "stealth", fill: red))
  content((4.9, 3), text(fill: red)[$I$])
})
