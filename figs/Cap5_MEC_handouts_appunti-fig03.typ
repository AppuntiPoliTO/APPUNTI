// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 163) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let gcol = rgb("#007a14")
  let rcol = rgb("#e61900")

  let p0 = (0, 0)
  let p1 = (3.4, 0)
  let p2 = (3.9, 1.9)
  let p3 = (2.2, 3.4)
  let p4 = (0.85, 2.2)
  let p5 = (1.35, 0.35)

  line(p0, p1, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p1, p2, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p2, p3, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p3, p4, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p4, p5, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  line(p0, p5, stroke: (paint: rcol, thickness: 2.0pt), mark: (end: "stealth", fill: rcol, scale: 1.2))

  content((2.65, 0.2), anchor: "south", text(fill: gcol)[$overline(E)_1$])
  content((4.05, 1.75), anchor: "west", text(fill: gcol)[$overline(E)_2$])
  content((2.45, 3.35), anchor: "west", text(fill: gcol)[$overline(E)_3$])
  content((1.25, 1.9), anchor: "west", text(fill: gcol)[$overline(E)_4$])
  content((1.45, 0.55), anchor: "west", text(fill: gcol)[$overline(E)_5$])
  content((0.4, 0.9), anchor: "south", text(fill: rcol)[$sum_(k=1)^5 overline(E)_k$])
})
