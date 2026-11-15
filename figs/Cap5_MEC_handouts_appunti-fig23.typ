// Figura estratta da Cap5_MEC_handouts_appunti.typ (riga 1076) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  let R_E = 2.8
  let R_I = 2.2
  let phi = 22deg
  let gcol = rgb("#777777")

  // Archi di sfasamento phi
  arc((0.9, 0), start: 0deg, stop: -phi, radius: 0.9, stroke: 0.75pt)
  content((1.15, -0.22), anchor: "west", $varphi$)

  arc((0.9 * calc.cos(-120deg), 0.9 * calc.sin(-120deg)), start: -120deg, stop: -120deg - phi, radius: 0.9, stroke: 0.75pt)
  content((-0.65, -0.95), anchor: "east", $varphi$)

  arc((0.9 * calc.cos(120deg), 0.9 * calc.sin(120deg)), start: 120deg, stop: 120deg - phi, radius: 0.9, stroke: 0.75pt)
  content((-0.35, 1.15), anchor: "east", $varphi$)

  // Fasori tensione (nero)
  line((0, 0), (R_E, 0), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line((0, 0), (R_E * calc.cos(-120deg), R_E * calc.sin(-120deg)), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))
  line((0, 0), (R_E * calc.cos(120deg), R_E * calc.sin(120deg)), stroke: (paint: black, thickness: 1.8pt), mark: (end: "stealth", fill: black, scale: 1.1))

  // Fasori corrente (grigio)
  line((0, 0), (R_I * calc.cos(-phi), R_I * calc.sin(-phi)), stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line((0, 0), (R_I * calc.cos(-120deg - phi), R_I * calc.sin(-120deg - phi)), stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))
  line((0, 0), (R_I * calc.cos(120deg - phi), R_I * calc.sin(120deg - phi)), stroke: (paint: gcol, thickness: 1.6pt), mark: (end: "stealth", fill: gcol, scale: 1.1))

  content((R_E - 0.2, 0.2), anchor: "south", $overline(E)_1$)
  content((R_E * calc.cos(-120deg) - 0.15, R_E * calc.sin(-120deg) + 0.1), anchor: "east", $overline(E)_2$)
  content((R_E * calc.cos(120deg) - 0.15, R_E * calc.sin(120deg) + 0.1), anchor: "south", $overline(E)_3$)

  content((R_I * calc.cos(-phi) + 0.1, R_I * calc.sin(-phi) + 0.15), anchor: "south", text(fill: gcol)[$overline(I)_1$])
  content((R_I * calc.cos(-120deg - phi) - 0.1, R_I * calc.sin(-120deg - phi) + 0.2), anchor: "south", text(fill: gcol)[$overline(I)_2$])
  content((R_I * calc.cos(120deg - phi) - 0.1, R_I * calc.sin(120deg - phi) + 0.15), anchor: "south", text(fill: gcol)[$overline(I)_3$])
})
