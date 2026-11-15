// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2420) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  rect((0, 0), (4.8, 4.0), stroke: 1pt + black)
  content((2.4, 4.4), $|macron(H)|_"dB"$)
  content((2.4, -0.8), $omega / omega_0$)

  for i in (1, 2, 3) {
    line((i * 1.2, 0), (i * 1.2, 4.0), stroke: 0.5pt + gray.lighten(30%))
  }
  content((0, -0.3), $10^(-2)$)
  content((1.2, -0.3), $10^(-1)$)
  content((2.4, -0.3), $10^0$)
  content((3.6, -0.3), $10^1$)
  content((4.8, -0.3), $10^2$)

  for j in (1, 2, 3, 4) {
    line((0, j * 0.8), (4.8, j * 0.8), stroke: 0.5pt + gray.lighten(30%))
  }
  content((-0.4, 0), $-40$)
  content((-0.4, 0.8), $-30$)
  content((-0.4, 1.6), $-20$)
  content((-0.4, 2.4), $-10$)
  content((-0.4, 3.2), $0$)
  content((-0.4, 4.0), $10$)

  // Asintoti tratteggiati
  line((0, 0), (2.4, 3.2), stroke: (dash: "dashed", paint: gray))
  line((2.4, 3.2), (4.8, 3.2), stroke: (dash: "dashed", paint: gray))

  // Curva reale
  line((0, 0), (1.2, 1.6), stroke: 1.5pt + rgb("#d9381e"))
  bezier((1.2, 1.6), (2.4, 2.96), (1.7, 2.27), (2.2, 2.8), stroke: 1.5pt + rgb("#d9381e"))
  bezier((2.4, 2.96), (3.6, 3.2), (2.6, 3.08), (2.9, 3.2), stroke: 1.5pt + rgb("#d9381e"))
  line((3.6, 3.2), (4.8, 3.2), stroke: 1.5pt + rgb("#d9381e"))
  circle((2.4, 2.96), radius: 1.5pt, fill: rgb("#d9381e"), stroke: none)
})
