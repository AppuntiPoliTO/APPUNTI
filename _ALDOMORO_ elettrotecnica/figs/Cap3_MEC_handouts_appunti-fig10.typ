// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 575) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  line((-0.8, 0), (2.2, 0), mark: (end: "stealth", fill: black))
  content((2.2, -0.35), $"Re"$)
  line((0, -0.8), (0, 2.2), mark: (end: "stealth", fill: black))
  content((-0.45, 2.1), $"Im"$)

  // Vettore c = j sull'asse immaginario
  line((0, 0), (0, 1.3), stroke: (paint: red, thickness: 2pt), mark: (end: "stealth", fill: red))
  content((-0.4, 1.2), text(fill: red)[$macron(c) = j$])

  // Angolo retto pi/2
  line((0.25, 0), (0.25, 0.25), (0, 0.25), stroke: (paint: rgb("#006633"), thickness: 1pt))
  content((0.65, 0.5), text(fill: rgb("#006633"))[$pi / 2$])
})
