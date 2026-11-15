// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 712) con LocalTypst
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

  // Schema 1: E1 attivo, R1, R3, R2
  node("A1", (2.0, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
  node("B1", (2.0, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
  vsource("e1a", (0, 0), (0, 1.6))
  content((-0.8, 0.8), $E_1$)
  content((0.35, 1.35), sans("+", weight: "bold"))
  resistor("r1a", (0, 1.6), (0, 3.2), label: (content: $R_1$, anchor: "west", distance: 4pt))
  resistor("r3a", (2.0, 0), (2.0, 3.2), label: (content: $R_3 med thin$, anchor: "west", distance: 4pt))
  resistor("r2a", (3.8, 0), (3.8, 3.2), label: (content: $R_2$, anchor: "west", distance: 4pt))
  wire((0, 3.2), (3.8, 3.2))
  wire((0, 0), (3.8, 0))
  line((1.65, 0.3), (1.65, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
  content((1.4, 3.65), $V_3^((E_1))$)

  // Schema 2: Riduzione a Rp
  node("A2", (7.8, 3.2), label: (content: sans("A", size: 10pt), anchor: "north", distance: 4pt))
  node("B2", (7.8, 0), label: (content: sans("B", size: 10pt), anchor: "south", distance: 4pt))
  vsource("e1b", (5.8, 0), (5.8, 1.6))
  content((5, 0.8), $E_1$)
  content((6.15, 1.35), sans("+", weight: "bold"))
  resistor("r1b", (5.8, 1.6), (5.8, 3.2), label: (content: $R_1$, anchor: "west", distance: 4pt))
  resistor("rpb", (7.8, 0.8), (7.8, 3.2), label: (content: $R_p$, anchor: "south", distance: 5pt))
  wire((7.8, 0), (7.8, 0.8))
  line((7.8, 1.1), (7.8, 0.5), mark: (end: "stealth", fill: black, scale: 0.7))
  content((8.3, 0.7), $I_p$)
  wire((5.8, 3.2), (7.8, 3.2))
  wire((5.8, 0), (7.8, 0))
  line((7.4, 0.3), (7.4, 2.9), mark: (end: "stealth", fill: black, scale: 0.7))
  content((7.15, 3.65), $V_3^((E_1))$)

  // Schema 3: Riduzione serie Rs = R1 + Rp
  node("A3", (10.5, 3.2))
  node("B3", (12.8, 0))
  vsource("e1c", (10.5, 0), (10.5, 1.8))
  content((9.7, 0.9), $E_1$)
  content((10.85, 1.5), sans("+", weight: "bold"))
  wire((10.5, 1.8), (10.5, 3.2))
  resistor("rsc", (10.5, 3.2), (12.8, 3.2), label: (content: $R_s$, anchor: "north", distance: 5pt))
  wire((12.8, 3.2), (12.8, 0))
  wire((10.5, 0), (12.8, 0))
  line((12.8, 2.3), (12.8, 1.6), mark: (end: "stealth", fill: black, scale: 0.7))
  content((13.35, 1.95), $I_p$)
  bezier((12.2, 2.85), (11.1, 2.85), (11.65, 2.65), mark: (end: "stealth", fill: black, scale: 0.6))
})
