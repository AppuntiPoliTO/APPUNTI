// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2639) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }

#canvas({
  import draw: *
  line((-0.8, 0), (3.6, 0), mark: (end: "stealth", fill: black))
  line((0, -0.4), (0, 2.5), mark: (end: "stealth", fill: black))
  content((3.8, -0.2), $t$)
  content((0.35, 2.4), $v(t)$)
  content((-0.35, 1.8), text(fill: red.darken(10%))[$E$])
  line((0, 1.8), (3.2, 1.8), stroke: (paint: red.darken(10%), dash: "dashed", thickness: 0.7pt))

  line((-0.8, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.5pt))
  let pts = ()
  for k in range(0, 41) {
    let t_val = k * 5.0 / 40.0
    let x_pos = t_val * 0.55
    let y_pos = 1.8 * (1.0 - calc.exp(-t_val))
    pts.push((x_pos, y_pos))
  }
  line(..pts, stroke: (paint: red.darken(10%), thickness: 1.5pt))
})
