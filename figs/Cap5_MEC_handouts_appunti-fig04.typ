// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 193) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let gcol = rgb("#007a14")
  let L = 2.4

  let q0 = (0, 0)
  let q1 = (L, 0)
  let q2 = (L + L * calc.cos(72deg), L * calc.sin(72deg))
  let q3 = (L / 2, L * calc.sin(72deg) + L * calc.sin(36deg))
  let q4 = (-L * calc.cos(72deg), L * calc.sin(72deg))

  line(q0, q1, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(q1, q2, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(q2, q3, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(q3, q4, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(q4, q0, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  arc((L - 1.0, 0), start: 180deg, stop: 72deg, radius: 1.0, stroke: 0.8pt)
  content((L - 0.8, 1.15), anchor: "south", $(2 pi) / 5$)

  content((1.8, -0.2), anchor: "north", text(fill: gcol)[$overline(E)_1$])
  content((3.1, 1.75), anchor: "west", text(fill: gcol)[$overline(E)_2$])
  content((1.65, 3.45), anchor: "west", text(fill: gcol)[$overline(E)_3$])
  content((0.0, 2.95), anchor: "east", text(fill: gcol)[$overline(E)_4$])
  content((-0.25, 0.55), anchor: "east", text(fill: gcol)[$overline(E)_5$])
})
