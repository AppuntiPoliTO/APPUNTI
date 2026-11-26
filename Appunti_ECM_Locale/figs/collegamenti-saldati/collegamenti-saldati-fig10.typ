// Figura estratta da collegamenti saldati.typ (riga 1379) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  line((0.2, 0.7), (0.5, 0.4), stroke: 0.55pt)
  line((0.2, 1.1), (0.9, 0.4), stroke: 0.55pt)
  line((0.2, 1.5), (1.3, 0.4), stroke: 0.55pt)
  line((0.5, 1.6), (1.7, 0.4), stroke: 0.55pt)
  line((0.9, 1.6), (1.896, 0.604), stroke: 0.55pt)
  line((1.3, 1.6), (1.572, 1.328), stroke: 0.55pt)

  line((2.164, 0.736), (2.5, 0.4), stroke: 0.55pt)
  line((2.287, 1.013), (2.9, 0.4), stroke: 0.55pt)
  line((2.411, 1.289), (3.3, 0.4), stroke: 0.55pt)
  line((2.535, 1.565), (3.7, 0.4), stroke: 0.55pt)
  line((2.9, 1.6), (3.8, 0.7), stroke: 0.55pt)
  line((3.3, 1.6), (3.8, 1.1), stroke: 0.55pt)
  line((3.7, 1.6), (3.8, 1.5), stroke: 0.55pt)

  line((1.92, 0.46), (2.137, 0.677), stroke: 0.5pt)
  line((1.905, 0.585), (2.250, 0.930), stroke: 0.5pt)
  line((1.861, 0.681), (2.364, 1.184), stroke: 0.5pt)
  line((1.818, 0.778), (2.477, 1.437), stroke: 0.5pt)
  line((1.775, 0.875), (2.531, 1.631), stroke: 0.5pt)
  line((1.731, 0.971), (2.470, 1.710), stroke: 0.5pt)
  line((1.688, 1.068), (2.399, 1.779), stroke: 0.5pt)
  line((1.645, 1.165), (2.316, 1.836), stroke: 0.5pt)
  line((1.602, 1.262), (2.220, 1.880), stroke: 0.5pt)
  line((1.558, 1.358), (2.110, 1.910), stroke: 0.5pt)
  line((1.515, 1.455), (1.980, 1.920), stroke: 0.5pt)
  line((1.472, 1.552), (1.811, 1.891), stroke: 0.5pt)

  line((0.2, 1.6), (1.45, 1.6), stroke: 1pt)
  line((2.55, 1.6), (3.8, 1.6), stroke: 1pt)
  line((0.2, 0.4), (1.92, 0.4), stroke: 1pt)
  line((1.92, 0.4), (1.92, 0.45), stroke: 1pt)
  arc((2.0, 0.45), start: 0deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((2.08, 0.45), (2.08, 0.4), stroke: 1pt)
  line((2.08, 0.4), (3.8, 0.4), stroke: 1pt)

  line((1.45, 1.6), (1.92, 0.55), (1.92, 0.45), stroke: 0.9pt)
  line((2.55, 1.6), (2.08, 0.55), (2.08, 0.45), stroke: 0.9pt)
  arc((2.0, 1.287), start: 29.62deg, stop: 150.38deg, radius: 0.633, anchor: "origin", stroke: 1pt)

  line((1.82, 1.07), (1.92, 1.19), (2.04, 1.29), (1.94, 1.17), close: true, fill: black, stroke: none)

  line((3.15, 2.22), (2.61, 1.66), mark: (end: ">"), stroke: 1.5pt)
  line((1.20, 0.52), (1.80, 1.06), mark: (end: ">"), stroke: 1.5pt)
  line((2.62, -0.22), (2.08, 0.34), mark: (end: ">"), stroke: 1.5pt)

  content((3.18, 2.26), text(size: 8pt)[_Intaglio_], anchor: "south-west")
  content((1.10, 0.26), text(size: 8pt)[_Fessura \ interna_], anchor: "north")
  content((2.66, -0.24), text(size: 8pt)[_Intaglio_], anchor: "north-west")

  line((5.4, 0.7), (5.7, 0.4), stroke: 0.55pt)
  line((5.4, 1.1), (6.1, 0.4), stroke: 0.55pt)
  line((5.4, 1.5), (6.5, 0.4), stroke: 0.55pt)
  line((5.7, 1.6), (6.9, 0.4), stroke: 0.55pt)
  line((6.1, 1.6), (7.096, 0.604), stroke: 0.55pt)
  line((6.5, 1.6), (6.772, 1.328), stroke: 0.55pt)

  line((7.364, 0.736), (7.7, 0.4), stroke: 0.55pt)
  line((7.487, 1.013), (8.1, 0.4), stroke: 0.55pt)
  line((7.611, 1.289), (8.5, 0.4), stroke: 0.55pt)
  line((7.735, 1.565), (8.9, 0.4), stroke: 0.55pt)
  line((8.1, 1.6), (9.0, 0.7), stroke: 0.55pt)
  line((8.5, 1.6), (9.0, 1.1), stroke: 0.55pt)
  line((8.9, 1.6), (9.0, 1.5), stroke: 0.55pt)

  line((7.12, 0.46), (7.337, 0.677), stroke: 0.5pt)
  line((7.105, 0.585), (7.450, 0.930), stroke: 0.5pt)
  line((7.061, 0.681), (7.564, 1.184), stroke: 0.5pt)
  line((7.018, 0.778), (7.677, 1.437), stroke: 0.5pt)
  line((6.975, 0.875), (7.700, 1.600), stroke: 0.5pt)
  line((6.931, 0.971), (7.560, 1.600), stroke: 0.5pt)
  line((6.888, 1.068), (7.420, 1.600), stroke: 0.5pt)
  line((6.845, 1.165), (7.280, 1.600), stroke: 0.5pt)
  line((6.802, 1.262), (7.140, 1.600), stroke: 0.5pt)
  line((6.758, 1.358), (7.000, 1.600), stroke: 0.5pt)
  line((6.715, 1.455), (6.860, 1.600), stroke: 0.5pt)
  line((6.672, 1.552), (6.720, 1.600), stroke: 0.5pt)

  line((7.637, 1.347), (7.890, 1.600), stroke: 0.5pt)
  line((7.523, 1.093), (8.030, 1.600), stroke: 0.5pt)
  line((7.474, 0.904), (8.170, 1.600), stroke: 0.5pt)
  line((7.570, 0.860), (8.270, 1.560), stroke: 0.5pt)
  line((7.684, 0.834), (8.296, 1.446), stroke: 0.5pt)
  line((7.825, 0.835), (8.295, 1.305), stroke: 0.5pt)
  line((8.047, 0.917), (8.213, 1.083), stroke: 0.5pt)

  line((5.4, 1.6), (9.0, 1.6), stroke: 1pt)
  line((5.4, 0.4), (9.0, 0.4), stroke: 1pt)
  line((6.65, 1.6), (7.12, 0.55), (7.12, 0.4), stroke: 0.9pt)
  line((7.75, 1.6), (7.28, 0.55), (7.28, 0.4), stroke: 0.9pt)

  circle((7.75, 1.38), radius: 0.55, stroke: 0.75pt)
  line((8.35, 2.50), (7.77, 1.63), mark: (end: ">"), stroke: (paint: red, thickness: 0.9pt))

  content((7.35, 2.22), text(size: 8pt)[_Intaglio \ metallurgico_], anchor: "south")

})
