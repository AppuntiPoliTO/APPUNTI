// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 744) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  line((-1.8, 0), (2.2, 0), mark: (end: "stealth", fill: black))
  content((2.2, -0.35), $"Re"$)
  line((0, -1.8), (0, 2.4), mark: (end: "stealth", fill: black))
  content((0.45, 2.2), $"Im"$)

  // Fasore vero nel II quadrante (-0.9, 2.1)
  line((0, 0), (-0.9, 2.1), stroke: (paint: red, thickness: 1.5pt), mark: (end: "stealth", fill: red))
  content((-1.3, 2.1), text(fill: red)[$macron(C)$])
  line((-0.9, 0), (-0.9, 2.1), stroke: (paint: red, dash: "dashed"))
  line((0, 2.1), (-0.9, 2.1), stroke: (paint: red, dash: "dashed"))

  // Fasore errato nel IV quadrante (0.7, -1.6)
  line((0, 0), (0.7, -1.6), stroke: (paint: red, dash: "dotted", thickness: 1.2pt), mark: (end: "stealth", fill: red))

  // Angoli
  arc((0.45, 0), start: 0deg, stop: 113.2deg, radius: 0.45, stroke: (paint: red))
  content((0.8, 0.8), text(fill: red, size: 9pt)[$-1.166 + pi$])
  arc((0.35, 0), start: 0deg, stop: -66.8deg, radius: 0.35, stroke: (paint: red))
  content((1.1, -0.45), text(fill: red, size: 8pt)[$-1.166 "rad"$])
})
