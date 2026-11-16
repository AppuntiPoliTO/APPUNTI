// Figura estratta da capitoli/cap9.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
      import draw: *
      line((0.1, 0), (5.3, 0), mark: (end: ">"), stroke: (paint: c-aux, thickness: 0.65pt, dash: "dashed"))
      line((0.35, -1.15), (0.35, 1.35), mark: (end: ">"), stroke: 0.75pt + black)
      content((5.38, 0), text(size: 8pt)[$x$], anchor: "west")
      content((0.25, 1.32), text(size: 8pt)[$y$], anchor: "east")

      circle((2.1, 0), radius: 0.65, fill: c-aux.transparentize(86%), stroke: 1.1pt + black)

      bezier((0.65, 0.36), (2.1, 0.86), (1.35, 0.36), (1.65, 0.86), stroke: 0.85pt + c-vel)
      bezier((2.1, 0.86), (4.95, 0.52), (3.0, 0.89), (3.95, 0.66), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((0.65, 0.68), (2.1, 1.24), (1.35, 0.68), (1.65, 1.24), stroke: 0.85pt + c-vel)
      bezier((2.1, 1.24), (4.95, 0.88), (3.0, 1.27), (3.95, 0.98), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((0.65, -0.36), (2.1, -0.86), (1.35, -0.36), (1.65, -0.86), stroke: 0.85pt + c-vel)
      bezier((2.1, -0.86), (4.95, -0.52), (3.0, -0.89), (3.95, -0.66), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((0.65, -0.68), (2.1, -1.24), (1.35, -0.68), (1.65, -1.24), stroke: 0.85pt + c-vel)
      bezier((2.1, -1.24), (4.95, -0.88), (3.0, -1.27), (3.95, -0.98), mark: (end: ">"), stroke: 0.85pt + c-vel)

      line((1.64, 0.46), (1.22, 0.88), mark: (end: ">"), stroke: 0.85pt + c-norm)
      line((1.64, 0.46), (2.02, 0.84), mark: (end: ">"), stroke: 0.85pt + c-norm)
      content((1.18, 0.92), text(size: 7.5pt, fill: c-norm)[$n$], anchor: "south-east")
      content((2.06, 0.88), text(size: 7.5pt, fill: c-norm)[$s$], anchor: "south")

      circle((1.45, 0), radius: 0.065, fill: c-forza, stroke: none)
      circle((2.1, 0.65), radius: 0.065, fill: c-forza, stroke: none)
      content((1.38, -0.06), text(size: 7.5pt, fill: c-forza)[$P_"max"$], anchor: "north-east")
      content((2.1, 0.53), text(size: 7.5pt, fill: c-forza)[$P_"min"$], anchor: "north")

      bezier((2.70, 0.32), (4.05, 0.18), (3.15, 0.48), (3.85, 0.34), stroke: 0.8pt + c-vel)
      bezier((4.05, 0.18), (2.80, 0.12), (4.05, 0.06), (3.35, 0.08), mark: (end: ">"), stroke: 0.8pt + c-vel)
      bezier((2.80, 0.12), (2.70, 0.32), (2.73, 0.16), (2.69, 0.24), stroke: 0.8pt + c-vel)

      bezier((2.70, -0.32), (4.05, -0.18), (3.15, -0.48), (3.85, -0.34), stroke: 0.8pt + c-vel)
      bezier((4.05, -0.18), (2.80, -0.12), (4.05, -0.06), (3.35, -0.08), mark: (end: ">"), stroke: 0.8pt + c-vel)
      bezier((2.80, -0.12), (2.70, -0.32), (2.73, -0.16), (2.69, -0.24), stroke: 0.8pt + c-vel)
    })
