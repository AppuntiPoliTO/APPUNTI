// Figura estratta da Cap2_MEC_handouts_appunti.typ (riga 2449) con LocalTypst
#import "@preview/cetz:0.5.3": canvas, draw
#import "@preview/zap:0.6.0"
#import zap: *
#import zap.cetz.draw: bezier, arc, content

#let line(..args) = if args.pos().len() == 0 { std.line(..args) } else { zap.cetz.draw.line(..args) }
#let circle(..args) = if args.pos().len() == 0 or type(args.pos().first()) != array { std.circle(..args) } else { zap.cetz.draw.circle(..args) }

#canvas({
  import draw: *
  line((-0.8, 0), (4.2, 0), mark: (end: "stealth", fill: black))
  line((0, -0.4), (0, 2.6), mark: (end: "stealth", fill: black))
  content((4.4, -0.1), $t$)
  content((0.6, 2.5), $v_L(t)$)
  content((-0.35, 1.8), text(fill: red.darken(10%))[$E$])
  content((2.8, -0.35), text(fill: red.darken(10%))[$5 tau$])

  line((-0.8, 0), (0, 0), stroke: (paint: red.darken(10%), thickness: 1.5pt))
  line((0, 0), (0, 1.8), stroke: (paint: red.darken(10%), thickness: 1.5pt))
  let pts = ()
  for k in range(0, 41) {
    let t_val = k * 5.0 / 40.0
    let x_pos = t_val * 0.56
    let y_pos = 1.8 * calc.exp(-t_val)
    pts.push((x_pos, y_pos))
  }
  line(..pts, stroke: (paint: red.darken(10%), thickness: 1.5pt))
  circle((0, 1.8), radius: 0.06, fill: red.darken(10%), stroke: none)
})
