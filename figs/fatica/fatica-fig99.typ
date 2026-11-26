// Figura estratta da fatica.typ (riga 3175) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.94cm, {
  // BBox: x in [-3.0, 11.8] (dx=14.8), y in [-0.9, 7.6], length=0.94cm -> larghezza = 13.91 cm <= 17.0 cm
  import draw: *

  let haigh-base(ox, oy, titolo) = {
    content((ox + 0.15, oy + 2.68), anchor: "south", text(size: 8pt, weight: "bold")[#titolo])
    line((ox - 3.0, oy), (ox + 3.4, oy), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
    content((ox + 3.5, oy), anchor: "west", text(size: 8pt)[$sigma_m$])
    line((ox, oy), (ox, oy + 2.45), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.5, fill: black))
    content((ox - 0.12, oy + 2.38), anchor: "east", text(size: 8pt)[$sigma_a$])

    // Poligono a 4 tratti del componente (Goodman verso Rm=3.60 + tagli di Langer a Rp0.2=2.50)
    line(
      (ox - 2.50, oy),
      (ox - 0.836, oy + 1.664),
      (ox + 1.840, oy + 0.660),
      (ox + 2.50, oy),
      close: true,
      stroke: (paint: black, thickness: 1.0pt),
      fill: black.transparentize(92%),
    )
    content((ox - 2.50, oy - 0.14), anchor: "north", text(size: 7pt)[$R_"p0.2"$])
    content((ox + 2.50, oy - 0.14), anchor: "north", text(size: 7pt)[$R_"p0.2"$])
    content((ox + 0.10, oy + 1.38), anchor: "south-west", text(size: 7.5pt)[$sigma_(D-1)^C$])
  }

  // Pannello (a): sigma_m costante, sigma_a crescente
  let ox = 0.0
  let oy = 4.35
  haigh-base(ox, oy, [a) $sigma_m$ costante, $sigma_a$ crescente])
  line((ox + 0.75, oy + 0.42), (ox + 0.75, oy + 1.069), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
  line((ox, oy + 1.069), (ox + 0.75, oy + 1.069), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox, oy + 0.42), (ox + 0.75, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox + 0.75, oy), (ox + 0.75, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  circle((ox + 0.75, oy + 0.42), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((ox + 0.88, oy + 0.42), anchor: "west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((ox - 0.10, oy + 1.069), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
  content((ox - 0.10, oy + 0.42), anchor: "east", text(size: 7pt)[$sigma_a^P$])
  content((ox + 0.75, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
  content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P)$])

  // Pannello (b): sigma_m e sigma_a proporzionali
  let ox = 7.9
  let oy = 4.35
  haigh-base(ox, oy, [b) $sigma_m$ e $sigma_a$ proporzionali])
  line((ox, oy), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(25%), thickness: 0.7pt))
  line((ox + 0.55, oy + 0.42), (ox + 1.186, oy + 0.906), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
  line((ox, oy + 0.906), (ox + 1.186, oy + 0.906), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox + 1.186, oy), (ox + 1.186, oy + 0.906), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox, oy + 0.42), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox + 0.55, oy), (ox + 0.55, oy + 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  circle((ox + 0.55, oy + 0.42), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((ox + 0.66, oy + 0.34), anchor: "north-west", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((ox - 0.10, oy + 0.906), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
  content((ox - 0.10, oy + 0.42), anchor: "east", text(size: 7pt)[$sigma_a^P$])
  content((ox + 0.55, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
  content((ox + 1.186, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^"lim"$])
  content((ox + 2.30, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P) = frac(sigma_m^"lim", sigma_m^P)$])

  // Pannello (c): sigma_m in parte costante e in parte proporzionale
  let ox = 0.0
  let oy = 0.0
  haigh-base(ox, oy, [c) $sigma_m$ in parte cost. e in parte prop.])
  line((ox + 0.55, oy), (ox + 0.95, oy + 0.36), stroke: (paint: black.transparentize(25%), thickness: 0.7pt))
  line((ox + 0.95, oy + 0.36), (ox + 1.447, oy + 0.807), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
  line((ox, oy + 0.807), (ox + 1.447, oy + 0.807), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox, oy + 0.36), (ox + 0.95, oy + 0.36), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox, oy), (ox, oy - 0.42), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  line((ox + 0.55, oy), (ox + 0.55, oy - 0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  line((ox + 0.95, oy + 0.36), (ox + 0.95, oy - 0.78), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.6pt))
  // Quote inferiori con frecce esterne
  line((ox, oy - 0.32), (ox + 0.55, oy - 0.32), stroke: (paint: black, thickness: 0.6pt))
  line((ox - 0.28, oy - 0.32), (ox, oy - 0.32), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  line((ox + 0.83, oy - 0.32), (ox + 0.55, oy - 0.32), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  content((ox - 0.34, oy - 0.32), anchor: "east", text(size: 7pt)[$sigma_"mc"^P$])
  line((ox + 0.55, oy - 0.68), (ox + 0.95, oy - 0.68), stroke: (paint: black, thickness: 0.6pt))
  line((ox + 0.27, oy - 0.68), (ox + 0.55, oy - 0.68), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  line((ox + 1.23, oy - 0.68), (ox + 0.95, oy - 0.68), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.45, fill: black))
  content((ox + 1.29, oy - 0.68), anchor: "west", text(size: 7pt)[$sigma_"mp"^P$])

  circle((ox + 0.95, oy + 0.36), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((ox + 0.87, oy + 0.44), anchor: "south-east", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((ox - 0.10, oy + 0.807), anchor: "east", text(size: 7pt)[$sigma_D^"lim"$])
  content((ox - 0.10, oy + 0.36), anchor: "east", text(size: 7pt)[$sigma_a^P$])
  content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_D^"lim", sigma_a^P)$])

  // Pannello (d): sigma_a costante, sigma_m crescente
  let ox = 7.9
  let oy = 0.0
  haigh-base(ox, oy, [d) $sigma_a$ costante, $sigma_m$ crescente])
  line((ox + 0.45, oy + 0.72), (ox + 1.680, oy + 0.72), stroke: (paint: red.transparentize(10%), dash: "dashed", thickness: 0.85pt), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)))
  line((ox, oy + 0.72), (ox + 0.45, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox + 0.45, oy), (ox + 0.45, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  line((ox + 1.680, oy), (ox + 1.680, oy + 0.72), stroke: (paint: black.transparentize(35%), dash: "dotted", thickness: 0.65pt))
  circle((ox + 0.45, oy + 0.72), radius: 0.065, fill: red.transparentize(10%), stroke: none)
  content((ox + 0.45, oy + 0.86), anchor: "south", text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[$P$])
  content((ox - 0.10, oy + 0.72), anchor: "east", text(size: 7pt)[$sigma_a^P$])
  content((ox + 0.45, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^P$])
  content((ox + 1.680, oy - 0.14), anchor: "north", text(size: 7pt)[$sigma_m^"lim"$])
  content((ox + 2.20, oy + 1.85), anchor: "center", text(size: 7.5pt)[$C S = frac(sigma_m^"lim", sigma_m^P)$])
})
