// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 683) con LocalTypst
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
  line((-1.8, 0), (3.2, 0), mark: (end: "stealth", fill: black))
  content((2.9, -0.4), sans($"Re"$, size: 12pt))
  line((0, -0.6), (0, 2.8), mark: (end: "stealth", fill: black))
  content((-0.45, 2.5), sans($"Im"$, size: 12pt))

  let ang = 30deg
  let rF = 2.2
  let rFp = 2.6
  let angp = ang + 90deg

  // Fasore F
  line((0, 0), (rF * calc.cos(ang), rF * calc.sin(ang)), stroke: (paint: red, thickness: 2pt), mark: (end: "stealth", fill: red))
  content((rF * calc.cos(ang) + 0.35, rF * calc.sin(ang) + 0.1), text(size: 12pt)[$macron(F)$])

  // Fasore F' = j omega F (ruotato di 90 gradi)
  line((0, 0), (rFp * calc.cos(angp), rFp * calc.sin(angp)), stroke: (paint: red, thickness: 2pt), mark: (end: "stealth", fill: red))
  content((rFp * calc.cos(angp) - 0.35, rFp * calc.sin(angp) - 0.3), text(size: 12pt)[$macron(F)'$])

  // Angolo retto tra F e F'
  let s = 0.28
  let p1 = (s * calc.cos(ang), s * calc.sin(ang))
  let p2 = (s * calc.cos(ang) + s * calc.cos(angp), s * calc.sin(ang) + s * calc.sin(angp))
  let p3 = (s * calc.cos(angp), s * calc.sin(angp))
  line(p1, p2, p3, stroke: (paint: red, thickness: 0.8pt))

  // Archi angoli
  arc((1.1, 0), start: 0deg, stop: ang, radius: 1.1, stroke: (paint: black, thickness: 0.9pt), mark: (end: "stealth", fill: black))
  content((1.35, 0.3), text(size: 11pt)[$phi$])

  arc((0.7, 0), start: 0deg, stop: angp, radius: 0.7, stroke: (paint: black, thickness: 0.9pt), mark: (end: "stealth", fill: black))
  content((0.75, 1.15), text(size: 11pt)[$phi + pi / 2$])
})
