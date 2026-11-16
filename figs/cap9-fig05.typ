// Figura estratta da capitoli/cap9.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
      import draw: *
      content((1.1, 1.18), text(size: 8.5pt)[*$"Re" tilde.op 40 div 50$*], anchor: "south")
      circle((1.1, 0), radius: 0.62, fill: c-aux.transparentize(86%), stroke: 1.1pt + black)

      bezier((0.2, 0.35), (1.1, 0.70), (0.6, 0.35), (0.8, 0.70), stroke: 0.85pt + c-vel)
      bezier((1.1, 0.70), (3.35, 0.44), (2.05, 0.98), (2.75, 0.44), stroke: 0.85pt + c-vel)
      bezier((3.35, 0.44), (5.25, 0.68), (3.95, 0.44), (4.55, 0.92), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((0.2, -0.35), (1.1, -0.70), (0.6, -0.35), (0.8, -0.70), stroke: 0.85pt + c-vel)
      bezier((1.1, -0.70), (3.35, -0.76), (1.85, -0.82), (2.65, -0.76), stroke: 0.85pt + c-vel)
      bezier((3.35, -0.76), (5.25, -0.60), (4.05, -0.76), (4.65, -0.38), mark: (end: ">"), stroke: 0.85pt + c-vel)

      arc((2.25, 0.20), start: 35deg, stop: 325deg, radius: (0.35, 0.29), anchor: "origin", mark: (start: ">"), stroke: 0.9pt + c-norm)
      arc((3.35, -0.20), start: 35deg, stop: 325deg, radius: (0.37, 0.30), anchor: "origin", mark: (end: ">"), stroke: 0.9pt + c-norm)
      arc((4.45, 0.20), start: 35deg, stop: 325deg, radius: (0.39, 0.32), anchor: "origin", mark: (start: ">"), stroke: 0.9pt + c-norm)
    })
