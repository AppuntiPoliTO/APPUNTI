// Figura estratta da _immagini_orfane/figs_orfane/ecm-c11-p3-05.typ (riga 2) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((-1.645, -2.250), (-1.645, 3.350), (2.338, 5.650), (2.944, 5.300), stroke: 1pt)
  line((-1.039, -2.600), (-1.645, -2.250), stroke: 1pt)
  line((-1.039, 3.000), (-1.645, 3.350), stroke: 1pt)
  line((-1.039, -2.600), (-1.039, 3.000), (2.944, 5.300), stroke: 1pt)
  line((-1.039, -2.600), (2.944, -0.300), (2.944, 1.250), stroke: 1pt)
  line((2.944, 3.200), (2.944, 5.300), stroke: 1pt)

  line((0, 0.100), (0, 1.500), (0.476, 1.225), (0.476, -0.175), close: true, stroke: 1pt)
  line((0.476, 1.225), (4.633, 3.625), stroke: 1pt)
  line((0.476, -0.175), (4.633, 2.225), stroke: 1pt)
  line((2.252, 2.800), (4.157, 3.900), (4.633, 3.625), (4.633, 2.225), stroke: 1pt)

  line((0, 1.500), (0, 2.050), (0.476, 1.225), stroke: 1pt)
  line((0, 2.050), (2.252, 3.350), (2.728, 2.525), stroke: 1pt)

  line((0, 0.100), (0, -0.450), (0.476, -0.175), stroke: 1pt)
  line((0, -0.450), (2.252, 0.850), (2.728, 1.125), stroke: 1pt)

  line((4.633, 3.200), (5.845, 3.900), mark: (end: ">"), stroke: 1.1pt)
  content((5.75, 4.05), text(size: 9.5pt)[$P$], anchor: "south")

  line((0.325, 1.688), (0.775, 1.948), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((0.844, 1.988), (1.295, 2.248), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((1.364, 2.288), (1.814, 2.548), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((1.883, 2.588), (2.334, 2.848), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))

  line((0.325, -0.262), (0.775, -0.002), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((0.844, 0.038), (1.295, 0.298), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((1.364, 0.338), (1.814, 0.598), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((1.883, 0.638), (2.334, 0.898), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))

  content((2.10, 0.15), text(size: 10pt, fill: red)[$f_parallel$], anchor: "center")
})
