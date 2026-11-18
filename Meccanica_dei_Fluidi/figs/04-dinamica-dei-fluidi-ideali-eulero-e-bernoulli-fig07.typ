// 6. Forza aerodinamica in funzione dello spessore: F = k / h^2
#import "@preview/cetz:0.3.4": canvas, draw
#import "style.typ": *

#canvas(length: 0.78cm, {
  import draw: *
  let k = 6.0                 // F(h) = k / h^2
  let P = 1.5                 // peso m g
  let heq = calc.sqrt(k / P)  // equilibrio F(h_eq) = P
  let (hmax, fmax) = (5.0, 4.4)
  let h0 = calc.sqrt(k / 4.1)

  line((0, 0), (hmax + 0.4, 0), stroke: sp-geo + c-geo, mark: punta(c-geo))
  line((0, 0), (0, fmax), stroke: sp-geo + c-geo, mark: punta(c-geo))
  lab((hmax + 0.4, 0), $h$, anchor: "west", pad: 0.08)
  lab((0, fmax), $F$, anchor: "south", pad: 0.08)

  line((0, P), (hmax - 0.3, P), stroke: (paint: c-forza, thickness: sp-aux, dash: "dashed"))
  lab((hmax - 0.3, P), $P = m g$, col: c-forza, anchor: "west", pad: 0.08)
  line(..campiona(x => (x, k / (x * x)), h0, hmax, n: 80), stroke: sp-vec + c-forza)
  lab((h0 + 0.15, k / (h0 * h0) - 0.2), $F(h) prop 1 / h^2$, col: c-forza, anchor: "west")

  line((heq, P), (heq, 0), stroke: (paint: c-aux, thickness: sp-aux, dash: "dashed"))
  circle((heq, P), radius: 0.08, fill: c-geo, stroke: none)
  lab((heq, 0), $h_"eq"$, anchor: "north", pad: 0.1)
  // perturbazioni: in entrambi i versi il sistema si allontana dall'equilibrio
  vettore((heq - 0.2, 0.38), (heq - 1.0, 0.38), col: c-geo)
  vettore((heq + 0.2, 0.38), (heq + 1.0, 0.38), col: c-geo)
})
