// Figura estratta da capitoli/cap9.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.6cm, {
      import draw: *
      arc((2.5, -2.65), start: 53deg, stop: 127deg, radius: 3.0, anchor: "origin", fill: c-aux.transparentize(89%), stroke: none)
      arc((2.5, -2.65), start: 53deg, stop: 127deg, radius: 3.0, anchor: "origin", stroke: 1.3pt + black)

      line((2.5, 0.35), (2.5, 1.55), stroke: (paint: c-aux, thickness: 0.55pt, dash: "dashed"))
      circle((2.5, 0.35), radius: 0.065, fill: c-forza, stroke: none)
      content((2.5, 0.18), text(size: 7.5pt, fill: c-forza)[*$P_"min" (U_"max")$*], anchor: "north")

      line((1.23, 0.07), (0.76, 1.07), mark: (end: ">"), stroke: 0.75pt + c-aux)
      content((0.70, 1.09), text(size: 7.5pt)[$n$], anchor: "east")

      line((1.11, 0.32), (1.45, 0.48), mark: (end: ">"), stroke: 0.65pt + c-vel)
      line((0.99, 0.58), (1.49, 0.81), mark: (end: ">"), stroke: 0.65pt + c-vel)
      line((0.88, 0.83), (1.44, 1.09), mark: (end: ">"), stroke: 0.65pt + c-vel)
      bezier((1.23, 0.07), (1.44, 1.09), (1.57, 0.53), (1.51, 0.83), stroke: 1pt + c-vel)

      line((3.77, 0.07), (4.24, 1.07), mark: (end: ">"), stroke: 0.75pt + c-aux)
      content((4.29, 1.09), text(size: 7.5pt)[$n$], anchor: "west")

      line((3.86, 0.27), (3.66, 0.36), mark: (end: ">"), stroke: 0.65pt + c-norm)
      line((4.05, 0.67), (4.32, 0.54), mark: (end: ">"), stroke: 0.65pt + c-vel)
      line((4.15, 0.89), (4.66, 0.65), mark: (end: ">"), stroke: 0.65pt + c-vel)

      bezier((3.77, 0.07), (3.95, 0.45), (3.52, 0.28), (3.67, 0.51), stroke: 1pt + c-norm)
      bezier((3.95, 0.45), (4.66, 0.65), (4.20, 0.41), (4.45, 0.66), stroke: 1pt + c-vel)
      content((4.72, 0.63), text(size: 8pt, fill: c-vel)[$u$], anchor: "west")

      content((1.45, 1.38), text(size: 8pt, fill: c-forza)[$ (partial P) / (partial s) < 0 $], anchor: "south")
      content((3.55, 1.38), text(size: 8pt, fill: c-forza)[$ (partial P) / (partial s) > 0 $], anchor: "south")
    })
