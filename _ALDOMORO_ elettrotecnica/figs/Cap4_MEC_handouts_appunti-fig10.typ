// Figura estratta da Cap4_MEC_handouts_appunti.typ (riga 670) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  line((-0.3, 0), (6.5, 0), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  line((0, -1.6), (0, 1.9), mark: (end: "stealth", fill: black), stroke: 0.8pt)
  content((6.65, -0.25), $t$)
  content((6.1, 1.5), text(fill: rgb("#0072bd"), $p_(r, C)(t)$))
  content((6.1, -1.5), text(fill: rgb("#d95319"), $p_(r, L)(t)$))

  let pts_c = ()
  let pts_l = ()
  for k in range(0, 101) {
    let x = k / 100 * 5.8
    let y = 1.3 * calc.sin(3 * calc.pi * x / 5.8 * 1.5)
    pts_c.push((x, y))
    pts_l.push((x, -y))
  }
  line(..pts_c, stroke: (paint: rgb("#0072bd"), thickness: 1.3pt))
  line(..pts_l, stroke: (paint: rgb("#d95319"), thickness: 1.3pt))
})
