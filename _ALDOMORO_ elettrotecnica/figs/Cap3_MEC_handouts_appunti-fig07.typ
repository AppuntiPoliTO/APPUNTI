// Figura estratta da Cap3_MEC_handouts_appunti.typ (riga 358) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let rect(..args) = if args.pos().len() <= 1 { std.rect(..args) } else { zap.cetz.draw.rect(..args) }

#canvas({
  import draw: *
  rect((0, -2), (6.28, 2), stroke: 0.6pt + black)
  for y in (-1.5, -1, -0.5, 0, 0.5, 1, 1.5) {
    line((0, y), (6.28, y), stroke: (paint: gray.lighten(60%), thickness: 0.4pt))
  }
  for y in (-2, -1, 0, 1, 2) {
    content((-0.4, y), $#y$)
  }
  for x in (1, 2, 3, 4, 5, 6) {
    line((x, -2), (x, 2), stroke: (paint: gray.lighten(60%), thickness: 0.4pt))
    content((x, -2.35), $#x$)
  }
  content((0, -2.35), $0$)
  content((3.14, -2.85), [angolo ($"rad"$)])
  line((0, 0), (6.28, 0), stroke: 0.6pt + black)

  // s(t) = sqrt(2) sin(x) (rosso)
  bezier((0, 0), (1.57, 1.41), (0.6, 0.7), (1.0, 1.41), stroke: 1.2pt + red)
  bezier((1.57, 1.41), (3.14, 0), (2.14, 1.41), (2.54, 0.7), stroke: 1.2pt + red)
  bezier((3.14, 0), (4.71, -1.41), (3.74, -0.7), (4.14, -1.41), stroke: 1.2pt + red)
  bezier((4.71, -1.41), (6.28, 0), (5.31, -1.41), (5.71, -0.7), stroke: 1.2pt + red)
  content((3.4, 0.4), text(fill: red)[$s(t)$])

  // c(t) = sqrt(2) cos(x) (verde/nero)
  bezier((0, 1.41), (1.57, 0), (0.57, 1.41), (0.97, 0.7), stroke: 1.2pt + rgb("#00a000"))
  bezier((1.57, 0), (3.14, -1.41), (2.17, -0.7), (2.57, -1.41), stroke: 1.2pt + rgb("#00a000"))
  bezier((3.14, -1.41), (4.71, 0), (3.71, -1.41), (4.11, -0.7), stroke: 1.2pt + rgb("#00a000"))
  bezier((4.71, 0), (6.28, 1.41), (5.31, 0.7), (5.71, 1.41), stroke: 1.2pt + rgb("#00a000"))
  content((1.2, -0.6), text(fill: rgb("#00a000"))[$c(t)$])

  // s(t) + c(t) = 2 sin(x + pi/4) (blu)
  bezier((0, 1.41), (0.785, 2.0), (0.25, 1.8), (0.5, 2.0), stroke: 1.4pt + blue)
  bezier((0.785, 2.0), (2.356, 0), (1.35, 2.0), (1.75, 1.0), stroke: 1.4pt + blue)
  bezier((2.356, 0), (3.927, -2.0), (2.95, -1.0), (3.35, -2.0), stroke: 1.4pt + blue)
  bezier((3.927, -2.0), (5.498, 0), (4.5, -2.0), (4.9, -1.0), stroke: 1.4pt + blue)
  bezier((5.498, 0), (6.28, 1.41), (5.8, 0.5), (6.05, 1.0), stroke: 1.4pt + blue)
  content((2.6, 1.65), text(fill: blue)[$s(t) + c(t)$])
})
