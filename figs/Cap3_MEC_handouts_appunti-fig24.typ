// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 1176) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }

#zap.circuit({
  
  import zap.cetz.draw: *

  // Riquadro e griglia del grafico temporale
  rect((0, -2), (4.8, 2), stroke: 0.6pt + black)
  line((0, 0), (4.8, 0), stroke: 0.6pt + black)

  for x in (1.2, 2.4, 3.6) {
    line((x, -2), (x, 2), stroke: (paint: gray.lighten(30%), thickness: 0.5pt))
    line((x, -2.1), (x, -2), stroke: 0.6pt + black)
    line((x, 2), (x, 2.1), stroke: 0.6pt + black)
  }
  for y in (-1.5, -1.0, -0.5, 0.5, 1.0, 1.5) {
    line((0, y), (4.8, y), stroke: (paint: gray.lighten(30%), thickness: 0.5pt))
  }

  content((0, -2.35), $0$)
  content((1.2, -2.35), $T / 4$)
  content((2.4, -2.35), $T / 2$)
  content((3.6, -2.35), $3 T / 4$)
  content((4.8, -2.35), $T$)

  // Curva i(t) puntinata
  let pts-i = range(0, 61).map(k => {
    let x = k * 4.8 / 60
    let angle = (x / 4.8) * 2 * calc.pi - 1.05
    (x, 1.25 * calc.cos(angle))
  })
  line(..pts-i, stroke: (paint: black, thickness: 1.1pt, dash: "dotted"))
  content((1.8, 0.9), $i(t)$)

  // Curva v(t) tratteggiata (in anticipo di pi/2 rispetto a i(t))
  let pts-v = range(0, 61).map(k => {
    let x = k * 4.8 / 60
    let angle = (x / 4.8) * 2 * calc.pi - 1.05 + calc.pi / 2
    (x, 1.5 * calc.cos(angle))
  })
  line(..pts-v, stroke: (paint: black, thickness: 1.1pt, dash: "dashed"))
  content((1.8, -1.0), $v(t)$)
})
