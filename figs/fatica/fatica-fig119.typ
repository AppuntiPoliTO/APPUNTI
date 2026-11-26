// Figura estratta da fatica.typ (riga 5103) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.94cm, {
  // BBox: x in [-1.35, 15.35] (dx=16.7), y in [-0.65, 5.15], length=0.94cm -> larghezza = 15.70 cm <= 17.0 cm
  import draw: *

  // --- Pannello sinistro: Diagramma di Haigh ---
  content((2.9, 4.95), anchor: "center", text(size: 8.5pt, weight: "bold")[Diagramma di Haigh])
  line((0, 0), (0, 4.65), stroke: 0.9pt, mark: (end: ">"))
  line((0, 0), (6.15, 0), stroke: 0.9pt, mark: (end: ">"))
  content((-0.18, 4.55), anchor: "east", text(size: 8.5pt)[$sigma_a$])
  content((6.25, 0.0), anchor: "west", text(size: 8.5pt)[$sigma_m$])

  // Retta limite di Goodman da sigma_D-1 (2.85) a R_m (5.70)
  line((0, 2.85), (5.70, 0), stroke: 1.1pt)
  content((-0.15, 2.85), anchor: "east", text(size: 8pt)[$sigma_"D-1"$])
  content((5.70, -0.18), anchor: "north", text(size: 8pt)[$R_m$])

  // Lettura di sigma_D,i (1.95) in corrispondenza di sigma_m,i (1.80)
  line((1.80, 0), (1.80, 1.95), stroke: (dash: "dotted", thickness: 0.75pt, paint: red.transparentize(10%)))
  line((1.80, 1.95), (0, 1.95), stroke: (dash: "dotted", thickness: 0.75pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.6))
  circle((1.80, 1.95), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((1.80, -0.18), anchor: "north", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"m,i"$])
  content((-0.15, 1.95), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"D,i"$])

  // Punto di lavoro (sigma_m,i, sigma_ai) = (1.80, 2.40) e riduzione a sigma_m = 0 -> sigma_a,eq,0 = 3.508
  line((5.70, 0), (1.80, 2.40), stroke: (dash: "dashed", thickness: 0.6pt, paint: blue.transparentize(35%)))
  line((1.80, 2.40), (0, 3.508), stroke: (dash: "dashed", thickness: 0.85pt, paint: blue), mark: (end: ">", scale: 0.6))
  line((1.80, 1.95), (1.80, 2.40), stroke: (dash: "dotted", thickness: 0.65pt, paint: black.transparentize(35%)))
  circle((1.80, 2.40), radius: 0.075, fill: blue, stroke: none)
  circle((0, 3.508), radius: 0.065, fill: blue, stroke: none)
  content((-0.15, 3.508), anchor: "east", text(size: 8pt, fill: blue)[$sigma_"a,eq,0"$])
  content((1.98, 2.48), anchor: "south-west", text(size: 7.2pt, fill: blue)[$(sigma_"m,i", sigma_"ai")$])
  content((1.05, 3.48), anchor: "west", text(size: 7pt, fill: blue)[Riduzione a $sigma_m = 0$])

  // --- Freccia di raccordo Haigh -> Wohler ---
  line((6.25, 1.95), (7.42, 1.95), stroke: (paint: red.transparentize(10%), thickness: 1.25pt), mark: (end: ">", scale: 0.78))
  content((6.84, 2.18), anchor: "south", text(size: 7.2pt, fill: red.transparentize(10%))[Raccordo $sigma_"D,i"$])

  // --- Pannello destro: Famiglia di curve S-N ---
  content((11.75, 4.95), anchor: "center", text(size: 8.5pt, weight: "bold")[Famiglia di curve #box[$S$–$N$]])
  for gx in (9.9, 11.268, 12.2, 13.2, 14.3) {
    line((gx, 0), (gx, 4.45), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
  }
  for gy in (0.95, 1.95, 2.85, 3.95) {
    line((8.5, gy), (14.8, gy), stroke: (paint: black.transparentize(88%), thickness: 0.4pt))
  }

  line((8.5, 0), (8.5, 4.65), stroke: 0.9pt, mark: (end: ">"))
  line((8.5, 0), (15.05, 0), stroke: 0.9pt, mark: (end: ">"))
  content((8.35, 4.55), anchor: "east", text(size: 8.5pt)[$sigma_a$])
  content((15.10, -0.18), anchor: "north", text(size: 8.5pt)[$N$])
  content((8.80, -0.18), anchor: "north", text(size: 7.5pt)[$10^2$])
  content((10.05, -0.18), anchor: "north", text(size: 7.5pt)[$10^4$])
  content((13.2, -0.18), anchor: "north", text(size: 8pt)[$N_G$])

  // Curva sigma_m = 0 (ginocchio a 2.85)
  line((8.8, 4.35), (13.2, 2.85), stroke: (paint: black.transparentize(20%), thickness: 0.95pt))
  line((13.2, 2.85), (14.8, 2.85), stroke: (paint: black.transparentize(20%), thickness: 0.95pt))
  content((8.35, 2.85), anchor: "east", text(size: 7.5pt)[$sigma_"D-1"$])
  content((13.35, 3.00), anchor: "south-west", text(size: 7.5pt)[$sigma_m = 0$])

  // Curva sigma_m = sigma_m,i (ginocchio a 1.95)
  line((8.8, 2.976), (13.2, 1.95), stroke: 1.2pt)
  line((13.2, 1.95), (14.8, 1.95), stroke: 1.2pt)
  line((8.5, 1.95), (13.10, 1.95), stroke: (dash: "dashed", thickness: 0.8pt, paint: red.transparentize(10%)), mark: (end: ">", scale: 0.62))
  circle((13.2, 1.95), radius: 0.075, fill: red.transparentize(10%), stroke: none)
  content((8.35, 1.95), anchor: "east", text(size: 8pt, fill: red.transparentize(10%))[$sigma_"D,i"$])
  content((13.35, 2.10), anchor: "south-west", text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_m = sigma_"m,i"$])

  // Lettura concorde di N_i (x = 11.268) dalle due procedure
  let xni = 11.268
  line((8.5, 2.40), (xni, 2.40), stroke: (dash: "dotted", thickness: 0.7pt))
  line((8.5, 3.508), (xni, 3.508), stroke: (dash: "dashed", thickness: 0.75pt, paint: blue))
  line((xni, 3.508), (xni, 0), stroke: (dash: "dotted", thickness: 0.75pt, paint: blue))
  circle((xni, 2.40), radius: 0.068, fill: black, stroke: none)
  circle((xni, 3.508), radius: 0.072, fill: blue, stroke: none)
  content((8.35, 2.40), anchor: "east", text(size: 7.5pt)[$sigma_"ai"$])
  content((8.35, 3.508), anchor: "east", text(size: 7.5pt, fill: blue)[$sigma_"a,eq,0"$])
  content((xni, -0.18), anchor: "north", text(size: 8pt, fill: blue)[$N_i$])

  // Curva sigma_m > sigma_m,i
  line((8.8, 2.15), (13.2, 0.95), stroke: (paint: black.transparentize(45%), thickness: 0.85pt))
  line((13.2, 0.95), (14.8, 0.95), stroke: (paint: black.transparentize(45%), thickness: 0.85pt))
  content((13.35, 0.78), anchor: "north-west", text(size: 7.5pt, fill: black.transparentize(35%))[$sigma_m > sigma_"m,i"$])

  // Proiezione verticale al ginocchio N_G
  line((13.2, 2.85), (13.2, 0), stroke: (dash: "dotted", thickness: 0.6pt))
})
