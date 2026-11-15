// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 764) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circ = sym.degree

#canvas({
  import draw: *
  let R = 3.2
  let p0 = (0, 0)
  let p1 = (R, 0)
  let p2 = (R * calc.cos(-120deg), R * calc.sin(-120deg))
  let pH = ((p1.at(0) + p2.at(0)) / 2, (p1.at(1) + p2.at(1)) / 2)

  line(p0, p1, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, p2, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p2, p1, stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line(p0, pH, stroke: 0.9pt)

  // Angolo 30 gradi al vertice 1
  arc((R - 0.85, 0), start: 180deg, stop: 210deg, radius: 0.85, stroke: 0.8pt)
  content((R - 0.95, -0.28), anchor: "east", $30 circ$)

  // Angolo 90 gradi in H
  arc((pH.at(0) + 0.35 * calc.cos(30deg), pH.at(1) + 0.35 * calc.sin(30deg)), start: 30deg, stop: 120deg, radius: 0.35, stroke: 0.8pt)
  content((pH.at(0) + 0.25, pH.at(1) + 0.55), anchor: "south", $90 circ$)

  content((-0.15, 0.15), anchor: "south", $0$)
  content((R + 0.15, 0.1), anchor: "west", $1$)
  content((p2.at(0) - 0.1, p2.at(1) - 0.1), anchor: "north", $2$)
  content((pH.at(0) + 0.15, pH.at(1) - 0.15), anchor: "north", $H$)

  content((R - 0.4, 0.2), anchor: "south", $overline(E)_1$)
  content((p2.at(0) - 0.15, p2.at(1) + 0.85), anchor: "east", $overline(E)_2$)
  content((R - 0.5, -0.55), anchor: "north", $overline(V)_(1 2)$)
})
