// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 68) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  import draw: *

  rect((1.50, 0.45), (7.10, 2.35), fill: c-aux.transparentize(92%), stroke: none)
  circle((1.50, 1.40), radius: (0.36, 0.95), fill: c-aux.transparentize(86%), stroke: none)
  arc((1.50, 1.40), start: -90deg, stop: 90deg, radius: (0.36, 0.95), anchor: "origin", stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
  arc((1.50, 1.40), start: 90deg, stop: 270deg, radius: (0.36, 0.95), anchor: "origin", stroke: (paint: c-aux, thickness: 0.9pt, dash: "dashed"))

  circle((2.75, 2.35), radius: (0.20, 0.076), fill: c-fluido, stroke: none)
  rect((2.55, 2.35), (2.95, 3.67), fill: c-fluido, stroke: none)
  circle((2.75, 3.67), radius: (0.20, 0.076), fill: c-fluido, stroke: none)
  circle((2.75, 3.67), radius: (0.20, 0.076), stroke: 1pt + c-norm)
  line((2.55, 2.35), (2.55, 4.00), stroke: 0.85pt + c-geo)
  line((2.95, 2.35), (2.95, 4.00), stroke: 0.85pt + c-geo)
  arc((2.75, 2.35), start: 0deg, stop: 180deg, radius: (0.20, 0.076), anchor: "origin", stroke: (paint: c-geo, thickness: 0.6pt, dash: "dashed"))
  arc((2.75, 2.35), start: 180deg, stop: 360deg, radius: (0.20, 0.076), anchor: "origin", stroke: 0.8pt + c-geo)
  circle((2.75, 4.00), radius: (0.20, 0.076), stroke: 0.85pt + c-geo)

  circle((5.85, 2.35), radius: (0.20, 0.076), fill: c-fluido, stroke: none)
  rect((5.65, 2.35), (6.05, 2.97), fill: c-fluido, stroke: none)
  circle((5.85, 2.97), radius: (0.20, 0.076), fill: c-fluido, stroke: none)
  circle((5.85, 2.97), radius: (0.20, 0.076), stroke: 1pt + c-norm)
  line((5.65, 2.35), (5.65, 4.00), stroke: 0.85pt + c-geo)
  line((6.05, 2.35), (6.05, 4.00), stroke: 0.85pt + c-geo)
  arc((5.85, 2.35), start: 0deg, stop: 180deg, radius: (0.20, 0.076), anchor: "origin", stroke: (paint: c-geo, thickness: 0.6pt, dash: "dashed"))
  arc((5.85, 2.35), start: 180deg, stop: 360deg, radius: (0.20, 0.076), anchor: "origin", stroke: 0.8pt + c-geo)
  circle((5.85, 4.00), radius: (0.20, 0.076), stroke: 0.85pt + c-geo)

  line((2.95, 3.67), (5.65, 3.67), stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
  line((6.05, 3.67), (6.55, 3.67), stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
  line((6.05, 2.97), (6.55, 2.97), stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
  line((6.40, 2.97), (6.40, 3.67), mark: (start: ">", end: ">"), stroke: 0.85pt + c-forza)

  line((1.50, 2.35), (2.55, 2.35), stroke: 1.1pt + c-geo)
  line((2.95, 2.35), (5.65, 2.35), stroke: 1.1pt + c-geo)
  line((6.05, 2.35), (7.10, 2.35), stroke: 1.1pt + c-geo)
  line((1.50, 0.45), (7.10, 0.45), stroke: 1.1pt + c-geo)

  circle((7.10, 1.40), radius: (0.36, 0.95), fill: c-aux.transparentize(85%), stroke: none)
  circle((7.10, 1.40), radius: (0.36, 0.95), stroke: (paint: c-aux, thickness: 0.9pt, dash: "dashed"))

  line((1.50, 1.12), (0.65, 1.12), mark: (end: ">"), stroke: 1pt + c-norm)
  line((7.10, 1.12), (7.95, 1.12), mark: (end: ">"), stroke: 1pt + c-norm)

  line((0.80, 1.65), (2.05, 1.65), mark: (end: ">"), stroke: 1.1pt + c-vel)
  line((3.55, 1.40), (5.05, 1.40), mark: (end: ">"), stroke: 1.1pt + c-vel)

  content((2.75, 4.22), text(size: 8.5pt, fill: c-forza)[$p_1$], anchor: "south")
  content((5.85, 4.22), text(size: 8.5pt, fill: c-forza)[$p_2 < p_1$], anchor: "south")
  content((6.55, 3.32), text(size: 8.5pt, fill: c-forza)[$Delta cal(H)$], anchor: "west")
  content((4.30, 0.22), text(size: 8.5pt, fill: c-geo)[$S_w$], anchor: "north")
  content((1.50, 0.78), text(size: 8pt, fill: c-aux)[$S_1$])
  content((7.10, 0.78), text(size: 8pt, fill: c-aux)[$S_2$])
  content((0.92, 0.96), text(size: 8.5pt, fill: c-norm)[$arrow(n)_1$], anchor: "north")
  content((7.68, 0.96), text(size: 8.5pt, fill: c-norm)[$arrow(n)_2$], anchor: "north")
  content((0.92, 1.82), text(size: 8.5pt, fill: c-vel)[$U_d$], anchor: "south")
  content((4.30, 1.60), text(size: 8.5pt, fill: c-vel)[$Q_v = U_d A$], anchor: "south")
})
