// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 521) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  // Assi
  line((-0.8, 0), (4.5, 0), mark: (end: "stealth", fill: black))
  content((4.5, -0.35), $"Re"$)
  line((0, -0.8), (0, 3.2), mark: (end: "stealth", fill: black))
  content((-0.4, 3.0), $"Im"$)

  // Vettore rotante z(t)
  let ang = 32deg
  let r = 3.0
  line((0, 0), (r * calc.cos(ang), r * calc.sin(ang)), stroke: (paint: red, thickness: 1.5pt))
  circle((r * calc.cos(ang), r * calc.sin(ang)), radius: 0.07, fill: red, stroke: red)
  content((r * calc.cos(ang) + 0.6, r * calc.sin(ang) + 0.25), text(fill: red)[$macron(z)(t)$])

  // Arco angolo wt + phi
  arc((1.2, 0), start: 0deg, stop: ang, radius: 1.2, stroke: (paint: rgb("#006633"), thickness: 1pt))
  content((2.3, 0.55), text(fill: rgb("#006633"))[$omega t + phi$])

  // Freccia di rotazione omega
  arc((1.5 * calc.cos(15deg), 1.5 * calc.sin(15deg)), start: 15deg, stop: 65deg, radius: 1.5, stroke: (paint: rgb("#006633"), thickness: 1.2pt), mark: (end: "stealth", fill: rgb("#006633")))
  content((1.4, 2.0), text(fill: rgb("#006633"))[$omega$])
})
