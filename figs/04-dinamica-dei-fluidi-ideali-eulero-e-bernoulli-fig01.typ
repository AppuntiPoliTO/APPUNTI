// Figura estratta da capitoli/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli.typ (riga 244) con LocalTypst
#import "../template.typ": *
#import "fig04.typ": *

#canvas(length: 1.4cm, {
  import draw: *
  line((2.05, 1.72), (2.29, 1.82), (2.55, 1.85), (3.11, 1.79), (3.69, 1.64), (4.28, 1.44), (4.8, 1.25), (5.95, 2.0), (5.43, 2.19), (4.84, 2.39), (4.26, 2.54), (3.7, 2.6), (3.44, 2.57), (3.2, 2.47), close: true, fill: gray.transparentize(86%), stroke: none)
  line((1.8, 1.25), (1.82, 1.46), (1.92, 1.63), (2.05, 1.72), (2.29, 1.82), (2.55, 1.85), (3.11, 1.79), (3.69, 1.64), (4.28, 1.44), (4.8, 1.25), (3.84, 1.21), (2.85, 1.18), (2.13, 1.17), close: true, fill: gray.transparentize(78%), stroke: none)

  bezier((2.95, 2.0), (3.2, 2.47), (2.95, 2.21), (3.04, 2.37), stroke: (dash: "dashed", thickness: 0.65pt))
  bezier((2.95, 2.0), (5.95, 2.0), (2.95, 1.85), (4.15, 1.9), stroke: (dash: "dashed", thickness: 0.65pt))

  bezier((1.8, 1.25), (2.55, 1.85), (1.8, 1.62), (2.08, 1.85), stroke: 1.15pt)
  bezier((2.55, 1.85), (4.8, 1.25), (3.25, 1.85), (4.15, 1.48), stroke: 1.15pt)
  bezier((1.8, 1.25), (4.8, 1.25), (1.8, 1.1), (3.0, 1.15), stroke: 1.15pt)

  line((2.05, 1.72), (3.2, 2.47), stroke: 1.1pt)
  line((4.8, 1.25), (5.95, 2.0), stroke: 1.1pt)
  bezier((3.2, 2.47), (3.7, 2.6), (3.32, 2.55), (3.49, 2.6), stroke: 1.1pt)
  bezier((3.7, 2.6), (5.95, 2.0), (4.4, 2.6), (5.3, 2.23), stroke: 1.1pt)

  bezier((0.7, 1.52), (6.35, 1.98), (2.1, 2.75), (4.35, 2.55), mark: (end: ">"), stroke: 0.95pt + red)
  bezier((0.7, 1.84), (6.35, 2.24), (2.1, 3.22), (4.35, 2.98), mark: (end: ">"), stroke: 0.95pt + red)
  bezier((0.7, 2.16), (6.35, 2.5), (2.1, 3.69), (4.35, 3.41), mark: (end: ">"), stroke: 0.95pt + red)

  bezier((0.7, 1.1), (6.35, 1.16), (2.2, 0.98), (4.3, 1.0), mark: (end: ">"), stroke: 0.95pt + blue)
  bezier((0.7, 0.88), (6.35, 0.94), (2.2, 0.72), (4.3, 0.74), mark: (end: ">"), stroke: 0.95pt + blue)
  bezier((0.7, 0.66), (6.35, 0.72), (2.2, 0.46), (4.3, 0.48), mark: (end: ">"), stroke: 0.95pt + blue)

  line((3.5, 2.2), (3.5, 3.65), mark: (end: ">"), stroke: 1.2pt + purple)
  content((3.36, 3.6), text(size: 8.5pt, fill: purple)[$F_i$], anchor: "east")

  bezier((4.15, 3.25), (5.8, 3.62), (4.75, 3.48), (5.3, 3.6), mark: (end: ">"), stroke: 0.9pt + red)
  content((5.92, 3.62), text(size: 8.5pt)[$u$ cresce, $p$ diminuisce], anchor: "west")

  bezier((4.95, 1.02), (5.95, 0.45), (5.3, 0.8), (5.62, 0.48), mark: (end: ">"), stroke: 0.9pt + blue)
  content((6.08, 0.45), text(size: 8.5pt)[$u$ diminuisce, $p$ aumenta], anchor: "west")
})
