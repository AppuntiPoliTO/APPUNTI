// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 613) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  line((-0.6, 0), (3.8, 0), mark: (end: "stealth", fill: black))
  content((3.8, -0.35), $"Re"$)
  line((0, -0.6), (0, 2.8), mark: (end: "stealth", fill: black))
  content((-0.45, 2.7), $"Im"$)

  let a1 = 18deg
  let r1 = 2.6
  let a2 = 48deg
  let r2 = 2.2

  // Vettore z1(t)
  line((0, 0), (r1 * calc.cos(a1), r1 * calc.sin(a1)), stroke: (paint: rgb("#006633"), thickness: 1.4pt))
  circle((r1 * calc.cos(a1), r1 * calc.sin(a1)), radius: 0.05, fill: rgb("#006633"))
  content((r1 * calc.cos(a1) + 0.5, r1 * calc.sin(a1) + 0.15), text(fill: rgb("#006633"))[$macron(z)_1(t)$])
  arc((1.6, 0), start: 0deg, stop: a1, radius: 1.6, stroke: (paint: rgb("#006633")))
  content((2.4, 0.3), text(fill: rgb("#006633"), size: 9pt)[$omega t + phi_1$])

  // Vettore z2(t)
  line((0, 0), (r2 * calc.cos(a2), r2 * calc.sin(a2)), stroke: (paint: red, thickness: 1.4pt))
  circle((r2 * calc.cos(a2), r2 * calc.sin(a2)), radius: 0.05, fill: red)
  content((r2 * calc.cos(a2) + 0.45, r2 * calc.sin(a2) + 0.2), text(fill: red)[$macron(z)_2(t)$])
  arc((0.8, 0), start: 0deg, stop: a2, radius: 0.8, stroke: (paint: red))
  content((0.7, 1.6), text(fill: red, size: 9pt)[$omega t + phi_2$])
})
