// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 2608) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  // Grafico R|I| = |V_R| vs omega
  line((0, -0.3), (0, 3.5), mark: (end: "stealth", fill: black))
  line((-0.3, 0), (5.0, 0), mark: (end: "stealth", fill: black))

  content((-0.6, 3.2), $R |macron(I)|$)
  content((5.0, -0.4), $omega$)

  line((2.3, -0.1), (2.3, 0.1))
  content((2.3, -0.4), $omega_0$)

  line((0, 2.6), (2.3, 2.6), stroke: (dash: "dashed", paint: gray))
  line((2.3, 0), (2.3, 2.6), stroke: (dash: "dashed", paint: gray))
  content((-0.4, 2.6), $V$)

  // Curva a campana di risonanza
  bezier((0, 0), (2.3, 2.6), (1.2, 0.05), (1.8, 2.6), stroke: 1.5pt + rgb("#005bb5"))
  bezier((2.3, 2.6), (4.6, 0.15), (2.8, 2.6), (3.3, 0.25), stroke: 1.5pt + rgb("#005bb5"))
})
