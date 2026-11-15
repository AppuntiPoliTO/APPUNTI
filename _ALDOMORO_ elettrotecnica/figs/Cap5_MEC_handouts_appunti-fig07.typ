// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 295) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let gcol = rgb("#007a14")
  let R = 2.4
  line((0, 0), (R, 0), stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line((0, 0), (R * calc.cos(120deg), R * calc.sin(120deg)), stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line((0, 0), (R * calc.cos(-120deg), R * calc.sin(-120deg)), stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  content((1.8, -0.2), anchor: "north", text(fill: gcol)[$overline(E)_1$])
  content((-0.9, 1.85), anchor: "west", text(fill: gcol)[$overline(E)_2$])
  content((-0.9, -1.75), anchor: "west", text(fill: gcol)[$overline(E)_3$])
})
