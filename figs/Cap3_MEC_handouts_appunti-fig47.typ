// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2221) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  // Riquadro grafico Modulo dB: x da 0 a 4 (4 decadi: 10^-2 .. 10^2), y da 0 a 5 (-40 dB .. +10 dB)
  rect((0, 0), (4.8, 4.0), stroke: 1pt + black)
  content((2.4, 4.4), $|macron(H)|_"dB"$)
  content((2.4, -0.8), $omega / omega_0$)

  // Griglia verticale (decadi: x = 0, 1.2, 2.4, 3.6, 4.8)
  for i in (1, 2, 3) {
    line((i * 1.2, 0), (i * 1.2, 4.0), stroke: 0.5pt + gray.lighten(30%))
  }
  content((0, -0.3), $10^(-2)$)
  content((1.2, -0.3), $10^(-1)$)
  content((2.4, -0.3), $10^0$)
  content((3.6, -0.3), $10^1$)
  content((4.8, -0.3), $10^2$)

  // Griglia orizzontale (dB: -40 -> 0, -30 -> 0.8, -20 -> 1.6, -10 -> 2.4, 0 -> 3.2, 10 -> 4.0)
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
  line((0, 3.2), (2.4, 3.2), stroke: (dash: "dashed", paint: gray))
  line((2.4, 3.2), (4.8, 0), stroke: (dash: "dashed", paint: gray))

  // Curva reale (-3 dB a x=2.4 -> y = 3.2 - 0.24 = 2.96)
  line((0, 3.2), (1.2, 3.2), stroke: 1.5pt + rgb("#0d6e38"))
  bezier((1.2, 3.2), (2.4, 2.96), (1.9, 3.2), (2.2, 3.08), stroke: 1.5pt + rgb("#0d6e38"))
  bezier((2.4, 2.96), (3.6, 1.6), (2.6, 2.8), (3.1, 2.27), stroke: 1.5pt + rgb("#0d6e38"))
  line((3.6, 1.6), (4.8, 0), stroke: 1.5pt + rgb("#0d6e38"))
  circle((2.4, 2.96), radius: 1.5pt, fill: rgb("#0d6e38"), stroke: none)
})
