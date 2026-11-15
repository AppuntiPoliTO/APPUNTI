// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 730) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let R = 2.6
  let p0 = (0, 0)
  let p1 = (R, 0)
  let p2 = (R * calc.cos(-120deg), R * calc.sin(-120deg))
  let p3 = (R * calc.cos(120deg), R * calc.sin(120deg))

  // Stella tensioni di fase
  line(p0, p1, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, p2, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, p3, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))

  // Triangolo tensioni concatenate
  let gcol = rgb("#555555")
  line(p2, p1, stroke: (paint: gcol, thickness: 1.5pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p3, p2, stroke: (paint: gcol, thickness: 1.5pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line(p1, p3, stroke: (paint: gcol, thickness: 1.5pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  content((0.1, 0.25), anchor: "south", $0$)
  content((R + 0.15, 0.05), anchor: "west", $1$)
  content((p2.at(0) - 0.1, p2.at(1) - 0.1), anchor: "north", $2$)
  content((p3.at(0) - 0.1, p3.at(1) + 0.1), anchor: "south", $3$)

  content((1.65, -0.15), anchor: "north", $overline(E)_1$)
  content((-0.6, -1.6), anchor: "west", $overline(E)_2$)
  content((-0.6, 1.5), anchor: "west", $overline(E)_3$)

  content((2.0, -0.55), anchor: "west", $overline(V)_(1 2)$)
  content((-1.4, -1.65), anchor: "east", text(fill: gcol)[$overline(V)_(2 3)$])
  content((-0.2, 1.95), anchor: "south", text(fill: gcol)[$overline(V)_(3 1)$])
})
