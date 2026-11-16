// 5. Potenza della turbina P = A Q - B Q^3 (in scala: x = Q / sqrt(A/B))
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#let tratt = (paint: c-aux, thickness: sp-aux, dash: "dashed")

#canvas(length: 1cm, {
  import draw: *
  let (sx, sy) = (4.5, 7.5)
  let p(x) = x - x * x * x
  let xo = 1 / calc.sqrt(3)     // massimo: dP/dQ = 0
  let xn = 0.25                 // punto nominale: 20 / sqrt(A/B) = 20 / 80

  line((0, 0), (sx * 1.15, 0), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((sx * 1.15, 0), $Q$, anchor: "west", pad: 0.06)
  line((0, 0), (0, sy * 0.48), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((0, sy * 0.48), $P$, anchor: "south", pad: 0.06)

  line((sx * xo, 0), (sx * xo, sy * p(xo)), stroke: tratt)
  line(..campiona(x => (sx * x, sy * p(x)), 0, 1, n: 60), stroke: sp-vec + c-norm)
  circle((sx * xo, sy * p(xo)), radius: 0.06, fill: c-geo, stroke: none)
  lab((sx * xo, sy * p(xo)), $P_"max"$, anchor: "south", pad: 0.1)
  lab((sx * xo, 0), $Q_"opt"$, anchor: "north", pad: 0.1)
  line((sx, -0.08), (sx, 0.08), stroke: sp-geo + c-geo)
  lab((sx, 0), $sqrt(A \/ B)$, anchor: "north", pad: 0.1)

  circle((sx * xn, sy * p(xn)), radius: 0.06, fill: c-vel, stroke: none)
  lab((sx * xn, sy * p(xn)), text(fill: c-vel)[nominale], anchor: "north-west", pad: 0.12)
})
