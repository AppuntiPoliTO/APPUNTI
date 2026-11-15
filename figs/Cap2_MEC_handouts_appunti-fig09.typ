// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 532) con LocalTypst
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

  // Nodi A e B
  node("A", (3.5, 3.8), label: (content: sans("A", size: 12pt), anchor: "north", distance: 4pt))
  node("B", (3.5, 0), label: (content: sans("B", size: 12pt), anchor: "south", distance: 4pt))

  // Ramo sinistro
  vsource("e1", (0, 0), (0, 1.8))
  content((-0.75, 1.4), $E_1$)
  content((-0.35, 1.45), sans("+", weight: "bold"))
  wire((0, 1.8), (0, 2.2))
  resistor("r1", (0, 2.2), (0, 3.8), label: (content: $R_1$, anchor: "west", distance: 6pt))
  line((-0.18, 1.65), (-0.18, 2.15), mark: (end: "stealth", fill: black, scale: 0.7))
  content((-0.45, 1.85), $I_1$)

  // Ramo centrale
  wire((3.5, 0), (3.5, 2.2))
  resistor("r3", (3.5, 2.2), (3.5, 3.8), label: (content: $R_3$, anchor: "west", distance: 6pt))
  line((3.35, 2.15), (3.35, 1.65), mark: (end: "stealth", fill: black, scale: 0.7))
  content((3.05, 1.9), $I_3$)

  // Freccia di tensione V3 (da B ad A)
  bezier((3.0, 0.2), (3.0, 3.6), (2.6, 1.9), mark: (end: "stealth", fill: black, scale: 0.8))
  content((2.5, 3.2), $V_3$)

  // Ramo destro
  vsource("e2", (7, 0), (7, 1.8))
  content((7.8, 1.0), $E_2$)
  content((6.55, 1.45), sans("+", weight: "bold"))
  wire((7, 1.8), (7, 2.2))
  resistor("r2", (7, 2.2), (7, 3.8), label: (content: $R_2$, anchor: "west", distance: 6pt))
  line((6.82, 1.65), (6.82, 2.15), mark: (end: "stealth", fill: black, scale: 0.7))
  content((6.45, 1.85), $I_2$)

  // Collegamenti orizzontali
  wire((0, 3.8), (7, 3.8))
  wire((0, 0), (7, 0))

  // Maglie
  rect((0.9, 0.35), (2.5, 2.4), radius: 0.4, stroke: (dash: "densely-dashed", thickness: 0.6pt))
  line((1.8, 0.35), (1.6, 0.35), mark: (end: "stealth", fill: black, scale: 0.6))
  content((1.7, 1.35), sans("MAGLIA 1", size: 8.5pt))

  rect((4.2, 0.35), (5.8, 2.4), radius: 0.4, stroke: (dash: "densely-dashed", thickness: 0.6pt))
  line((5.1, 0.35), (4.9, 0.35), mark: (end: "stealth", fill: black, scale: 0.6))
  content((5.0, 1.35), sans("MAGLIA 2", size: 8.5pt))

  // Tensioni esterne V1 e V2
  bezier((-0.9, 0.2), (-0.9, 3.6), (-1.3, 1.9), mark: (end: "stealth", fill: black, scale: 0.8))
  content((-1.4, 1.9), $V_1$)
  bezier((7.9, 0.2), (7.9, 3.6), (8.3, 1.9), mark: (end: "stealth", fill: black, scale: 0.8))
  content((8.45, 1.9), $V_2$)
})
