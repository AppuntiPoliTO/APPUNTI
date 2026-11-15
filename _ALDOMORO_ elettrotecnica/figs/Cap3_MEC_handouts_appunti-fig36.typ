// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1687) con LocalTypst
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

  wire((0, 4.5), (7.5, 4.5))
  wire((0, 0), (7.5, 0))

  // Ramo 1: E1 + Z1
  vsource("e1", (0, 0), (0, 2.2), variant: "iec", label: (content: $macron(E)_1$, anchor: "north", distance: 6pt))
  content((0.35, 1.9), sans("+", weight: "bold"))
  line((0.5, 0.6), (0.5, 1.6), stroke: blue + 1pt, mark: (end: "stealth", fill: blue))
  resistor("z1", (0, 2.2), (0, 4.5), variant: "iec", label: (content: $macron(Z)_1$, anchor: "east", distance: 6pt))

  // Ramo 2: Generatore di corrente I2 + Z2
  isource("i2", (2.5, 0), (2.5, 2.2), variant: "iec", label: (content: $macron(I)_2 med thin $, anchor: "west", distance: 6pt))
  line((2.5, 1.8), (2.5, 2.4), stroke: black + 1.2pt, mark: (end: "stealth", fill: black))
  resistor("z2", (2.5, 2.2), (2.5, 4.5), variant: "iec", label: (content: $macron(Z)_2 med thin med $, anchor: "east", distance: 6pt))
  node("A1", (2.5, 4.5), fill: true, stroke: red, label: (content: text(fill: red)[#sans("A", weight: "bold")], anchor: "north", distance: 6pt))
  node("B1", (2.5, 0), fill: true, stroke: red, label: (content: text(fill: red)[#sans("B", weight: "bold")], anchor: "south", distance: 6pt))

  // Freccia V_AB
  bezier((1.6, 0.3), (2.3, 4.3), (1.3, 2.5), stroke: blue + 1pt, mark: (end: "stealth", fill: blue))
  content((1.6, 4.8), text(fill: blue)[$macron(V)_(A B)$])

  // Ramo 3: E3 (verso opposto) + Z3
  vsource("e3", (5.0, 2.2), (5.0, 0), variant: "iec", label: (content: $macron(E)_3$, anchor: "north", distance: 6pt))
  content((5.35, 0.35), sans("+", weight: "bold"))
  line((4.5, 1.6), (4.5, 0.6), stroke: blue + 1pt, mark: (end: "stealth", fill: blue))
  resistor("z3", (5.0, 2.2), (5.0, 4.5), variant: "iec", label: (content: $macron(Z)_3$, anchor: "east", distance: 6pt))
  node("A2", (5.0, 4.5), fill: true, stroke: red, label: (content: text(fill: red)[#sans("A", weight: "bold")], anchor: "north", distance: 6pt))
  node("B2", (5.0, 0), fill: true, stroke: red, label: (content: text(fill: red)[#sans("B", weight: "bold")], anchor: "south", distance: 6pt))

  // Ramo 4: Z4
  resistor("z4", (7.5, 0), (7.5, 4.5), variant: "iec", label: (content: $macron(Z)_4$, anchor: "west", distance: 6pt))
})
