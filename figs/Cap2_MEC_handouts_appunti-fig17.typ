// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 954) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
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

  // Circuito completo
  vsource("e1a", (0, 0), (0, 1.5))
  content((-0.6, 0.8), $E_1quad $)
  content((0.35, 1.3), sans("+", weight: "bold"))
  resistor("r1a", (0, 1.5), (0, 3.0), label: (content: $R_1$, anchor: "east", distance: 5pt))
  resistor("r3a", (2.0, 0), (2.0, 3.0), label: (content: $R_3$, anchor: "south", distance: 4pt))
  vsource("e2a", (4.0, 0), (4.0, 1.5))
  content((4.65, 0.8), $quad E_2$)
  content((4.35, 1.3), sans("+", weight: "bold"))
  resistor("r2a", (4.0, 1.5), (4.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 5pt))
  wire((0, 3.0), (4.0, 3.0))
  wire((0, 0), (4.0, 0))
  content((2.0, 3.35), sans("A", size: 10pt))
  content((2.0, -0.35), sans("B", size: 10pt))
  line((1.65, 0.3), (1.65, 2.7), mark: (end: "stealth", fill: black, scale: 0.7))
  content((1.2, 1.8), $V_3$)

  // Circuito senza R3 (morsetti A-B aperti)
  vsource("e1b", (7.0, 0), (7.0, 1.5))
  content((6.4, 0.8), $E_1quad $)
  content((7.35, 1.3), sans("+", weight: "bold"))
  resistor("r1b", (7.0, 1.5), (7.0, 3.0), label: (content: $R_1$, anchor: "east", distance: 5pt))
  vsource("e2b", (11.0, 0), (11.0, 1.5))
  content((11.65, 0.8), $quad E_2$)
  content((11.35, 1.3), sans("+", weight: "bold"))
  resistor("r2b", (11.0, 1.5), (11.0, 3.0), label: (content: $R_2$, anchor: "south", distance: 5pt))
  wire((7.0, 3.0), (11.0, 3.0))
  wire((7.0, 0), (11.0, 0))

  wire((9.0, 3.0), (9.0, 2.3))
  circle((9.0, 2.23), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((9.35, 2.23), sans("A", size: 10pt))

  wire((9.0, 0), (9.0, 0.7))
  circle((9.0, 0.77), radius: 0.07, fill: white, stroke: 0.8pt + black)
  content((9.35, 0.77), sans("B", size: 10pt))
})
