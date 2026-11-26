// Figura estratta da collegamenti filettati.typ (riga 800) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((-2.0, 0), (2.0, 0), (2.0, 1.45), (-2.0, 0.85), close: true, fill: black.transparentize(82%), stroke: none)
  line((-4.1, 0), (3.5, 0), stroke: 0.6pt)
  line((-4.1, 1.185), (0.232, 1.185), stroke: 0.6pt)
  line((2.0, 1.45), (3.5, 1.675), stroke: 0.6pt)
  line((-2.0, 0), (2.0, 0), (2.0, 1.45), (-2.0, 0.85), close: true, stroke: 1.05pt)
  line((-2.0, 0.45), (2.0, 0.45), stroke: 0.9pt)
  arc((-5.65, 0), start: -3.34deg, stop: 17.46deg, radius: 6.0, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.75pt))
  line((-3.2, 0), (-3.2, 1.185), mark: (start: ">", end: ">"), stroke: 0.7pt)
  arc((-7.667, 0), start: 0deg, stop: 8.531deg, radius: 10.667, anchor: "origin", mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((-3.4, 0.592), text(size: 8.5pt)[$L$], anchor: "east")
  content((3.15, 0.80), text(size: 8.5pt)[$alpha$], anchor: "west")
})
