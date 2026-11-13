#import "../../lib.typ": *
#align(center, scale(85%, reflow: true, canvas({
  import draw: *
  // Assi cartesiani
  line((-0.4, 0), (4.2, 0), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  line((0, -0.6), (0, 3.2), mark: (end: "stealth", fill: black), stroke: 1.2pt)
  content((4.5, -0.2), $I$)
  content((-0.35, 3.0), $V$)

  // Retta generatore (arancione) e retta carico V = Ru I (blu)
  line((-0.4, 2.46), (2.9, -0.35), stroke: orange + 1.5pt)
  line((0, 0), (2.0, 2.5), stroke: blue + 1.5pt)

  // Punto di lavoro (rosso)
  let px = 1.01
  let py = 1.26
  line((px, 0), (px, py), stroke: (paint: red, thickness: 1pt, dash: "dashed"))
  line((0, py), (px, py), stroke: (paint: red, thickness: 1pt, dash: "dashed"))
  circle((px, py), radius: 0.09, fill: red, stroke: none)
  content((px, -0.35), text(fill: red)[$I$])

  // Punti notevoli generatore
  circle((0, 2.12), radius: 0.08, fill: rgb("#006633"), stroke: none)
  content((0.35, 2.3), text(fill: rgb("#006633"))[$E$])
  circle((2.5, 0), radius: 0.08, fill: rgb("#006633"), stroke: none)
  content((2.7, -0.55), text(fill: rgb("#006633"))[$I_"cc" = E / R$])
})))