// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 656) con LocalTypst
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
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
  scale(0.78)

  node("A", (3.5, 3.8), label: (content: sans("A", size: 10pt), anchor: "north", distance: 3pt))
  node("B", (3.5, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 3pt))

  // Ramo 1 (E1 passivato -> corto circuito)
  wire((0, 0), (0, 2.2))
  resistor("r1", (0, 2.2), (0, 3.8), label: (content: $R_1$, anchor: "south", distance: 5pt))
  line((-0.2, 1.6), (-0.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
  content((-0.6, 1.85), $I''_1$)
  bezier((-0.35, 3.5), (-0.35, 2.3), (-0.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
  content((-0.9, 2.9), $V''_1$)

  // Ramo 3
  wire((3.5, 0), (3.5, 1.2))
  resistor("r3", (3.5, 1.2), (3.5, 2.8))
  wire((3.5, 2.8), (3.5, 3.8))
  line((3.7, 3.6), (3.7, 3.0), mark: (end: "stealth", fill: black, scale: 0.6))
  content((4.15, 3.3), $I''_3$)
  bezier((3.15, 0.3), (3.15, 3.5), (2.9, 1.9), mark: (end: "stealth", fill: black, scale: 0.7))
  content((2.85, 3.0), $V''_3$)

  // Ramo 2 (E2 attivo)
  vsource("e2", (7, 0), (7, 1.8))
  content((7.75, 0.8), $E_2$)
  content((6.6, 1.5), sans("+", weight: "bold"))
  wire((7, 1.8), (7, 2.2))
  resistor("r2", (7, 2.2), (7, 3.8), label: (content: $R_2$, anchor: "south", distance: 5pt))
  line((7.2, 1.6), (7.2, 2.1), mark: (end: "stealth", fill: black, scale: 0.6))
  content((7.65, 1.85), $I''_2$)
  bezier((6.65, 3.5), (6.65, 2.3), (6.35, 2.9), mark: (end: "stealth", fill: black, scale: 0.6))
  content((6.0, 2.9), $V''_2$)

  wire((0, 3.8), (7, 3.8))
  wire((0, 0), (7, 0))

  rect((0.9, 0.35), (2.5, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
  line((1.5, 2.4), (1.7, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
  content((1.7, 1.35), sans("MAGLIA 1", size: 7pt))

  rect((4.2, 0.35), (5.8, 2.4), radius: 0.35, stroke: (dash: "densely-dashed", thickness: 0.5pt))
  line((4.8, 2.4), (5.0, 2.4), mark: (end: "stealth", fill: black, scale: 0.5))
  content((5.0, 1.35), sans("MAGLIA 2", size: 7pt))
})
