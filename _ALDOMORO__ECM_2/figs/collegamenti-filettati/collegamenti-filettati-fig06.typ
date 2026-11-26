// Figura estratta da collegamenti filettati.typ (riga 596) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  import draw: *

  line((1.8, 0.0), (4.0, 0.0), mark: (end: ">"), stroke: 0.75pt)
  line((1.8, 0.0), (1.8, 2.2), mark: (end: ">"), stroke: 0.75pt)
  line((1.8, 0.0), (3.15, 1.61), stroke: 1.1pt)
  arc((1.8, 0.0), start: 0deg, stop: 50deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)
  arc((1.8, 0.0), start: 50deg, stop: 90deg, radius: 0.78, anchor: "origin", stroke: 0.6pt)
  arc((1.8, 0.0), start: 50deg, stop: 90deg, radius: 0.88, anchor: "origin", stroke: 0.6pt)

  content((1.68, 2.15), text(size: 8.5pt)[$F_v$], anchor: "east")
  content((3.9, -0.15), text(size: 8.5pt)[$u_v$], anchor: "north")
  content((3.28, 1.65), text(size: 8.5pt)[vite], anchor: "west")
  content((3.35, 0.55), text(size: 8.5pt)[$K_v = F_v / u_v$], anchor: "center")
  content((1.55, 1.15), text(size: 8.5pt)[$delta_v = 1 / K_v = u_v / F_v$], anchor: "east")

  line((4.8, 1.0), (8.1, 1.0), mark: (end: ">"), stroke: 0.75pt)
  line((6.8, -0.3), (6.8, 2.4), mark: (end: ">"), stroke: 0.75pt)
  line((6.8, 1.0), (5.07, 0.00), stroke: 1.1pt)
  arc((6.8, 1.0), start: 180deg, stop: 210deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)
  arc((6.8, 1.0), start: 210deg, stop: 270deg, radius: 0.78, anchor: "origin", stroke: 0.6pt)
  arc((6.8, 1.0), start: 210deg, stop: 270deg, radius: 0.88, anchor: "origin", stroke: 0.6pt)

  content((6.68, 2.35), text(size: 8.5pt)[$F_p$], anchor: "east")
  content((8.05, 0.85), text(size: 8.5pt)[$u_p$], anchor: "north")
  content((5.75, 1.55), text(size: 8.5pt)[$K_p = F_p / u_p$], anchor: "center")
  content((5.75, -0.10), text(size: 8.5pt)[pezzi], anchor: "north")
  content((7.05, 0.15), text(size: 8.5pt)[$delta_p = 1 / K_p = u_p / F_p$], anchor: "west")

  line((11.5, 0.0), (15.8, 0.0), mark: (end: ">"), stroke: 0.75pt)
  line((13.6, 0.0), (13.6, 1.7), mark: (end: ">"), stroke: 0.75pt)
  line((13.6, 0.0), (11.87, 1.00), stroke: 1.1pt)
  line((13.6, 0.0), (14.89, 1.53), stroke: 1.1pt)

  content((11.35, 0.95), text(size: 8.5pt)[vite+pezzi], anchor: "east")
  content((13.48, 1.52), text(size: 8.5pt)[$|F_p|$], anchor: "east")
  content((13.48, 1.15), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((15.65, -0.15), text(size: 8.5pt)[$u_p, u_v$], anchor: "north")

  content((7.6, -0.95), text(size: 8.5pt)[$K_i = "rigidezza" quad delta_v = "deformabilità" quad u_i = "spostamento"$], anchor: "center")
})
