// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 1421) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  line((0, 0), (4.5, 0), stroke: 1pt + black)
  content((2.25, -0.35), $P$)

  // Cateto Q totale a destra
  line((4.65, 0), (4.65, 2.7), stroke: 1.2pt + blue)
  content((5.0, 1.6), text(fill: blue)[$Q$])

  // Cateto Qc (in arancione) e Q' (in verde)
  line((4.5, 0.9), (4.5, 2.7), stroke: 1.5pt + orange)
  content((4.15, 1.8), text(fill: orange)[$Q_c$])
  line((4.5, 0), (4.5, 0.9), stroke: 1.5pt + rgb("#2e7d32"))
  content((5.65, 0.45), text(fill: rgb("#2e7d32"))[$ quad Q' = Q + Q_c$])

  // Ipotenuse S e S'
  line((0, 0), (4.5, 2.7), stroke: 1.2pt + blue)
  content((4.3, 2.95), text(fill: blue)[$S$])
  line((0, 0), (4.5, 0.9), stroke: 1.2pt + rgb("#2e7d32"))
  content((3.9, 0.55), text(fill: rgb("#2e7d32"))[$S'$])

  // Archi phi e phi'
  arc((1.2, 0), start: 0deg, stop: 31deg, radius: 1.2, stroke: blue, mark: (end: "stealth", fill: blue))
  content((1.4, 0.5), text(fill: blue)[$varphi$])
  arc((1.8, 0), start: 0deg, stop: 11.3deg, radius: 1.8, stroke: rgb("#2e7d32"), mark: (end: "stealth", fill: rgb("#2e7d32")))
  content((2.15, 0.22), text(fill: rgb("#2e7d32"))[$varphi'$])
  content((5.3, 2.4), $varphi' < varphi$)
})
