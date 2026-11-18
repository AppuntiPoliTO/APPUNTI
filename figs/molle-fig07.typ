// Figura estratta da molle.typ (riga 740) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  line((-2.60, 0.75), (2.60, 0.75), stroke: 1pt)
  line((-2.60, -0.75), (2.60, -0.75), stroke: 1pt)

  bezier((-2.60, 0.75), (-2.60, 0.0), (-2.82, 0.50), (-2.75, 0.20), stroke: 0.9pt)
  bezier((-2.60, 0.0), (-2.60, -0.75), (-2.45, -0.20), (-2.42, -0.55), stroke: 0.9pt)
  bezier((-2.60, 0.0), (-2.60, -0.75), (-2.85, -0.25), (-2.85, -0.65), stroke: 0.9pt)

  bezier((2.60, 0.75), (2.60, 0.0), (2.80, 0.50), (2.75, 0.20), stroke: 0.9pt)
  bezier((2.60, 0.0), (2.60, -0.75), (2.45, -0.20), (2.42, -0.55), stroke: 0.9pt)
  bezier((2.60, 0.0), (2.60, -0.75), (2.85, -0.25), (2.85, -0.65), stroke: 0.9pt)

  line((-3.40, 0.0), (-2.45, 0.0), stroke: 0.8pt)
  line((-2.30, 0.0), (0.20, 0.0), stroke: 0.8pt)
  line((0.35, 0.0), (2.45, 0.0), stroke: 0.8pt)
  line((2.60, 0.0), (3.40, 0.0), stroke: 0.8pt)

  line((0.0, -0.75), (0.0, 0.75), stroke: 0.8pt)
  content((0.0, 0.95), [#text(size: 8pt)[$0$]], anchor: "south")
  content((0.0, -0.95), [#text(size: 8pt)[$0$]], anchor: "north")

  line((-1.15, -0.75), (1.15, 0.75), stroke: (paint: red, thickness: 1.8pt))

  content((1.15, 1.55), [#text(size: 8pt)[$tau = display((T c) / J)$]], anchor: "center")
  content((-1.05, -1.55), [#text(size: 8pt)[$tau = display((T c) / J)$]], anchor: "center")

  arc((-5.15, 0.0), start: -24deg, stop: 24deg, radius: 3.20, anchor: "origin", mark: (start: ">"), stroke: 1.5pt)
  content((-2.35, -1.55), [#text(size: 8pt)[$T$]], anchor: "north")

  arc((-0.95, 0.0), start: -22deg, stop: 24deg, radius: 3.20, anchor: "origin", mark: (end: ">"), stroke: 1.5pt)
  content((2.20, 1.55), [#text(size: 8pt)[$T$]], anchor: "south")

  content((0.0, -2.65), [#text(size: 8pt)[(a)]], anchor: "center")
  content((0.0, -3.35), [#text(size: 8pt)[Barra di torsione ad asse rettilineo]], anchor: "center")
})
