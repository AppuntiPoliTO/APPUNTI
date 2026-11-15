// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1318) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let resistor = zap.resistor.with(variant: "ieee")
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

  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"), isource: (variant: "iec"))

  wire((0, 4.8), (9.2, 4.8))
  wire((0, 0), (9.2, 0))

  // Ellisse verde attorno al nodo A (supernodo per LKC)
  bezier((-0.6, 4.8), (8.4, 4.8), (3.9, 5.7), stroke: (paint: rgb("#1b5e20"), thickness: 2pt))
  bezier((-0.6, 4.8), (8.4, 4.8), (3.9, 4.1), stroke: (paint: rgb("#1b5e20"), thickness: 2pt))

  // Ramo 1 con freccia blu su E1
  vsource("e1", (0, 0), (0, 2.2), label: (content: $E_1$, anchor: "east", distance: 6pt))
  content((-0.35, 1.85), sans("+", size: 12pt, weight: "bold"))
  line((-1.1, 0.3), (-1.1, 2.0), stroke: (paint: blue, thickness: 1.5pt), mark: (end: "stealth", fill: blue))
  resistor("r1", (0, 2.2), (0, 4.2), label: (content: $R_1$, anchor: "east", distance: 6pt))
  wire((0, 4.2), (0, 4.8))
  line((-0.2, 4.0), (-0.2, 4.7), mark: (end: "stealth", fill: black, scale: 0.8))
  content((-0.55, 4.35), $I_1$)
  bezier((0.35, 3.8), (0.35, 2.5), (0.7, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

  // Ramo 2 con freccia blu su E2
  node("nB2", (2.5, 0))
  node("nA2", (2.5, 4.8))
  vsource("e2", (2.5, 0), (2.5, 2.2), label: (content: $E_2$, anchor: "east", distance: 6pt))
  content((2.15, 0.25), sans("+", size: 12pt, weight: "bold"))
  line((3.1, 2.0), (3.1, 0.3), stroke: (paint: blue, thickness: 1.5pt), mark: (end: "stealth", fill: blue))
  resistor("r2", (2.5, 2.2), (2.5, 4.2), label: (content: $R_2$, anchor: "east", distance: 6pt))
  wire((2.5, 4.2), (2.5, 4.8))
  line((2.3, 4.7), (2.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((1.95, 4.35), $I_2$)
  bezier((2.85, 2.5), (2.85, 3.8), (3.2, 3.15), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

  // Ramo 3
  node("nB3", (5.0, 0))
  node("nA3", (5.0, 4.8))
  isource("a3", (5.0, 0), (5.0, 2.2), label: (content: $A_3$, anchor: "east", distance: 6pt))
  line((5.0, 1.8), (5.0, 2.15), mark: (end: "stealth", fill: black, scale: 0.9))
  resistor("r3", (5.0, 2.2), (5.0, 4.2), label: (content: $R_3$, anchor: "east", distance: 6pt))
  wire((5.0, 4.2), (5.0, 4.8))

  // Ramo 4
  node("nB4", (7.5, 0))
  node("nA4", (7.5, 4.8))
  wire((7.5, 0), (7.5, 1.2))
  resistor("r4", (7.5, 1.2), (7.5, 3.6), label: (content: $R_4 med thin$, anchor: "west", distance: 6pt))
  wire((7.5, 3.6), (7.5, 4.8))
  line((7.3, 4.7), (7.3, 4.0), mark: (end: "stealth", fill: black, scale: 0.8))
  content((6.95, 4.35), $I_4$)
  bezier((7.1, 1.7), (7.1, 3.0), (6.75, 2.35), stroke: 0.6pt, mark: (end: "stealth", fill: black, scale: 0.7))

  // Morsetti A e B
  node("A", (9.2, 4.8), label: (content: sans("A", size: 13pt), anchor: "south", distance: 5pt))
  node("B", (9.2, 0), label: (content: sans("B", size: 13pt), anchor: "south", distance: 5pt))
  bezier((9.5, 0.3), (9.5, 4.5), (10.1, 2.4), stroke: 0.7pt, mark: (end: "stealth", fill: black, scale: 0.9))
  content((10.5, 3.6), $V_(A B)$)
})
