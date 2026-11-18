// Figura estratta da molle.typ (riga 2960) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  rect((-1.15, -0.75), (5.65, 2.55), stroke: none)

  line((2.05, 0.1), (2.95, 0.1), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.2), (2.95, 0.2), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.3), (2.95, 0.3), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.4), (2.95, 0.4), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.5), (2.95, 0.5), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.6), (2.95, 0.6), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.7), (2.95, 0.7), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.8), (2.95, 0.8), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.9), (2.95, 0.9), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.0), (2.95, 1.0), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.1), (2.95, 1.1), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.2), (2.95, 1.2), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.3), (2.95, 1.3), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.4), (2.95, 1.4), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.5), (2.95, 1.5), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.6), (2.95, 1.6), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 1.7), (2.95, 1.7), stroke: (thickness: 0.5pt, paint: luma(70)))

  rect((0.0, 0.0), (4.5, 1.8), stroke: (thickness: 1.2pt, paint: black))
  rect((2.05, 0.0), (2.95, 1.8), stroke: (thickness: 1.8pt, paint: black))
  line((-0.45, 0.90), (4.75, 0.90), stroke: (dash: "dash-dotted", thickness: 1.5pt, paint: black))

  line((-0.75, 0.0), (0.0, 0.0), stroke: (thickness: 0.6pt, paint: black))
  line((-0.75, 1.8), (0.0, 1.8), stroke: (thickness: 0.6pt, paint: black))
  line((-0.60, 0.0), (-0.60, 1.8), mark: (start: ">", end: ">"), stroke: (thickness: 0.6pt, paint: black))

  line((0.0, 0.0), (0.0, -0.65), stroke: (thickness: 0.6pt, paint: black))
  line((4.5, 0.0), (4.5, -0.65), stroke: (thickness: 0.6pt, paint: black))
  line((0.0, -0.50), (4.5, -0.50), mark: (start: ">", end: ">"), stroke: (thickness: 0.6pt, paint: black))

  line((2.05, 1.8), (2.95, 1.8), mark: (end: ">"), stroke: (thickness: 1.4pt, paint: red))

  content((-0.80, 0.90), [$h$], anchor: "east")
  content((2.25, -0.44), [$l$], anchor: "south")
  content((2.50, 1.96), [$overline(sigma)$], anchor: "south")
})
