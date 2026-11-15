// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 1816) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let vsource = zap.vsource.with(variant: "iec")
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#zap.circuit({
  
  import zap.cetz.draw: *
  
  vsource("e", (0, 0), (0, 2.8), variant: "iec", label: (content: $E$, anchor: "north", distance: 6pt))
  content((-0.25, 2.1), sans("+", weight: "bold"))
  
  wire((0, 2.8), (0.8, 2.8))
  // interruttore che si chiude a t = 0
  line((0.8, 2.8), (1.9, 3.2), stroke: 0.8pt)
  bezier((1.2, 3.3), (1.4, 2.65), (1.35, 3.0), mark: (end: "stealth", fill: black), stroke: 0.6pt)
  content((1.65, 2.25), $t = 0$)
  
  wire((1.9, 2.8), (2.7, 2.8))
  wire((0, 0), (2.7, 0))
  
  node("P", (2.7, 2.8), fill: false, label: (content: sans("P"), anchor: "south", distance: 4pt))
  node("Q", (2.7, 0), fill: false, label: (content: sans("Q"), anchor: "north", distance: 4pt))
  
  // Freccia di tensione tra Q e P
  bezier((2.9, 0.2), (2.9, 2.6), (3.3, 1.4), mark: (end: "stealth", fill: black), stroke: 0.6pt)
})
