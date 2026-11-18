// Figura estratta da capitoli/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.6cm, {
  import draw: *

  circle((1.8, 2.75), radius: (1.4, 0.39), fill: c-aux.transparentize(92%), stroke: none)
  circle((1.8, 0.85), radius: (1.4, 0.39), fill: c-aux.transparentize(96%), stroke: none)
  circle((1.8, 0.85), radius: (0.2, 0.06), fill: c-aux.transparentize(84%), stroke: none)

  arc((1.8, 0.85), start: 0deg, stop: 180deg, radius: (1.4, 0.39), anchor: "origin", stroke: (dash: "dashed", thickness: 0.7pt))
  arc((1.8, 0.85), start: 180deg, stop: 360deg, radius: (1.4, 0.39), anchor: "origin", stroke: 1pt)
  line((0.4, 0.85), (0.4, 3.2), stroke: 1pt)
  line((3.2, 0.85), (3.2, 3.2), stroke: 1pt)
  circle((1.8, 3.2), radius: (1.4, 0.39), stroke: 1pt)
  circle((1.8, 2.75), radius: (1.4, 0.39), stroke: 0.85pt)
  circle((1.8, 0.85), radius: (0.2, 0.06), stroke: 0.75pt)

  line((0.75, 2.0), (0.75, 2.75), mark: (end: ">"), stroke: 0.7pt)
  line((0.75, 1.6), (0.75, 0.85), mark: (end: ">"), stroke: 0.7pt)
  content((0.75, 1.8), text(size: 8.5pt)[$Delta$], anchor: "center")

  circle((1.85, 2.75), radius: 0.045, fill: black, stroke: none)
  content((1.94, 2.84), text(size: 8.5pt)[$A$], anchor: "south-west")

  bezier((1.85, 2.75), (1.8, 0.45), (1.82, 1.9), (1.8, 1.2), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((1.6, 0.85), (1.67, 0.45), (1.65, 0.7), (1.67, 0.58), stroke: 0.8pt)
  line((1.67, 0.45), (1.67, 0.15), stroke: 0.8pt)
  bezier((2.0, 0.85), (1.93, 0.45), (1.95, 0.7), (1.93, 0.58), stroke: 0.8pt)
  line((1.93, 0.45), (1.93, 0.15), stroke: 0.8pt)

  arc((1.8, 0.45), start: 0deg, stop: 180deg, radius: (0.13, 0.04), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  arc((1.8, 0.45), start: 180deg, stop: 360deg, radius: (0.13, 0.04), anchor: "origin", stroke: 0.65pt)
  arc((1.8, 0.15), start: 0deg, stop: 180deg, radius: (0.13, 0.04), anchor: "origin", stroke: (dash: "dashed", thickness: 0.5pt))
  arc((1.8, 0.15), start: 180deg, stop: 360deg, radius: (0.13, 0.04), anchor: "origin", stroke: 0.65pt)
  line((1.8, 0.45), (1.8, 0.08), mark: (end: ">"), stroke: 0.7pt)

  circle((1.8, 0.45), radius: 0.04, fill: black, stroke: none)
  content((1.98, 0.45), text(size: 8.5pt)[$B$], anchor: "west")

  circle((1.8, 0.62), radius: 0.6, stroke: 0.75pt)
  bezier((2.4, 0.62), (4.45, 2.6), (3.45, 0.62), (3.35, 2.6), mark: (end: ">"), stroke: 0.75pt)

  line((5.0, 2.27), (8.7, 2.27), (9.6, 2.83), (5.9, 2.83), close: true, fill: c-aux.transparentize(91%), stroke: none)
  line((5.0, 2.27), (8.7, 2.27), (8.7, 2.13), (5.0, 2.13), close: true, fill: c-aux.transparentize(84%), stroke: none)
  line((8.7, 2.27), (9.6, 2.83), (9.6, 2.69), (8.7, 2.13), close: true, fill: c-aux.transparentize(87%), stroke: none)
  circle((7.3, 2.55), radius: (0.7, 0.2), fill: white, stroke: none)
  circle((7.3, 1.15), radius: (0.45, 0.13), fill: c-aux.transparentize(93%), stroke: none)

  bezier((6.83, 2.41), (6.9, 2.13), (6.855, 2.316), (6.878, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((6.9, 2.13), (7.0, 1.15), (6.965, 1.813), (7.0, 1.497), stroke: 0.6pt)
  line((7.0, 1.15), (7.0, 0.55), stroke: 0.6pt)

  bezier((7.07, 2.41), (7.1, 2.13), (7.082, 2.316), (7.092, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.1, 2.13), (7.15, 1.15), (7.132, 1.813), (7.15, 1.497), stroke: 0.6pt)
  line((7.15, 1.15), (7.15, 0.55), stroke: 0.6pt)

  line((7.3, 2.41), (7.3, 2.13), stroke: (dash: "dashed", thickness: 0.55pt))
  line((7.3, 2.13), (7.3, 0.55), stroke: 0.6pt)

  bezier((7.53, 2.41), (7.5, 2.13), (7.518, 2.316), (7.508, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.5, 2.13), (7.45, 1.15), (7.468, 1.813), (7.45, 1.497), stroke: 0.6pt)
  line((7.45, 1.15), (7.45, 0.55), stroke: 0.6pt)

  bezier((7.77, 2.41), (7.7, 2.13), (7.745, 2.316), (7.722, 2.222), stroke: (dash: "dashed", thickness: 0.55pt))
  bezier((7.7, 2.13), (7.6, 1.15), (7.635, 1.813), (7.6, 1.497), stroke: 0.6pt)
  line((7.6, 1.15), (7.6, 0.55), stroke: 0.6pt)

  bezier((6.6, 2.41), (6.7, 2.13), (6.637, 2.316), (6.67, 2.222), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((6.7, 2.13), (6.85, 1.15), (6.797, 1.813), (6.85, 1.497), stroke: 1pt)
  line((6.85, 1.15), (6.85, 0.55), stroke: 1pt)

  bezier((8.0, 2.41), (7.9, 2.13), (7.963, 2.316), (7.93, 2.222), stroke: (dash: "dashed", thickness: 0.7pt))
  bezier((7.9, 2.13), (7.75, 1.15), (7.803, 1.813), (7.75, 1.497), stroke: 1pt)
  line((7.75, 1.15), (7.75, 0.55), stroke: 1pt)

  arc((7.3, 1.15), start: 0deg, stop: 180deg, radius: (0.45, 0.13), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((7.3, 1.15), start: 180deg, stop: 360deg, radius: (0.45, 0.13), anchor: "origin", stroke: 0.85pt)

  arc((7.3, 0.55), start: 0deg, stop: 180deg, radius: (0.45, 0.13), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((7.3, 0.55), start: 180deg, stop: 360deg, radius: (0.45, 0.13), anchor: "origin", stroke: 1pt)

  line((5.0, 2.27), (8.7, 2.27), (9.6, 2.83), (5.9, 2.83), close: true, stroke: 0.9pt)
  line((5.0, 2.27), (5.0, 2.13), (8.7, 2.13), (8.7, 2.27), stroke: 0.9pt)
  line((8.7, 2.13), (9.6, 2.69), (9.6, 2.83), stroke: 0.9pt)
  circle((7.3, 2.55), radius: (0.7, 0.2), stroke: 0.9pt)
  arc((7.3, 2.41), start: 20.5deg, stop: 159.5deg, radius: (0.7, 0.2), anchor: "origin", stroke: 0.75pt)

  line((6.6, 2.62), (6.6, 3.22), stroke: 0.55pt)
  line((8.0, 2.62), (8.0, 3.22), stroke: 0.55pt)
  line((7.1, 3.08), (6.6, 3.08), mark: (end: ">"), stroke: 0.7pt)
  line((7.5, 3.08), (8.0, 3.08), mark: (end: ">"), stroke: 0.7pt)
  content((7.3, 3.08), text(size: 8.5pt)[$d$], anchor: "center")

  line((4.55, 2.41), (6.56, 2.41), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.55, 1.15), (6.8, 1.15), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.65, 1.98), (4.65, 2.41), mark: (end: ">"), stroke: 0.7pt)
  line((4.65, 1.58), (4.65, 1.15), mark: (end: ">"), stroke: 0.7pt)
  content((4.65, 1.78), text(size: 8.5pt)[$delta tilde d$], anchor: "center")

  circle((7.3, 1.15), radius: 0.045, fill: black, stroke: none)
  rect((7.36, 0.87), (7.58, 1.09), fill: white, stroke: none)
  content((7.47, 0.98), text(size: 8.5pt)[$B$], anchor: "center")

  line((6.18, 0.45), (6.78, 0.72), mark: (end: ">"), stroke: 0.7pt)
  content((5.5, 0.38), text(size: 8pt)[traiettorie], anchor: "center")
  content((5.5, 0.12), text(size: 8pt)[parallele], anchor: "center")

  content((8.8, 0.55), text(size: 8pt)[Vena], anchor: "center")
  content((8.8, 0.29), text(size: 8pt)[contracta], anchor: "center")
})
