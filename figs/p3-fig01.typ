// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((1.5, 0.0), (1.8, 0.0), (1.95, 0.021), (2.1, 0.086), (2.2, 0.153), (2.3, 0.238), (4.2, 2.05), (1.5, 2.9), close: true, fill: rgb("#f0f2f5"), stroke: none)

  line((1.2, 0.0), (1.2, 8.85), stroke: (paint: rgb("#f0c030"), thickness: 0.65pt))
  line((1.5, 0.0), (1.5, 8.85), stroke: (paint: rgb("#f0c030"), thickness: 0.65pt))
  line((1.8, 0.0), (1.8, 8.85), stroke: (paint: rgb("#f0c030"), thickness: 0.65pt))
  line((4.2, 0.0), (4.2, 8.95), stroke: (paint: rgb("#f0c030"), thickness: 0.65pt))

  line((0.0, 7.6), (8.8, 7.6), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.0, 7.6), (0.0, 8.35), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.0, 8.0), (1.2, 8.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.0, 7.6), (1.2, 7.6), (1.2, 8.0), (7.2, 8.0), stroke: 1.1pt)

  line((0.0, 4.2), (8.8, 4.2), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.0, 4.2), (0.0, 7.05), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.0, 6.68), (4.2, 6.68), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.0, 6.2), (2.3, 6.2), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.0, 4.95), (4.2, 4.95), stroke: (dash: "dashed", thickness: 0.6pt))
  line((1.8, 4.2), (1.8, 4.95), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.2, 4.2), (4.2, 4.95), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.1, 6.2), (4.2, 6.68), (4.2, 6.2), stroke: (dash: "dashed", thickness: 0.8pt))
  line((0.0, 4.2), (1.5, 4.2), (2.3, 6.2), (4.2, 6.2), (4.2, 4.95), (7.2, 4.95), stroke: 1.1pt)

  line((0.0, 0.0), (8.8, 0.0), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((0.0, 0.0), (0.0, 3.6), stroke: 0.7pt, mark: (end: ">", fill: black, scale: 0.5))
  line((1.5, 0.0), (1.5, 2.9), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.2, 0.0), (4.2, 2.05), stroke: (dash: "dashed", thickness: 0.6pt))
  line((0.0, 2.9), (1.5, 2.9), (4.2, 2.05), (7.2, 2.45), stroke: 1.1pt)
  line((0.0, 0.0), (1.8, 0.0), stroke: 1.1pt)
  bezier((1.8, 0.0), (2.3, 0.238), (2.05, 0.0), stroke: 1.1pt)
  line((2.3, 0.238), (4.2, 2.05), stroke: 1.1pt)

  line((3.05, 0.953), (3.05, 2.412), stroke: 0.6pt, mark: (start: ">", end: ">", fill: black, scale: 0.45))
  line((2.05, 2.727), (2.25, 2.95), stroke: 0.5pt)
  line((2.65, 0.572), (2.95, 0.43), stroke: 0.5pt)
  line((3.5, 1.9), (4.15, 2.52), stroke: 0.5pt)

  content((0.4, 9.05), text(size: 8pt, fill: rgb("#c02020"), style: "italic", weight: "bold")[inserimento])
  content((1.82, 9.05), text(size: 8pt, fill: rgb("#c02020"), style: "italic", weight: "bold")[ritardo])
  content((2.98, 8.75), text(size: 8pt, fill: rgb("#c02020"), style: "italic", weight: "bold")[inseguimento])
  content((2.98, 8.4), text(size: 8pt, fill: rgb("#c02020"), style: "italic", weight: "bold")[dell'utilizzatore])
  content((5.15, 8.75), text(size: 8pt, fill: rgb("#c02020"), style: "italic", weight: "bold")[sincronismo])

  content((-0.15, 8.0), text(size: 8.5pt, style: "italic")[on], anchor: "east")
  content((-0.15, 7.6), text(size: 8.5pt, style: "italic")[off], anchor: "east")
  content((1.12, 7.3), text(size: 8.5pt)[$t^*$])
  content((1.58, 7.3), text(size: 8.5pt)[$t_0$])
  content((8.2, 7.3), text(size: 8.5pt)[$t$])

  content((-0.15, 6.68), text(size: 8.5pt)[$M_p$], anchor: "east")
  content((-0.15, 6.2), text(size: 8.5pt)[$M_s$], anchor: "east")
  content((-0.15, 4.95), text(size: 8.5pt)[$M_r$], anchor: "east")
  content((1.42, 3.88), text(size: 8.5pt)[$t_0$])
  content((1.9, 3.88), text(size: 8.5pt)[$t_1$])
  content((4.2, 3.88), text(size: 8.5pt)[$t_2$])
  content((8.2, 3.88), text(size: 8.5pt)[$t$])

  content((-0.35, 3.2), text(size: 9pt)[$omega$], anchor: "east")
  content((2.35, 3.1), text(size: 8.5pt)[$omega_m$])
  content((2.72, 1.68), text(size: 8.5pt)[$omega_r$])
  content((3.25, 0.38), text(size: 8.5pt)[$omega_u$])
  content((4.1, 3.05), text(size: 7.5pt, style: "italic")[energia], anchor: "west")
  content((4.1, 2.75), text(size: 7.5pt, style: "italic")[dissipata], anchor: "west")
  content((1.42, -0.32), text(size: 8.5pt)[$t_0$])
  content((1.9, -0.32), text(size: 8.5pt)[$t_1$])
  content((4.2, -0.32), text(size: 8.5pt)[$t_2$])
  content((8.2, -0.32), text(size: 8.5pt)[$t$])
})
