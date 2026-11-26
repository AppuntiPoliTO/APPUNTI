// Figura estratta da fatica.typ (riga 3358) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.05cm, {
  // BBox: x in [-2.55, 3.45] (dx=6.00), y in [-0.45, 3.05], length=1.05cm -> larghezza = 6.30 cm <= 8.2 cm
  import draw: *

  // Assi cartesiani (sigma_min, sigma_max)
  line((-2.50, 0), (2.85, 0), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((2.95, 0), anchor: "west", text(size: 8pt)[$sigma_"min"$])
  line((0, -0.25), (0, 2.95), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((-0.12, 2.88), anchor: "east", text(size: 8pt)[$sigma_"max"$])

  // Assi ausiliari inclinati a +-45 gradi
  line((0, 0), (2.65, 2.65), stroke: (paint: black.transparentize(20%), thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((2.72, 2.72), anchor: "south-west", text(size: 8pt)[$sigma_m$])
  line((0, 0), (-2.10, 2.10), stroke: (paint: black.transparentize(20%), thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
  content((-2.17, 2.17), anchor: "south-east", text(size: 8pt)[$sigma_a$])

  // Livello di snervamento Rp0.2 tratteggiato fino al ginocchio e contorno superiore spesso
  line((0, 2.30), (1.35, 2.30), stroke: (paint: black, dash: "dashed", thickness: 0.7pt))
  line((-2.30, 0.20), (1.35, 2.30), (2.30, 2.30), stroke: (paint: black, thickness: 1.2pt))
  content((0.68, 2.38), anchor: "south", text(size: 7.5pt)[$R_"p0.2"$])

  // Punto P(0.72, 1.02) sopra la bisettrice sigma_m e proiezione verticale fino a sigma_max^lim = 1.937
  line((0.72, 0), (0.72, 1.02), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((0.72, 1.02), (0.72, 1.937), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
  line((0, 1.02), (0.72, 1.02), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((0, 1.937), (0.72, 1.937), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  circle((0.72, 1.02), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((0.64, 1.08), anchor: "south-east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((0.72, -0.15), anchor: "north", text(size: 7.5pt)[$sigma_"min"^P$])
  content((-0.08, 0.98), anchor: "east", text(size: 7.5pt)[$sigma_"max"^P$])
  content((-0.08, 1.937), anchor: "east", text(size: 7.5pt)[$sigma_"max"^"lim"$])
})
