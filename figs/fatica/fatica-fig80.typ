// Figura estratta da fatica.typ (riga 1565) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  import draw: *

  // --- Pannello superiore sinistro: Flessione ---
  rect((0.4, 2.35), (4.2, 2.6), fill: black.transparentize(78%), stroke: none)
  rect((0.4, 1.0), (4.2, 1.25), fill: black.transparentize(78%), stroke: none)
  line((0.4, 2.35), (4.2, 2.35), stroke: 0.55pt)
  line((0.4, 1.25), (4.2, 1.25), stroke: 0.55pt)
  rect((0.4, 1.0), (4.2, 2.6), stroke: 1.1pt)
  line((0.1, 1.8), (4.5, 1.8), stroke: (dash: "dashed", thickness: 0.65pt))

  // Profilo lineare tensioni flessione (ampiezza superficiale = 1.20 u)
  line((2.3, 0.9), (2.3, 2.95), stroke: 0.65pt)
  line((1.1, 1.0), (3.5, 2.6), stroke: 1.0pt + blue)
  line((2.3, 2.0), (2.6, 2.0), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.3, 2.2), (2.9, 2.2), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.3, 2.475), (3.31, 2.475), stroke: 0.8pt + red, mark: (end: ">", scale: 0.55, fill: red))
  line((2.3, 1.6), (2.0, 1.6), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.3, 1.4), (1.7, 1.4), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.3, 1.125), (1.29, 1.125), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))

  // Quota sigma_f in alto e riquadro zoom ZP
  line((3.5, 2.6), (3.5, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
  line((2.3, 2.95), (3.5, 2.95), stroke: 0.8pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
  content((2.9, 3.12), anchor: "south", text(size: 8.5pt, fill: blue)[$sigma_f$])
  rect((2.2, 2.30), (3.6, 2.66), stroke: 0.7pt + red)
  circle((3.31, 2.475), radius: 0.06, fill: red, stroke: none)
  line((3.35, 2.50), (4.35, 3.05), stroke: 0.6pt + red, mark: (end: ">", scale: 0.55, fill: red))
  content((4.42, 3.05), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") < sigma_f$])
  content((2.3, 0.55), anchor: "north", text(size: 8.5pt, weight: "bold")[Flessione])

  // --- Pannello superiore destro: Trazione-compressione ---
  rect((8.8, 2.35), (12.6, 2.6), fill: black.transparentize(78%), stroke: none)
  rect((8.8, 1.0), (12.6, 1.25), fill: black.transparentize(78%), stroke: none)
  line((8.8, 2.35), (12.6, 2.35), stroke: 0.55pt)
  line((8.8, 1.25), (12.6, 1.25), stroke: 0.55pt)
  rect((8.8, 1.0), (12.6, 2.6), stroke: 1.1pt)
  line((8.5, 1.8), (12.9, 1.8), stroke: (dash: "dashed", thickness: 0.65pt))

  // Profilo uniforme trazione-compressione (pari ampiezza superficiale = 1.20 u)
  line((10.3, 0.9), (10.3, 2.95), stroke: 0.65pt)
  line((11.5, 1.0), (11.5, 2.6), stroke: 1.0pt + blue)
  for y_pos in (1.125, 1.4, 1.6, 2.0, 2.2) {
    line((10.3, y_pos), (11.5, y_pos), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  }
  line((10.3, 2.475), (11.5, 2.475), stroke: 0.8pt + red, mark: (end: ">", scale: 0.55, fill: red))

  // Quota sigma_tc in alto e riquadro zoom ZP
  line((11.5, 2.6), (11.5, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
  line((10.3, 2.95), (11.5, 2.95), stroke: 0.8pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
  content((10.9, 3.12), anchor: "south", text(size: 8.5pt, fill: blue)[$sigma_("tc")$])
  rect((10.2, 2.30), (11.6, 2.66), stroke: 0.7pt + red)
  circle((11.5, 2.475), radius: 0.06, fill: red, stroke: none)
  line((11.55, 2.50), (12.65, 3.05), stroke: 0.6pt + red, mark: (end: ">", scale: 0.55, fill: red))
  content((12.72, 3.05), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") = sigma_("tc")$])
  content((10.7, 0.55), anchor: "north", text(size: 8.5pt, weight: "bold")[Trazione-compressione])

  // Etichetta condivisa Zona di processo (ZP)
  content((6.5, 0.55), anchor: "north", text(size: 8pt)[Zona di processo (ZP)])
  line((5.0, 0.42), (3.85, 1.12), stroke: 0.6pt, mark: (end: ">", scale: 0.55))
  line((8.0, 0.42), (9.15, 1.12), stroke: 0.6pt, mark: (end: ">", scale: 0.55))

  // --- Pannello inferiore: Ingrandimento comparativo ZP a pari picco superficiale (2.20 u) ---
  rect((1.0, -4.2), (14.5, -0.3), stroke: (paint: red.transparentize(30%), thickness: 0.7pt), radius: 0.08)
  content((7.75, -0.52), anchor: "north", text(size: 8.5pt, weight: "bold")[Ingrandimento comparativo della zona di processo (ZP) a pari tensione superficiale])

  // Zoom sinistro: Flessione (asse x=2.60, picco x=4.80 -> delta=2.20 u; fondo ZP x=3.70; media x=4.25 -> delta=1.65 u)
  rect((2.1, -3.55), (6.3, -1.75), fill: black.transparentize(86%), stroke: none)
  line((2.1, -1.75), (6.3, -1.75), stroke: 1.1pt)
  line((2.1, -3.55), (6.3, -3.55), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.60, -3.7), (2.60, -1.25), stroke: 0.65pt)
  line((3.70, -3.55), (4.80, -1.75), stroke: 1.0pt + blue)
  line((2.60, -1.75), (4.80, -1.75), stroke: 1.0pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
  line((2.60, -2.20), (4.525, -2.20), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.60, -2.65), (4.25, -2.65), stroke: 1.0pt + red, mark: (end: ">", scale: 0.6, fill: red))
  line((2.60, -3.10), (3.975, -3.10), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  line((2.60, -3.55), (3.70, -3.55), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  circle((4.25, -2.65), radius: 0.08, fill: red, stroke: none)
  content((4.90, -1.65), anchor: "south-west", text(size: 8pt, fill: blue)[$sigma_f$])
  content((4.40, -2.65), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP")$])
  line((1.78, -3.55), (1.78, -1.75), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.6))
  content((1.65, -2.65), anchor: "east", text(size: 7.5pt)[ZP])
  content((4.2, -3.78), anchor: "north", text(size: 8pt)[Flessione: ampiezza media attenuata])

  // Zoom destro: Trazione-compressione (asse x=9.10, picco costante x=11.30 -> delta=2.20 u)
  rect((8.6, -3.55), (13.85, -1.75), fill: black.transparentize(86%), stroke: none)
  line((8.6, -1.75), (13.85, -1.75), stroke: 1.1pt)
  line((8.6, -3.55), (13.85, -3.55), stroke: (dash: "dashed", thickness: 0.6pt))
  line((9.10, -3.7), (9.10, -1.25), stroke: 0.65pt)
  line((11.30, -3.55), (11.30, -1.75), stroke: 1.0pt + blue)
  line((9.10, -1.75), (11.30, -1.75), stroke: 1.0pt + blue, mark: (end: ">", scale: 0.6, fill: blue))
  for y_z in (-2.20, -3.10, -3.55) {
    line((9.10, y_z), (11.30, y_z), stroke: (paint: black.transparentize(45%), thickness: 0.55pt), mark: (end: ">", scale: 0.5))
  }
  line((9.10, -2.65), (11.30, -2.65), stroke: 1.0pt + red, mark: (end: ">", scale: 0.6, fill: red))
  circle((11.30, -2.65), radius: 0.08, fill: red, stroke: none)
  content((11.40, -1.65), anchor: "south-west", text(size: 8pt, fill: blue)[$sigma_("tc")$])
  content((11.45, -2.65), anchor: "west", text(size: 8pt, fill: red)[$sigma_(a,"eff")("ZP") = sigma_("tc")$])
  content((11.22, -3.78), anchor: "north", text(size: 8pt)[Trazione-compressione: ampiezza uniforme])
})
