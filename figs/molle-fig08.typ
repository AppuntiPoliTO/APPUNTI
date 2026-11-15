// Figura estratta da molle.typ (riga 777) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  import draw: *

  line((-1.05, 0.0), (-0.15, 0.0), stroke: 0.7pt)
  line((0.15, 0.0), (1.05, 0.0), stroke: 0.7pt)
  line((-0.08, 0.0), (0.08, 0.0), stroke: 0.7pt)
  line((0.0, -0.45), (0.0, 0.12), stroke: 0.7pt)

  line((0.0, 0.22), (0.0, 4.90), stroke: 0.7pt)
  line((0.0, 5.05), (0.0, 6.20), stroke: 0.7pt)
  content((0.12, 5.95), [#text(size: 8pt)[Piano m]], anchor: "west")

  line((0.0, 0.22), (-0.85, 4.82), stroke: 0.7pt)
  line((-0.88, 4.98), (-1.08, 6.12), stroke: 0.7pt)
  content((-1.15, 5.75), [#text(size: 8pt)[Piano n]], anchor: "east")

  arc((0.0, 0.0), start: 52deg, stop: 126deg, radius: 4.60, anchor: "origin", stroke: 1pt)
  arc((0.0, 0.0), start: 52deg, stop: 126deg, radius: 3.20, anchor: "origin", stroke: 1pt)

  arc((0.0, 0.0), start: 45deg, stop: 62deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 65deg, stop: 112deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 115deg, stop: 123deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)
  arc((0.0, 0.0), start: 126deg, stop: 136deg, radius: 3.90, anchor: "origin", stroke: 0.7pt)

  bezier((-2.70, 3.72), (-2.29, 3.16), (-2.92, 3.52), (-2.50, 3.25), stroke: 0.9pt)
  bezier((-2.29, 3.16), (-1.88, 2.59), (-2.08, 3.07), (-1.75, 2.75), stroke: 0.9pt)
  bezier((-2.29, 3.16), (-1.88, 2.59), (-2.52, 2.92), (-2.12, 2.45), stroke: 0.9pt)

  bezier((2.83, 3.62), (2.40, 3.07), (3.02, 3.42), (2.60, 3.18), stroke: 0.9pt)
  bezier((2.40, 3.07), (1.97, 2.52), (2.20, 2.96), (1.85, 2.68), stroke: 0.9pt)
  bezier((2.40, 3.07), (1.97, 2.52), (2.62, 2.84), (2.20, 2.38), stroke: 0.9pt)

  circle((-0.56, 3.15), radius: 0.06, fill: black, stroke: none)
  circle((0.0, 3.20), radius: 0.06, fill: black, stroke: none)
  circle((-0.80, 4.53), radius: 0.06, fill: black, stroke: none)
  circle((0.0, 4.60), radius: 0.06, fill: black, stroke: none)

  content((-0.68, 2.85), [#text(size: 8pt)[$a$]], anchor: "east")
  content((0.15, 2.85), [#text(size: 8pt)[$b$]], anchor: "west")
  content((-0.92, 4.82), [#text(size: 8pt)[$c$]], anchor: "east")
  content((0.15, 4.85), [#text(size: 8pt)[$d$]], anchor: "west")

  line((0.0, 3.20), (-1.55, 3.20), stroke: 0.9pt)
  line((0.0, 4.60), (0.95, 4.50), stroke: 0.9pt)

  arc((-1.788, 6.712), start: -86.12deg, stop: -38.93deg, radius: 3.520, anchor: "origin", stroke: (paint: red, thickness: 1.8pt))

  line((-1.25, 2.35), (-1.52, 3.12), mark: (end: ">"), stroke: 0.6pt)
  content((-1.15, 1.75), [#text(size: 8pt)[$tau > display((T c) / J)$]], anchor: "center")
  content((1.45, 5.15), [#text(size: 8pt)[$tau < display((T c) / J)$]], anchor: "west")

  arc((-3.55, 2.45), start: -12deg, stop: 62deg, radius: 1.80, anchor: "origin", mark: (start: ">"), stroke: 1.5pt)
  content((-2.05, 1.75), [#text(size: 8pt)[$T$]], anchor: "north")

  arc((0.55, 4.20), start: -56deg, stop: 5deg, radius: 1.95, anchor: "origin", mark: (end: ">"), stroke: 1.5pt)
  content((2.60, 4.55), [#text(size: 8pt)[$T$]], anchor: "south")

  content((0.0, -0.95), [#text(size: 8pt)[(b)]], anchor: "center")
  content((0.0, -1.65), [#text(size: 8pt)[Barra di torsione ad asse curvo]], anchor: "center")
})
