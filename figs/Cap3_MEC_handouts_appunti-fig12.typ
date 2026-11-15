// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 650) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let sans(body, size: 11pt, weight: "regular") = text(
  font: ( "Arial", "DejaVu Sans Mono", "Libertinus Serif"),
  size: size,
  weight: weight,
  body
)

#canvas({
  import draw: *
  line((-0.8, 0), (3.5, 0), mark: (end: "stealth", fill: black))
  content((3.2, -0.4), sans($"Re"$, size: 12pt))
  line((0, -0.6), (0, 2.5), mark: (end: "stealth", fill: black))
  content((-0.45, 2.2), sans($"Im"$, size: 12pt))

  let ang = 33deg
  let r = 2.6
  line((0, 0), (r * calc.cos(ang), r * calc.sin(ang)), stroke: (paint: red, thickness: 2pt), mark: (end: "stealth", fill: red))
  content((r * calc.cos(ang) + 0.35, r * calc.sin(ang) + 0.1), text(size: 13pt)[$macron(F)$])
  content((1.0, 1.15), text(size: 12pt)[$F$])

  arc((1.1, 0), start: 0deg, stop: ang, radius: 1.1, stroke: (paint: black, thickness: 1pt), mark: (end: "stealth", fill: black))
  content((1.4, 0.35), text(size: 12pt)[$phi$])
})
