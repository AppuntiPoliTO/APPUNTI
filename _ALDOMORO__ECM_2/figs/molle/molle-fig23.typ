// Figura estratta da molle.typ (riga 3001) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.9cm, {
  import draw: *

  rect((-1.15, -0.75), (5.65, 2.55), stroke: none)

  line((2.25, 1.0), (2.35, 1.0), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.1), (2.45, 1.1), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.2), (2.55, 1.2), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.3), (2.65, 1.3), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.4), (2.75, 1.4), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.5), (2.85, 1.5), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.6), (2.95, 1.6), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.25, 1.7), (3.05, 1.7), stroke: (thickness: 0.5pt, paint: luma(70)))

  line((1.45, 0.1), (2.25, 0.1), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((1.55, 0.2), (2.25, 0.2), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((1.65, 0.3), (2.25, 0.3), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((1.75, 0.4), (2.25, 0.4), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((1.85, 0.5), (2.25, 0.5), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((1.95, 0.6), (2.25, 0.6), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.05, 0.7), (2.25, 0.7), stroke: (thickness: 0.5pt, paint: luma(70)))
  line((2.15, 0.8), (2.25, 0.8), stroke: (thickness: 0.5pt, paint: luma(70)))

  rect((0.0, 0.0), (4.5, 1.8), stroke: (thickness: 1.2pt, paint: black))
  line((2.25, 0.0), (2.25, 1.8), stroke: (thickness: 1.8pt, paint: black))
  line((1.35, 0.0), (3.15, 1.8), stroke: (thickness: 1.8pt, paint: black))
  line((1.35, 0.0), (2.25, 0.0), stroke: (thickness: 1.8pt, paint: black))
  line((2.25, 1.8), (3.15, 1.8), stroke: (thickness: 1.8pt, paint: black))
  line((-0.45, 0.90), (4.75, 0.90), stroke: (dash: "dash-dotted", thickness: 1.5pt, paint: black))

  line((2.25, 1.8), (3.15, 1.8), mark: (end: ">"), stroke: (thickness: 1.4pt, paint: red))

  arc((0.15, 1.25), start: 100deg, stop: 185deg, radius: 0.90, anchor: "origin", mark: (end: ">"), stroke: (thickness: 1.0pt, paint: black))
  arc((4.35, 1.25), start: -5deg, stop: 80deg, radius: 0.90, anchor: "origin", mark: (start: ">"), stroke: (thickness: 1.0pt, paint: black))

  content((2.70, 1.96), [$overline(sigma)$], anchor: "south")
  content((-0.55, 2.10), [$M$], anchor: "south")
  content((5.05, 2.10), [$M$], anchor: "south")
})
