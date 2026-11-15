// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 121) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  let gcol = rgb("#007a14")
  let lengths = (3.3, 2.5, 2.7, 2.2, 2.4)
  let angles = (0deg, 72deg, 144deg, 216deg, 288deg)

  for i in range(5) {
    let ang = angles.at(i)
    let len = lengths.at(i)
    let p_end = (len * calc.cos(ang), len * calc.sin(ang))
    line((0, 0), p_end, stroke: (paint: gcol, thickness: 1.8pt), mark: (end: "stealth", fill: gcol, scale: 1.2))
  }

  arc((1.05, 0), start: 0deg, stop: 72deg, radius: 1.05, stroke: 0.8pt, mark: (end: "stealth", fill: black, scale: 0.8))
  content((1.15, 0.75), anchor: "west", $(2 pi) / 5$)

  content((2.6, 0.25), anchor: "south", text(fill: gcol)[$overline(E)_1$])
  content((0.85, 2.2), anchor: "west", text(fill: gcol)[$overline(E)_2$])
  content((-1.3, 2.05), anchor: "south", text(fill: gcol)[$overline(E)_3$])
  content((-1.0, -1.65), anchor: "north", text(fill: gcol)[$overline(E)_4$])
  content((0.85, -2.2), anchor: "west", text(fill: gcol)[$overline(E)_5$])
})
