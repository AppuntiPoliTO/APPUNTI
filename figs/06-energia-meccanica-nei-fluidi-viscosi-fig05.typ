// 2. Profilo parabolico u(r) = u0 (1 - r^2/R^2), velocità media u_d = u0/2
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#let tratt = (paint: c-aux, thickness: sp-aux, dash: "dashed")

#canvas(length: 1.3cm, {
  import draw: *
  let u0 = 2.6
  let prof(y) = u0 * (1 - y * y)   // r adimensionale: y = r / R
  let (x0, x1) = (-0.3, 3.3)

  hatch-wall((x0, 1), (x1, 1), side: 1)
  hatch-wall((x0, -1), (x1, -1), side: -1)
  axis-line((-0.5, 0), (3.6, 0))
  lab((3.6, 0), $z$, anchor: "west", pad: 0.06)
  line((0, -1.3), (0, 1.5), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, 1.5), $r$, anchor: "south", pad: 0.06)

  // riferimenti u0 e u_d (dietro al profilo)
  for (x, body) in ((u0, $u_0$), (u0 / 2, $u_d = u_0 \/ 2$)) {
    line((x, -1.38), (x, 1.2), stroke: tratt)
    lab((x, -1.38), body, col: c-vel, anchor: "north", pad: 0.06)
  }

  line(..campiona(y => (prof(y), y), -1, 1, n: 60), stroke: sp-vec + c-vel)
  for y in (-0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75) {
    line((0, y), (prof(y), y), stroke: sp-aux + c-vel, mark: punta(c-vel))
  }
})
