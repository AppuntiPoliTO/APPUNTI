// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 774) con LocalTypst
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
  set-style(resistor: (variant: "ieee"), vsource: (variant: "iec"))
  scale(0.85)

  // Schema 1: E1 passivato, R1, R3, R2, E2
  node("A1", (2.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
  node("B1", (2.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
  resistor("r1a", (0, 0), (0, 3.2), label: (content: $R_1$, anchor: "north", distance: 4pt))
  resistor("r3a", (2.0, 0), (2.0, 3.2), label: (content: $R_3$, anchor: "south", distance: 4pt))
  vsource("e2a", (4.0, 0), (4.0, 1.6))
  content((4.8, 0.8), $E_2$)
  content((4.4, 1.35), sans("+", weight: "bold"))
  resistor("r2a", (4.0, 1.6), (4.0, 3.2), label: (content: $R_2$, anchor: "south", distance: 4pt))
  wire((0, 3.2), (4.0, 3.2))
  wire((0, 0), (4.0, 0))
  line((1.65, 0.3), (1.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
  content((1.4, 3.65), $V_3^((E_2))$)

  // Schema 2: Rp2 in serie con R2 ed E2
  node("A2", (7.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
  node("B2", (7.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
  resistor("rp2", (7.0, 1.0), (7.0, 3.2), label: (content: $R_(p 2)$, anchor: "north", distance: 10pt))
  wire((7.0, 0), (7.0, 1.0))
  line((7.0, 1.2), (7.0, 0.6), mark: (end: "stealth", fill: black, scale: 0.7))
  content((7.55, 0.85), $I_(p 2)$)
  line((6.6, 0.3), (6.6, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
  content((6.5, 3.65), $V_3^((E_2))$)

  vsource("e2b", (9.2, 0), (9.2, 1.6))
  content((10.1, 0.8), $E_2$)
  content((9.55, 1.35), sans("+", weight: "bold"))
  line((9.7, 0.3), (9.7, 1.4), mark: (end: "stealth", fill: black, scale: 0.6))
  resistor("r2b", (9.2, 1.6), (9.2, 3.2), label: (content: $R_2$, anchor: "north", distance: 4pt))
  wire((7.0, 3.2), (9.2, 3.2))
  wire((7.0, 0), (9.2, 0))
})
