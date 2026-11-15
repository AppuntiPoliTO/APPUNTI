// Figura estratta da Cap3_1_MEC_handouts_appunti.typ (riga 456) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Assi cartesiani
  line((0, -0.3), (0, 3.2), mark: (end: "stealth", fill: black))
  line((-0.3, 0), (5.5, 0), mark: (end: "stealth", fill: black))

  content((-0.5, 3.0), $|macron(H)|$)
  content((5.5, -0.4), $omega / omega_0$)

  // Asintoto orizzontale a 1
  line((0, 2.2), (5.0, 2.2), stroke: (dash: "dashed", paint: black))
  content((-0.35, 2.2), $1$)

  line((2.0, -0.1), (2.0, 0.1))
  content((2.0, -0.4), $1$)

  line((0, 1.55), (2.0, 1.55), stroke: (dash: "dashed", paint: gray))
  line((2.0, 0), (2.0, 1.55), stroke: (dash: "dashed", paint: gray))
  content((-0.55, 1.55), $1 / sqrt(2)$)

  // Curva del modulo passa-alto
  bezier((0, 0), (2.0, 1.55), (0.8, 0.05), (1.5, 0.9), stroke: 1.5pt + rgb("#d9381e"))
  bezier((2.0, 1.55), (5.0, 2.15), (2.5, 2.0), (3.5, 2.15), stroke: 1.5pt + rgb("#d9381e"))
})
