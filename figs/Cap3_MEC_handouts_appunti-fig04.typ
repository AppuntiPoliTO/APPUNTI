// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 216) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }
#let varphi = $phi$

#canvas({
  import draw: *
  // Riquadro e griglia
  rect((0, -3), (8, 3), stroke: 0.6pt + black)
  for y in (-2, -1, 0, 1, 2) {
    line((0, y), (8, y), stroke: (paint: gray.lighten(50%), thickness: 0.4pt))
    content((-0.35, y), $#y$)
  }
  content((-0.35, 3), $3$)
  content((-0.35, -3), $-3$)
  content((-0.8, 0), $a(t)$)

  for x in (2, 4, 6) {
    line((x, -3), (x, 3), stroke: (paint: gray.lighten(50%), thickness: 0.4pt))
  }
  content((0, -3.4), $0$)
  content((2, -3.4), $pi / 2$)
  content((4, -3.4), $pi$)
  content((6, -3.4), $(3 pi) / 2$)
  content((8, -3.4), $2 pi$)
  content((4, -4.0), [angolo ($"rad"$)])

  // Asse zero evidenziato
  line((0, 0), (8, 0), stroke: 0.6pt + black)

  // Curva phi = 0: 3 * sin(x)
  bezier((0, 0), (2, 3), (0.8, 1.5), (1.3, 3), stroke: 1.5pt + rgb("#007256"))
  bezier((2, 3), (4, 0), (2.7, 3), (3.2, 1.5), stroke: 1.5pt + rgb("#007256"))
  bezier((4, 0), (6, -3), (4.8, -1.5), (5.3, -3), stroke: 1.5pt + rgb("#007256"))
  bezier((6, -3), (8, 0), (6.7, -3), (7.2, -1.5), stroke: 1.5pt + rgb("#007256"))

  // Curva phi = pi/2 (anticipo): curva traslata a sinistra
  bezier((0, 2.6), (0.67, 3), (0.2, 2.9), (0.4, 3), stroke: 1.2pt + rgb("#d95319"))
  bezier((0.67, 3), (2.67, 0), (1.37, 3), (1.87, 1.5), stroke: 1.2pt + rgb("#d95319"))
  bezier((2.67, 0), (4.67, -3), (3.47, -1.5), (3.97, -3), stroke: 1.2pt + rgb("#d95319"))
  bezier((4.67, -3), (6.67, 0), (5.37, -3), (5.87, -1.5), stroke: 1.2pt + rgb("#d95319"))
  bezier((6.67, 0), (8, 2.6), (7.2, 1.1), (7.7, 2.2), stroke: 1.2pt + rgb("#d95319"))

  // Curva phi = -pi/2 (ritardo): curva traslata a destra
  bezier((0, -2.6), (1.33, 0), (0.3, -2.2), (0.8, -1.1), stroke: 1.2pt + rgb("#edb120"))
  bezier((1.33, 0), (3.33, 3), (2.13, 1.5), (2.63, 3), stroke: 1.2pt + rgb("#edb120"))
  bezier((3.33, 3), (5.33, 0), (4.03, 3), (4.53, 1.5), stroke: 1.2pt + rgb("#edb120"))
  bezier((5.33, 0), (7.33, -3), (6.13, -1.5), (6.63, -3), stroke: 1.2pt + rgb("#edb120"))
  bezier((7.33, -3), (8, -2.6), (7.6, -3), (7.8, -2.9), stroke: 1.2pt + rgb("#edb120"))

  // Freccia ampiezza A_hat
  line((2, 0), (2, 3), mark: (end: "stealth", fill: red), stroke: 1.5pt + red)
  content((2, 3.4), text(fill: red)[$hat(A)$])

  // Freccia periodo T
  line((0, -0.4), (8, -0.4), mark: (start: "stealth", end: "stealth", fill: black), stroke: 0.9pt)
  content((2.3, -0.8), $T$)

  // Legenda
  rect((5.8, 1.3), (7.7, 2.8), fill: white, stroke: 0.5pt + black)
  line((6.0, 2.5), (6.5, 2.5), stroke: 1.5pt + rgb("#007256"))
  content((7.1, 2.5), $varphi = 0$)
  line((6.0, 2.0), (6.5, 2.0), stroke: 1.2pt + rgb("#d95319"))
  content((7.1, 2.0), $varphi = pi / 2$)
  line((6.0, 1.5), (6.5, 1.5), stroke: 1.2pt + rgb("#edb120"))
  content((7.1, 1.5), $varphi = -pi / 2$)
})
