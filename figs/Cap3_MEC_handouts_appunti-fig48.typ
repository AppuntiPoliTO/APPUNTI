// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2262) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  // Riquadro grafico Fase: x da 0 a 4.8, y da 0 (-pi/2) a 4.0 (0)
  rect((0, 0), (4.8, 4.0), stroke: 1pt + black)
  content((2.4, 4.4), $angle macron(H)$)
  content((2.4, -0.8), $omega / omega_0$)

  for i in (1, 2, 3) {
    line((i * 1.2, 0), (i * 1.2, 4.0), stroke: 0.5pt + gray.lighten(30%))
  }
  content((0, -0.3), $10^(-2)$)
  content((1.2, -0.3), $10^(-1)$)
  content((2.4, -0.3), $10^0$)
  content((3.6, -0.3), $10^1$)
  content((4.8, -0.3), $10^2$)

  line((0, 2.0), (4.8, 2.0), stroke: 0.5pt + gray.lighten(30%))
  content((-0.4, 4.0), $0$)
  content((-0.45, 2.0), $-frac(pi, 4)$)
  content((-0.45, 0), $-frac(pi, 2)$)

  // Curva di fase
  bezier((0, 3.95), (2.4, 2.0), (1.4, 3.9), (1.9, 2.8), stroke: 1.5pt + rgb("#0d6e38"))
  bezier((2.4, 2.0), (4.8, 0.05), (2.9, 1.2), (3.4, 0.1), stroke: 1.5pt + rgb("#0d6e38"))
  circle((2.4, 2.0), radius: 1.5pt, fill: rgb("#0d6e38"), stroke: none)
})
