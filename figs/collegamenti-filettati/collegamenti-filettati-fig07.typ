// Figura estratta da collegamenti filettati.typ (riga 653) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  import draw: *
  line((0, 0), (0, -1.7), stroke: 0.55pt)
  line((1.35, -0.85), (1.35, 2.15), stroke: 0.55pt)
  line((4.2, -1.7), (4.2, 1.65), stroke: 0.55pt)

  line((0, 0), (0, 3.6), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (5.8, 0), mark: (end: ">"), stroke: 0.8pt)

  line((0, 0), (2.05, 2.46), stroke: 1.05pt)
  line((0.25, 2.25), (4.2, 0), stroke: 1.05pt)

  arc((0, 0), start: 50.19deg, stop: 90deg, radius: 0.95, anchor: "origin", stroke: 0.6pt)
  arc((0, 0), start: 50.19deg, stop: 90deg, radius: 1.07, anchor: "origin", stroke: 0.6pt)
  arc((4.2, 0), start: 90deg, stop: 150.39deg, radius: 0.95, anchor: "origin", stroke: 0.6pt)
  arc((4.2, 0), start: 90deg, stop: 150.39deg, radius: 1.07, anchor: "origin", stroke: 0.6pt)

  line((0, -0.6), (1.35, -0.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((1.35, -0.6), (4.2, -0.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((0, -1.4), (4.2, -1.4), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((4.5, 2.3), (1.38, 1.63), mark: (end: ">"), stroke: 0.7pt)

  content((-0.18, 3.25), text(size: 8.5pt)[$|F_P|$], anchor: "east")
  content((-0.18, 2.75), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((5.35, -0.25), text(size: 8.5pt)[$u$], anchor: "north")

  content((0.65, 2.3), text(size: 8.5pt)[pezzo], anchor: "south")
  content((2.12, 2.5), text(size: 8.5pt)[vite], anchor: "south-west")

  content((0.43, 1.32), text(size: 8pt)[$delta_v$], anchor: "center")
  content((3.57, 1.19), text(size: 8pt)[$delta_p$], anchor: "center")

  content((0.675, -0.3), text(size: 8pt)[$u_v$], anchor: "center")
  content((2.775, -0.3), text(size: 8pt)[$u_p$], anchor: "center")
  content((2.1, -1.1), text(size: 8pt)[$i$], anchor: "center")

  content((4.65, 2.35), text(size: 8.5pt)[Punto di funzionamento\ del collegamento al\ montaggio], anchor: "west")
})
