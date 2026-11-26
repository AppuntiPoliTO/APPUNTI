// Figura estratta da fatica.typ (riga 3294) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.96cm, {
  // BBox: x in [-3.1, 4.0] (dx=7.1), y in [-1.05, 2.75], length=0.96cm -> larghezza = 6.82 cm <= 8.2 cm
  import draw: *

  line((-3.1, 0), (3.4, 0), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((3.5, 0), anchor: "west", text(size: 8pt)[$sigma_m$])
  line((0, 0), (0, 2.55), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((-0.12, 2.48), anchor: "east", text(size: 8pt)[$sigma_a$])

  // Poligono a 4 tratti del componente (Goodman + tagli di Langer a Rp0.2 = 2.70)
  line(
    (-2.70, 0),
    (-0.911, 1.789),
    (1.990, 0.710),
    (2.70, 0),
    close: true,
    stroke: (paint: black, thickness: 1.05pt),
    fill: black.transparentize(92%),
  )
  content((-2.70, -0.14), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
  content((2.70, -0.14), anchor: "north", text(size: 7.5pt)[$R_"p0.2"$])
  content((0.12, 1.48), anchor: "south-west", text(size: 7.5pt)[$sigma_(D-1)^C$])

  // Punti P', P, P'' e frecce di traslazione
  line((-0.39, 0.45), (-1.26, 0.45), stroke: (paint: black.transparentize(40%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  line((-0.21, 0.45), (0.71, 0.45), stroke: (paint: black.transparentize(40%), thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  circle((-1.35, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  circle((-0.30, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  circle((0.80, 0.45), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((-1.47, 0.45), anchor: "east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P'$])
  content((-0.30, 0.59), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((0.92, 0.45), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P''$])

  // Proiezioni e quote inferiori
  line((-1.35, 0.45), (-1.35, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  line((-0.30, 0.45), (-0.30, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  line((0.80, 0.45), (0.80, -0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  line((-0.30, -0.56), (-1.35, -0.56), stroke: (paint: black, thickness: 0.65pt), mark: (end: ">", scale: 0.45, fill: black))
  line((-0.30, -0.56), (0.80, -0.56), stroke: (paint: black, thickness: 0.65pt), mark: (end: ">", scale: 0.45, fill: black))
  content((-0.825, -0.68), anchor: "north", text(size: 7.5pt)[$sigma_"res"(-)$])
  content((0.25, -0.68), anchor: "north", text(size: 7.5pt)[$sigma_"res"(+)$])
})
