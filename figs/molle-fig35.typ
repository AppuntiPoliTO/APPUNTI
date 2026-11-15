// Figura estratta da molle.typ (riga 1128) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  arc((0, 0), start: 0deg, stop: 180deg, radius: 3.0, anchor: "origin", stroke: 1pt)
  arc((0, 0), start: 0deg, stop: 180deg, radius: 1.4, anchor: "origin", stroke: 1pt)
  line((-3.0, 0), (-1.4, 0), stroke: 1pt)
  line((1.4, 0), (3.0, 0), stroke: 1pt)
  line((-0.9, 0), (0.9, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -0.9), (0, 0.9), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  bezier((-3.0, 0.85), (-2.1, 0), (-2.7, 0.8), (-2.4, 0.62), stroke: 0.8pt)
  bezier((-2.1, 0), (-1.4, -1.2), (-1.87, -0.48), (-1.63, -0.95), stroke: 0.8pt)
  line((-3.0, 0), (-3.0, 0.85), mark: (end: "straight"), stroke: 0.8pt)
  line((-2.7, 0), (-2.7, 0.75), mark: (end: "straight"), stroke: 0.8pt)
  line((-2.4, 0), (-2.4, 0.49), mark: (end: "straight"), stroke: 0.8pt)
  line((-1.93, 0), (-1.93, -0.36), mark: (end: "straight"), stroke: 0.8pt)
  line((-1.75, 0), (-1.75, -0.69), mark: (end: "straight"), stroke: 0.8pt)
  line((-1.58, 0), (-1.58, -0.98), mark: (end: "straight"), stroke: 0.8pt)
  line((-1.4, 0), (-1.4, -1.2), mark: (end: "straight"), stroke: 0.8pt)
  content((-3.08, 0.45), [$sigma_c +$], anchor: "east")
  content((-1.32, -1.0), [$sigma_c -$], anchor: "west")
})
