#import "../../lib.typ": *
#align(center, scale(80%, reflow: true, canvas({
  import draw: *
  // Assi
  line((-0.3, 0), (4.8, 0), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  line((0, -0.3), (0, 2.8), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  content((5.3, -0.15), $R_u$)
  content((-0.4, 2.6), $P_u$)

  // Curva della potenza P_u(R_u)
  bezier((0, 0), (1.8, 2.1), (0.8, 1.8), stroke: (paint: red, thickness: 1.4pt, dash: "dashed"))
  bezier((1.8, 2.1), (3.6, 0.1), (2.5, 2.0), stroke: (paint: red, thickness: 1.4pt, dash: "dashed"))

  // Punto di massimo Ru = R
  line((1.8, 0), (1.8, 2.1), stroke: (paint: red, thickness: 1pt, dash: "dashed"))
  circle((0, 0), radius: 0.09, fill: red, stroke: none)
  circle((3.6, 0), radius: 0.09, fill: red, stroke: none)

  content((1.8, -0.45), text(fill: red)[$R_u = R$])
  content((3.7, -0.45), $R_u >> R$)
})))