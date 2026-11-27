// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-1.05, 0.20), (-1.05, 2.85), stroke: 1.5pt)
  line((3.15, -0.80), (3.15, 4.40), stroke: 1.5pt)
  line((-0.85, 0.165), (3.35, -0.651), stroke: 1.5pt)

  line((0, -0.75), (0, 0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0, 3.355), (0, 5.10), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.708, 3.641), (0.973, 5.006), stroke: (dash: "dashed", thickness: 0.6pt))
  line((2.179, 3.355), (2.778, 4.277), stroke: (dash: "dashed", thickness: 0.6pt))

  line((0.708, 3.641), (2.179, 3.355), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.471, -0.286), (2.179, 3.355), stroke: (dash: "dashed", thickness: 0.6pt))

  line((0, 0), (0, 3.355), stroke: (paint: rgb("#e60000"), thickness: 1.3pt), mark: (end: ">", fill: rgb("#e60000"), scale: 0.6))
  line((0, 3.355), (2.179, 3.355), stroke: (paint: rgb("#e60000"), thickness: 1.3pt), mark: (end: ">", fill: rgb("#e60000"), scale: 0.6))
  line((5.30, 2.35), (3.15, 2.35), stroke: (paint: rgb("#e60000"), thickness: 1.3pt), mark: (end: ">", fill: rgb("#e60000"), scale: 0.6))

  line((0, 0), (0.708, 3.641), stroke: 1.3pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0, 0), (2.179, 3.355), stroke: 1.3pt, mark: (end: ">", fill: black, scale: 0.6))
  line((0, 0), (1.471, -0.286), stroke: 1.3pt, mark: (end: ">", fill: black, scale: 0.6))

  arc((0, 0), start: 79deg, stop: 90deg, radius: 4.70, anchor: "origin", stroke: 0.55pt, mark: (start: ">", end: ">", fill: black, scale: 0.45))
  arc((0, 0), start: 57deg, stop: 79deg, radius: 4.70, anchor: "origin", stroke: 0.55pt, mark: (start: ">", end: ">", fill: black, scale: 0.45))

  bezier((2.45, 2.12), (1.15, 3.30), (2.10, 2.75), (1.35, 2.55), stroke: 0.55pt, mark: (end: ">", fill: black, scale: 0.45))

  content((-0.18, 1.70), text(size: 9pt)[$F_r$], anchor: "east")
  content((0.52, 2.05), text(size: 9pt)[$F_N$], anchor: "west")
  content((1.18, 1.50), text(size: 9pt)[$F$], anchor: "west")
  content((0.75, -0.35), text(size: 9pt)[$f dot F_N$], anchor: "north")
  content((2.60, 2.00), text(size: 9pt)[$F_a$], anchor: "center")
  content((4.225, 2.52), text(size: 9pt)[$F_a$], anchor: "south")
  content((0.48, 4.95), text(size: 8.5pt)[$alpha$], anchor: "south")
  content((1.89, 4.60), text(size: 8.5pt)[$phi.alt$], anchor: "south")
  content((4.35, 4.85), text(size: 9.5pt)[_Azioni_], anchor: "center")
  content((4.35, 4.40), text(size: 9.5pt)[_sul mozzo_], anchor: "center")
})
