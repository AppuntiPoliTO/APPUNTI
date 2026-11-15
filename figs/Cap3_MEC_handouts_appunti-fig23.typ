// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1144) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#zap.circuit({
  
  import zap.cetz.draw: *

  // Assi Re e Im
  line((-1.5, 0), (3.2, 0), mark: (end: "stealth", fill: black))
  content((3.1, -0.4), $"Re"$)
  line((0, -0.5), (0, 3.2), mark: (end: "stealth", fill: black))
  content((-0.5, 3.0), $"Im"$)

  // Fasore I (30 gradi)
  line((0, 0), (2.2, 1.27), stroke: 1.2pt + red, mark: (end: "stealth", fill: red))
  content((2.6, 1.35), text(fill: red)[$macron(I)$])

  // Fasore V (120 gradi = 30 + 90)
  line((0, 0), (-1.0, 1.73), stroke: 1.2pt + blue, mark: (end: "stealth", fill: blue))
  content((-1.35, 1.85), text(fill: blue)[$macron(V)$])

  // Simbolo di angolo retto tra I e V
  line((0.35, 0.2), (0.15, 0.55), stroke: 0.8pt + green.darken(30%))
  line((0.15, 0.55), (-0.2, 0.35), stroke: 0.8pt + green.darken(30%))

  // Arco phi_I
  arc((0.9, 0), start: 0deg, stop: 30deg, radius: 0.9, mark: (end: "stealth", fill: black, scale: 0.7))
  content((1.35, 0.35), $phi_I$)

  // Arco phi_V
  arc((0.6, 0), start: 0deg, stop: 120deg, radius: 0.6, mark: (end: "stealth", fill: black, scale: 0.7))
  content((1.1, 1.9), [$phi_V = phi_I + pi / 2$])
})
