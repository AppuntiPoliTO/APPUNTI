#import "../../lib.typ": *
#align(center, scale(80%, reflow: true, canvas({
  import draw: *
  line((-1.8, 0), (4.5, 0), mark: (end: "stealth", fill: black))
  line((0, -0.4), (0, 2.5), mark: (end: "stealth", fill: black))
  content((4.7, -0.1), $t$)
  content((0.5, 2.4), $v(t)$)
  content((-0.4, 1.7), text(fill: red.darken(10%))[$V_0$])
  content((2.8, -0.35), text(fill: red.darken(10%))[$5 tau$])

  line((-1.6, 1.7), (0, 1.7), stroke: (paint: red.darken(10%), thickness: 1.6pt))
  let pts = ()
  for k in range(0, 41) {
    let t_val = k * 5.0 / 40.0
    let x_pos = t_val * 0.56
    let y_pos = 1.7 * calc.exp(-t_val)
    pts.push((x_pos, y_pos))
  }
  line(..pts, stroke: (paint: red.darken(10%), thickness: 1.6pt))
})))