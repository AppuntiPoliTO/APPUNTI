// Figura estratta da Cap3_1_MEC_handouts_appunti.typ (riga 656) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Grafico |Z| vs omega
  line((0, -0.3), (0, 3.5), mark: (end: "stealth", fill: black))
  line((-0.3, 0), (5.0, 0), mark: (end: "stealth", fill: black))

  content((-0.5, 3.3), $|macron(Z)|$)
  content((5.0, -0.4), $omega$)

  // Minimo a R per omega = omega_0
  line((2.3, -0.1), (2.3, 0.1))
  content((2.3, -0.4), $omega_0$)

  line((0, 0.9), (2.3, 0.9), stroke: (dash: "dashed", paint: rgb("#005bb5")))
  content((-0.4, 0.9), $R$)

  // Curva a V di |Z|
  bezier((0.8, 3.2), (2.3, 0.9), (1.3, 1.8), (1.9, 0.9), stroke: 1.5pt + rgb("#005bb5"))
  bezier((2.3, 0.9), (4.2, 3.2), (2.7, 0.9), (3.4, 2.0), stroke: 1.5pt + rgb("#005bb5"))
})
