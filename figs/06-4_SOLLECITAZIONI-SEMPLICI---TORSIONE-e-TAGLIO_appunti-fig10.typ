// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 839) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // Contorno esterno scatolare (x: -1.8..1.8, y: -1.8..1.8)
  rect((-1.8, -1.8), (1.8, 1.8), stroke: 1.2pt)

  // Linea mediana tratteggiata (x: -1.6..1.6, y: -1.6..1.6)
  rect((-1.6, -1.6), (1.6, 1.6), stroke: (dash: "dashed", thickness: 0.7pt))

  // Contorno interno (x: -1.4..1.4, y: -1.4..1.4)
  rect((-1.4, -1.4), (1.4, 1.4), stroke: 1.2pt)

  // Tratteggio area Omega (entro la linea mediana)
  line((-1.6, -1.0), (1.0, 1.6), stroke: 0.35pt)
  line((-1.6, -0.4), (0.4, 1.6), stroke: 0.35pt)
  line((-1.6, 0.2), (-0.2, 1.6), stroke: 0.35pt)
  line((-1.6, 0.8), (-0.8, 1.6), stroke: 0.35pt)
  line((-1.2, -1.6), (1.6, 1.2), stroke: 0.35pt)
  line((-0.6, -1.6), (1.6, 0.6), stroke: 0.35pt)
  line((0.0, -1.6), (1.6, 0.0), stroke: 0.35pt)
  line((0.6, -1.6), (1.6, -0.6), stroke: 0.35pt)
  line((1.2, -1.6), (1.6, -1.2), stroke: 0.35pt)

  rect((-0.3, -0.3), (0.3, 0.3), fill: white, stroke: none)
  content((0, 0), text(size: 7pt)[$Omega$])

  // Quote esterne l1 e l2
  line((-1.8, -1.8), (-1.8, -2.5), stroke: 0.5pt)
  line((1.8, -1.8), (1.8, -2.5), stroke: 0.5pt)
  line((-1.8, -2.35), (1.8, -2.35), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0, -2.3), text(size: 7pt)[$l_1$], anchor: "south")

  line((1.8, -1.8), (2.7, -1.8), stroke: 0.5pt)
  line((1.8, 1.8), (2.7, 1.8), stroke: 0.5pt)
  line((2.55, -1.8), (2.55, 1.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.48, 0), text(size: 7pt)[$l_2$], anchor: "east")

  // Quote spessori s1, s2, s3, s4
  // s1 (in basso)
  line((0.2, -2.15), (0.2, -1.8), mark: (end: ">"), stroke: 0.5pt)
  line((0.2, -1.05), (0.2, -1.4), mark: (end: ">"), stroke: 0.5pt)
  content((0.1, -2.0), text(size: 7pt)[$s_1$], anchor: "east")

  // s2 (a destra)
  line((2.15, 0.4), (1.8, 0.4), mark: (end: ">"), stroke: 0.5pt)
  line((1.05, 0.4), (1.4, 0.4), mark: (end: ">"), stroke: 0.5pt)
  content((2.1, 0.5), text(size: 7pt)[$s_2$], anchor: "south")

  // s3 (in alto)
  line((0.2, 2.15), (0.2, 1.8), mark: (end: ">"), stroke: 0.5pt)
  line((0.2, 1.05), (0.2, 1.4), mark: (end: ">"), stroke: 0.5pt)
  content((0.1, 2.0), text(size: 7pt)[$s_3$], anchor: "east")

  // s4 (a sinistra)
  line((-2.15, -0.2), (-1.8, -0.2), mark: (end: ">"), stroke: 0.5pt)
  line((-1.05, -0.2), (-1.4, -0.2), mark: (end: ">"), stroke: 0.5pt)
  content((-2.1, -0.1), text(size: 7pt)[$s_4$], anchor: "south")

  // Numeri cerchiati 1, 2, 3, 4
  circle((1.15, -2.05), radius: 0.22, stroke: 0.5pt)
  content((1.15, -2.05), text(size: 7pt)[1])
  line((1.05, -1.85), (0.9, -1.5), stroke: 0.5pt)

  circle((2.15, -0.9), radius: 0.22, stroke: 0.5pt)
  content((2.15, -0.9), text(size: 7pt)[2])
  line((1.95, -0.8), (1.6, -0.65), stroke: 0.5pt)

  circle((1.35, 2.15), radius: 0.22, stroke: 0.5pt)
  content((1.35, 2.15), text(size: 7pt)[3])
  line((1.28, 1.94), (1.15, 1.6), stroke: 0.5pt)

  circle((-2.2, -0.95), radius: 0.22, stroke: 0.5pt)
  content((-2.2, -0.95), text(size: 7pt)[4])
  line((-1.99, -0.88), (-1.6, -0.7), stroke: 0.5pt)
})
