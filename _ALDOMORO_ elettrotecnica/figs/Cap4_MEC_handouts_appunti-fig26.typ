// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1455) con LocalTypst
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

  vsource("e", (0, 0), (0, 2.8))
  content((-0.35, 2.1), sans("+", weight: "bold"))
  wire((0, 2.8), (1.2, 2.8), n: "-o")
  wire((0, 0), (1.2, 0), n: "-o")

  resistor("zl", (1.2, 2.8), (3.4, 2.8), label: (content: $macron(Z)_l = R_l + j X_l$, anchor: "north", distance: 6pt))
  wire((3.4, 2.8), (4.8, 2.8), n: "-o")
  wire((1.2, 0), (4.8, 0), n: "-o")

  line((3.5, 2.8), (4.0, 2.8), mark: (end: "stealth", fill: red, stroke: red))
  content((3.75, 2.35), text(fill: red)[$I'$])

  // Condensatore C in parallelo prima dei morsetti del carico
  capacitor("c", (4.2, 2.8), (4.2, 0), n: "*-*", label: (content: text(fill: red)[$ thin med thin  C$], anchor: "east", distance: 6pt))

  // Flusso P, Q' prima di C
  content((3.1, 2.0), $P$)
  content((3.1, 0.8), $Q'$)
  bezier((2.7, 1.4), (3.0, 1.4), (2.85, 1.6))
  bezier((3.0, 1.4), (3.4, 1.4), (3.15, 1.2), mark: (end: "stealth", fill: black))

  // Tensione V e corrente I verso il carico
  line((5.0, 0.2), (5.0, 2.6), mark: (end: "stealth", fill: blue, stroke: blue))
  content((5.3, 2), text(fill: blue)[$V$])

  wire((4.8, 2.8), (6.5, 2.8))
  wire((4.8, 0), (6.5, 0))
  line((5.4, 2.8), (6.0, 2.8), mark: (end: "stealth", fill: red, stroke: red))
  content((5.7, 3.2), text(fill: red)[$I$])

  content((5.7, 2.0), $P$)
  content((5.7, 0.8), $Q$)
  bezier((5.2, 1.4), (5.5, 1.4), (5.35, 1.6))
  bezier((5.5, 1.4), (5.9, 1.4), (5.65, 1.2), mark: (end: "stealth", fill: black))

  rect((6.5, -0.3), (8.0, 3.1))
  content((7.25, 1.9), $P_"load"$)
  content((7.25, 0.9), $Q_"load"$)
})
