// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 880) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Diagramma fasoriale del resistore
  line((-0.6, 0), (3.6, 0), mark: (end: "stealth", fill: black))
  content((3.4, -0.4), $italic("Re")$)
  line((0, -0.6), (0, 2.6), mark: (end: "stealth", fill: black))
  content((-0.45, 2.4), $italic("Im")$)

  let ang = 34deg
  let rV = 2.0
  let rI = 3.1

  // Fasore I
  line((0, 0), (rI * calc.cos(ang), rI * calc.sin(ang)), stroke: (paint: black, thickness: 1.5pt), mark: (end: "stealth", fill: black))
  content((rI * calc.cos(ang) - 0.35, rI * calc.sin(ang) + 0.3), text(size: 12pt)[$macron(I)$])

  // Fasore V (collineare)
  line((0, 0), (rV * calc.cos(ang), rV * calc.sin(ang)), stroke: (paint: black, thickness: 1.5pt), mark: (end: "stealth", fill: black))
  content((rV * calc.cos(ang) - 0.35, rV * calc.sin(ang) + 0.25), text(size: 12pt)[$macron(V)$])

  // Arco angolo phi_I = phi_V
  arc((1.15, 0), start: 0deg, stop: ang, radius: 1.15, stroke: (paint: black, thickness: 0.8pt), mark: (end: "stealth", fill: black))
  content((2.15, 0.45), text(size: 11pt)[$phi_I = phi_V$])
})
