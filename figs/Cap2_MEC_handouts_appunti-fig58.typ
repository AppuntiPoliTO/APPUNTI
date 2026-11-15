// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2814) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#canvas({
  import draw: *
  // Assi cartesiani
  line((-0.4, 0), (4.2, 0), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  line((0, -0.6), (0, 3.2), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  content((4.5, -0.2), $I$)
  content((-0.35, 3.0), $V$)

  // Retta caratteristica V = E - R I
  line((-0.4, 2.46), (2.9, -0.35), stroke: orange + 1.5pt)

  // Punti notevoli
  circle((0, 2.12), radius: 0.08, fill: rgb("#006633"), stroke: none)
  content((0.35, 2.3), text(fill: rgb("#006633"))[$E$])
  circle((0.15, 2.2), radius: (0.45, 0.35), stroke: rgb("#006633") + 1pt)
  line((0.55, 2.55), (0.95, 2.95), stroke: rgb("#006633") + 1pt, mark: (end: "stealth", fill: rgb("#006633")))
  content((2.1, 3.3), text(fill: rgb("#006633"))[#sans("circuito aperto", size: 9pt)])

  circle((2.5, 0), radius: 0.08, fill: rgb("#006633"), stroke: none)
  content((2.7, -0.55), text(fill: rgb("#006633"))[$I_"cc" = E / R$])
})
