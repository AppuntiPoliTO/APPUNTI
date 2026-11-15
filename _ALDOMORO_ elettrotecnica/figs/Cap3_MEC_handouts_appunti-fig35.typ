// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1656) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

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

  vsource("eth", (0, 0.6), (0, 2.6), variant: "iec", stroke: red, label: (content: text(fill: red)[$macron(E)_"TH"$], anchor: "north", distance: 8pt))
  content((0.4, 2.2), text(fill: red)[#sans("+", weight: "bold")])

  resistor("zth", (0, 2.6), (3.2, 2.6), variant: "iec", stroke: red, label: (content: text(fill: red)[$macron(Z)_"TH"$], anchor: "south", distance: 8pt))
  wire((0, 0.6), (3.2, 0.6), stroke: red)

  node("A", (3.2, 2.6), fill: false, stroke: red, label: (content: text(fill: red)[#sans("A", weight: "bold")], anchor: "south", distance: 6pt))
  node("B", (3.2, 0.6), fill: false, stroke: red, label: (content: text(fill: red)[#sans("B", weight: "bold")], anchor: "north", distance: 6pt))

  wire((3.2, 2.6), (4.5, 2.6))
  resistor("u", (4.5, 2.6), (4.5, 0.6), variant: "iec")
  wire((4.5, 0.6), (3.2, 0.6))
})
