// Figura estratta da collegamenti filettati.typ (riga 1187) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.2cm, {
  import draw: *

  content((0.0, 7.15), text(size: 8.5pt)[_Caso_ \ _generale_], anchor: "west")

  line((1.5, 4.8), (6.2, 4.8), stroke: (paint: rgb("#4f81bd"), thickness: 0.8pt))
  line((1.5, 4.8), (6.2, 6.21), stroke: (paint: rgb("#4f81bd"), thickness: 0.8pt))
  arc((1.5, 4.8), start: 0deg, stop: 16.7deg, radius: 1.15, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))
  content((2.84, 5.00), text(size: 7.5pt)[$alpha_m$])

  line((3.473, 5.392), (4.527, 5.708), (4.398, 6.139), (3.344, 5.823), close: true, fill: red.transparentize(75%), stroke: none)

  line((3.220, 5.504), (1.975, 5.130), mark: (end: ">"), stroke: (paint: rgb("#e66c00"), thickness: 2.2pt))
  content((2.526, 5.62), text(size: 7.5pt)[Moto relativo], angle: 16.7deg)

  arc((4.0, 5.55), start: 90deg, stop: 106.7deg, radius: 1.15, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))
  arc((4.0, 5.55), start: 74.7deg, stop: 106.7deg, radius: 1.75, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))

  line((4.0, 5.55), (3.253, 8.040), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
  line((3.253, 8.040), (4.809, 8.507), mark: (end: ">"), stroke: (paint: rgb("#e66c00"), thickness: 1.2pt))
  line((4.0, 5.55), (4.809, 8.507), mark: (end: ">"), stroke: (paint: rgb("#4b3b75"), thickness: 1.2pt))
  line((4.0, 8.507), (4.0, 5.55), mark: (end: ">"), stroke: (paint: rgb("#8b2222"), dash: "dashed", thickness: 1.0pt))
  line((4.809, 8.507), (4.0, 8.507), mark: (end: ">"), stroke: (paint: rgb("#00a651"), dash: "dashed", thickness: 1.0pt))

  content((3.78, 6.92), text(size: 7.5pt)[$alpha_m$])
  content((3.72, 7.52), text(size: 7.5pt)[$phi.alt$])
  content((3.42, 7.25), text(size: 8pt, fill: red)[$F_N$], anchor: "east")
  content((3.65, 8.34), text(size: 8pt, fill: rgb("#e66c00"))[$F_("attrito")$], anchor: "south")
  content((4.55, 8.70), text(size: 8pt, fill: rgb("#00a651"))[$F_U$], anchor: "south")
  content((4.12, 7.75), text(size: 8pt, fill: rgb("#8b2222"))[$F_V$], anchor: "west")
  content((4.55, 7.05), text(size: 8pt, fill: rgb("#4b3b75"))[$F_("RES")$], anchor: "west")

  content((0.0, 2.65), text(size: 8.5pt)[_Caso_ \ _particolare_], anchor: "west")

  line((1.5, 0.3), (6.2, 0.3), stroke: (paint: rgb("#4f81bd"), thickness: 0.8pt))
  line((1.5, 0.3), (6.2, 1.71), stroke: (paint: rgb("#4f81bd"), thickness: 0.8pt))
  arc((1.5, 0.3), start: 0deg, stop: 16.7deg, radius: 1.15, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))
  content((2.84, 0.50), text(size: 7.5pt)[$alpha_m$])

  line((3.473, 0.892), (4.527, 1.208), (4.398, 1.639), (3.344, 1.323), close: true, fill: red.transparentize(75%), stroke: none)

  line((3.220, 1.004), (1.975, 0.630), mark: (end: ">"), stroke: (paint: rgb("#e66c00"), thickness: 2.2pt))
  content((2.526, 1.12), text(size: 7.5pt)[Moto relativo], angle: 16.7deg)

  arc((4.0, 1.05), start: 90deg, stop: 97.7deg, radius: 1.45, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))
  arc((4.0, 1.05), start: 97.7deg, stop: 106.7deg, radius: 1.75, anchor: "origin", stroke: (paint: rgb("#4f81bd"), thickness: 0.6pt))
  line((4.50, 2.75), (3.91, 2.50), mark: (end: ">"), stroke: (paint: rgb("#4f81bd"), thickness: 0.55pt))

  line((4.0, 1.05), (3.253, 3.540), mark: (end: ">"), stroke: (paint: red, thickness: 1.2pt))
  line((3.253, 3.540), (3.647, 3.659), mark: (end: ">"), stroke: (paint: rgb("#e66c00"), thickness: 1.2pt))
  line((4.0, 1.05), (3.647, 3.659), mark: (end: ">"), stroke: (paint: rgb("#4b3b75"), thickness: 1.2pt))
  line((4.0, 3.659), (4.0, 1.05), mark: (end: ">"), stroke: (paint: rgb("#8b2222"), dash: "dashed", thickness: 1.0pt))
  line((3.647, 3.659), (4.0, 3.659), mark: (end: ">"), stroke: (paint: rgb("#00a651"), dash: "dashed", thickness: 1.0pt))

  content((4.55, 2.78), text(size: 7.5pt)[$alpha_m$], anchor: "west")
  content((3.56, 3.00), text(size: 7.5pt)[$phi.alt$])
  content((3.42, 2.80), text(size: 8pt, fill: red)[$F_N$], anchor: "east")
  content((3.35, 3.78), text(size: 8pt, fill: rgb("#e66c00"))[$F_("attrito")$], anchor: "south")
  content((4.08, 3.80), text(size: 8pt, fill: rgb("#00a651"))[$F_U$], anchor: "south")
  content((4.12, 2.15), text(size: 8pt, fill: rgb("#8b2222"))[$F_V$], anchor: "west")
  content((3.05, 2.25), text(size: 8pt, fill: rgb("#4b3b75"))[$F_("RES")$], anchor: "east")
})
