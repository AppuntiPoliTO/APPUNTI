// Figura estratta da capitoli/cap9.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
      import draw: *
      content((3.1, 1.52), text(size: 8.5pt)[*$"Re" << 1$*], anchor: "south")

      line((0.2, -0.9), (0.2, 0.9), stroke: 0.7pt + c-aux)
      line((0.2, -0.76), (0.9, -0.76), mark: (end: ">"), stroke: 0.8pt + c-vel)
      line((0.2, -0.38), (0.9, -0.38), mark: (end: ">"), stroke: 0.8pt + c-vel)
      line((0.2, 0.0), (0.9, 0.0), mark: (end: ">"), stroke: 0.8pt + c-vel)
      line((0.2, 0.38), (0.9, 0.38), mark: (end: ">"), stroke: 0.8pt + c-vel)
      line((0.2, 0.76), (0.9, 0.76), mark: (end: ">"), stroke: 0.8pt + c-vel)
      content((0.55, 0.94), text(size: 8pt, fill: c-vel)[$U_infinity$], anchor: "south")

      circle((3.1, 0), radius: 0.65, fill: c-aux.transparentize(86%), stroke: 1.1pt + black)
      line((2.64, -0.46), (3.56, 0.46), mark: (start: ">", end: ">"), stroke: 0.75pt + black)
      content((3.18, -0.08), text(size: 8pt)[$D$], anchor: "north-west")

      bezier((1.15, 0.20), (3.1, 0.82), (2.15, 0.20), (2.45, 0.82), stroke: 0.85pt + c-vel)
      bezier((3.1, 0.82), (5.05, 0.20), (3.75, 0.82), (4.05, 0.20), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((1.15, 0.52), (3.1, 1.08), (2.1, 0.52), (2.45, 1.08), stroke: 0.85pt + c-vel)
      bezier((3.1, 1.08), (5.05, 0.52), (3.75, 1.08), (4.1, 0.52), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((1.15, 0.84), (3.1, 1.34), (2.1, 0.84), (2.45, 1.34), stroke: 0.85pt + c-vel)
      bezier((3.1, 1.34), (5.05, 0.84), (3.75, 1.34), (4.1, 0.84), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((1.15, -0.20), (3.1, -0.82), (2.15, -0.20), (2.45, -0.82), stroke: 0.85pt + c-vel)
      bezier((3.1, -0.82), (5.05, -0.20), (3.75, -0.82), (4.05, -0.20), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((1.15, -0.52), (3.1, -1.08), (2.1, -0.52), (2.45, -1.08), stroke: 0.85pt + c-vel)
      bezier((3.1, -1.08), (5.05, -0.52), (3.75, -1.08), (4.1, -0.52), mark: (end: ">"), stroke: 0.85pt + c-vel)

      bezier((1.15, -0.84), (3.1, -1.34), (2.1, -0.84), (2.45, -1.34), stroke: 0.85pt + c-vel)
      bezier((3.1, -1.34), (5.05, -0.84), (3.75, -1.34), (4.1, -0.84), mark: (end: ">"), stroke: 0.85pt + c-vel)
    })
