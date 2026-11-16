// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 233) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  import draw: *

  rect((1.60, 1.15), (6.80, 3.65), fill: c-aux.transparentize(92%), stroke: none)
  circle((1.60, 2.40), radius: (0.45, 1.25), fill: c-aux.transparentize(86%), stroke: none)
  arc((1.60, 2.40), start: -90deg, stop: 90deg, radius: (0.45, 1.25), anchor: "origin", stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
  arc((1.60, 2.40), start: 90deg, stop: 270deg, radius: (0.45, 1.25), anchor: "origin", stroke: (paint: c-aux, thickness: 0.9pt, dash: "dashed"))

  circle((4.20, 2.60), radius: (0.90, 0.324), stroke: (paint: c-aux, thickness: 0.65pt, dash: "dotted"))

  line((4.40, 2.25), (4.90, 2.38), (4.90, 2.78), (4.40, 2.65), close: true, fill: c-riemp, stroke: 0.85pt + c-geo)
  line((4.06, 2.27), (3.71, 2.45), (3.71, 2.85), (4.06, 2.67), close: true, fill: c-riemp, stroke: 0.85pt + c-geo)

  rect((4.11, 1.15), (4.29, 2.16), fill: c-forza.transparentize(78%), stroke: none)
  line((4.11, 1.15), (4.11, 2.16), stroke: 0.9pt + c-forza)
  line((4.29, 1.15), (4.29, 2.16), stroke: 0.9pt + c-forza)

  rect((3.96, 2.16), (4.44, 2.64), fill: c-riemp, stroke: none)
  circle((4.20, 2.16), radius: (0.24, 0.086), fill: c-riemp, stroke: none)
  arc((4.20, 2.16), start: 180deg, stop: 360deg, radius: (0.24, 0.086), anchor: "origin", stroke: 0.9pt + c-geo)
  line((3.96, 2.16), (3.96, 2.64), stroke: 0.9pt + c-geo)
  line((4.44, 2.16), (4.44, 2.64), stroke: 0.9pt + c-geo)
  circle((4.20, 2.64), radius: (0.24, 0.086), fill: c-riemp, stroke: 0.9pt + c-geo)

  line((4.00, 2.15), (3.50, 2.02), (3.50, 2.42), (4.00, 2.55), close: true, fill: c-riemp, stroke: 0.9pt + c-geo)
  line((4.34, 2.13), (4.69, 1.95), (4.69, 2.35), (4.34, 2.53), close: true, fill: c-riemp, stroke: 0.9pt + c-geo)

  circle((4.20, 1.15), radius: (0.20, 0.072), fill: c-riemp, stroke: 0.75pt + c-geo)
  line((1.60, 3.65), (6.80, 3.65), stroke: 1.1pt + c-geo)
  line((1.60, 1.15), (4.00, 1.15), stroke: 1.1pt + c-geo)
  line((4.40, 1.15), (6.80, 1.15), stroke: 1.1pt + c-geo)

  rect((4.11, 0.20), (4.29, 1.15), fill: c-forza.transparentize(78%), stroke: none)
  circle((4.20, 0.20), radius: (0.09, 0.032), fill: c-forza.transparentize(78%), stroke: none)
  line((4.11, 0.20), (4.11, 1.15), stroke: 1pt + c-forza)
  line((4.29, 0.20), (4.29, 1.15), stroke: 1pt + c-forza)
  arc((4.20, 0.20), start: 180deg, stop: 360deg, radius: (0.09, 0.032), anchor: "origin", stroke: 1pt + c-forza)

  circle((6.80, 2.40), radius: (0.45, 1.25), fill: c-aux.transparentize(85%), stroke: none)
  circle((6.80, 2.40), radius: (0.45, 1.25), stroke: (paint: c-aux, thickness: 0.9pt, dash: "dashed"))

  line((1.60, 1.85), (0.70, 1.85), mark: (end: ">"), stroke: 1pt + c-norm)
  line((6.80, 1.85), (7.70, 1.85), mark: (end: ">"), stroke: 1pt + c-norm)

  line((0.85, 2.55), (2.15, 2.55), mark: (end: ">"), stroke: 1.1pt + c-vel)
  line((6.25, 2.55), (7.55, 2.55), mark: (end: ">"), stroke: 1.1pt + c-vel)

  line((4.62, 2.95), (3.78, 2.95), mark: (end: ">"), stroke: 0.95pt + c-vel)
  arc((4.20, 0.60), start: 195deg, stop: 345deg, radius: (0.36, 0.12), anchor: "origin", mark: (end: ">"), stroke: 0.95pt + c-forza)

  content((2.95, 3.82), text(size: 8.5pt, fill: c-geo)[$S_w (arrow(u) = 0)$], anchor: "south")
  content((1.60, 3.22), text(size: 8pt, fill: c-aux)[$S_1$])
  content((6.80, 3.22), text(size: 8pt, fill: c-aux)[$S_2$])
  content((0.95, 1.68), text(size: 8.5pt, fill: c-norm)[$arrow(n)_1$], anchor: "north")
  content((7.45, 1.68), text(size: 8.5pt, fill: c-norm)[$arrow(n)_2$], anchor: "north")
  content((1.00, 2.75), text(size: 8.5pt, fill: c-vel)[$arrow(u)_1$], anchor: "south")
  content((7.45, 2.75), text(size: 8.5pt, fill: c-vel)[$arrow(u)_2$], anchor: "south")
  content((4.20, 3.12), text(size: 8pt, fill: c-vel)[$arrow(u) = arrow(w) != 0$], anchor: "south")
  content((4.95, 1.88), text(size: 8.5pt, fill: c-geo)[$S_m$], anchor: "west")
  content((3.72, 0.60), text(size: 8.5pt, fill: c-forza)[$P_m$], anchor: "east")
})
