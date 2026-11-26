// Figura estratta da fatica.typ (riga 4401) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.92cm, {
  // BBox: x in [-1.1, 14.5] (dx=15.6), y in [-1.15, 3.9], length=0.92cm -> larghezza = 14.35 cm <= 17.0 cm
  import draw: *

  // --- Pannello (a): Calcolo di CS ---
  line((-0.3, 0), (5.8, 0), stroke: 0.8pt, mark: (end: ">"))
  line((0, -0.3), (0, 3.7), stroke: 0.8pt, mark: (end: ">"))
  content((5.8, -0.22), anchor: "north", text(size: 8pt)[$sigma_m$])
  content((-0.18, 3.7), anchor: "east", text(size: 8pt)[$sigma_a$])

  line((0, 3.0), (5.2, 0), stroke: 1.1pt)
  circle((0, 3.0), radius: 0.045, fill: black, stroke: none)
  content((0.15, 3.10), anchor: "south-west", text(size: 8pt)[$sigma_(D-1)^C$])
  circle((5.2, 0), radius: 0.045, fill: black, stroke: none)
  content((5.2, -0.22), anchor: "north", text(size: 8pt)[$R_m$])

  line((1.9, 0), (1.9, 1.904), stroke: (paint: blue.darken(15%), thickness: 0.75pt))
  line((0, 0.95), (1.9, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
  line((0, 1.904), (1.9, 1.904), stroke: (dash: "dotted", thickness: 0.65pt))

  circle((1.9, 0), radius: 0.045, fill: black, stroke: none)
  content((2.00, 0.08), anchor: "south-west", text(size: 7.5pt)[$H$])
  content((1.9, -0.22), anchor: "north", text(size: 7.5pt)[$sigma_(m,"eq")$])

  circle((1.9, 0.95), radius: 0.06, fill: red, stroke: none)
  content((2.06, 0.95), anchor: "west", text(fill: red, size: 8pt)[$P$])
  content((-0.22, 0.95), anchor: "east", text(size: 7.5pt)[$sigma_(a,"eq")$])

  circle((1.9, 1.904), radius: 0.06, fill: blue, stroke: none)
  content((2.04, 2.04), anchor: "south-west", text(fill: blue, size: 8pt)[$L$])
  content((-0.22, 1.904), anchor: "east", text(size: 7.5pt)[$sigma_D^"lim"$])

  content((2.6, -0.78), anchor: "north", text(size: 8pt)[*(a)* Calcolo di $"CS"$])

  // --- Pannello (b): Retta limite ridotta ---
  line((8.1, 0), (13.3, 0), (8.1, 1.85), close: true, fill: black.transparentize(90%), stroke: none)

  line((7.8, 0), (13.9, 0), stroke: 0.8pt, mark: (end: ">"))
  line((8.1, -0.3), (8.1, 3.7), stroke: 0.8pt, mark: (end: ">"))
  content((13.9, -0.22), anchor: "north", text(size: 8pt)[$sigma_m$])
  content((7.92, 3.7), anchor: "east", text(size: 8pt)[$sigma_a$])

  line((8.1, 3.0), (13.3, 0), stroke: (dash: "dashed", thickness: 0.8pt, paint: black.transparentize(35%)))
  circle((8.1, 3.0), radius: 0.045, fill: black, stroke: none)
  content((8.25, 3.10), anchor: "south-west", text(size: 8pt)[$sigma_(D-1)^C$])

  line((8.1, 1.85), (13.3, 0), stroke: (paint: blue.darken(15%), thickness: 1.1pt))
  circle((8.1, 1.85), radius: 0.045, fill: blue.darken(15%), stroke: none)
  content((7.88, 1.85), anchor: "east", text(size: 7.5pt)[$frac(sigma_(D-1)^C, "CS")$])

  circle((13.3, 0), radius: 0.045, fill: black, stroke: none)
  content((13.3, -0.22), anchor: "north", text(size: 8pt)[$R_m$])

  line((8.1, 0.95), (10.0, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
  line((10.0, 0), (10.0, 0.95), stroke: (dash: "dotted", thickness: 0.65pt))
  circle((10.0, 0.95), radius: 0.06, fill: red, stroke: none)
  content((10.14, 0.88), anchor: "west", text(fill: red, size: 8pt)[$P$])
  content((7.88, 0.95), anchor: "east", text(size: 7.5pt)[$sigma_(a,"eq")$])
  content((10.0, -0.22), anchor: "north", text(size: 7.5pt)[$sigma_(m,"eq")$])

  line((11.6, 2.2), (10.9, 0.45), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  content((11.65, 2.25), anchor: "south", text(size: 7.5pt)[Area sicura per $"CS"$])

  content((10.7, -0.78), anchor: "north", text(size: 8pt)[*(b)* Retta limite ridotta])
})
