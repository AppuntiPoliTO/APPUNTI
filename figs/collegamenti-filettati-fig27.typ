// Figura estratta da collegamenti filettati.typ (riga 791) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *
  line((0, 0), (0, 5.2), mark: (end: ">"), stroke: 0.75pt)
  line((0, 0), (8.0, 0), mark: (end: ">"), stroke: 0.75pt)

  line((0, 0), (3.6, 3.744), stroke: 1.2pt)
  line((1.4, 3.48), (5.75, 0), stroke: 1.2pt)
  line((3.25, 2.0), (3.25, 3.38), stroke: 1.5pt)

  line((0, 3.38), (5.3, 3.38), stroke: (dash: "dashed", thickness: 0.55pt))
  line((0, 2.6), (4.35, 2.6), stroke: (dash: "dashed", thickness: 0.55pt))
  line((0, 2.0), (5.3, 2.0), stroke: (dash: "dashed", thickness: 0.55pt))

  line((0, 0), (0, -1.8), stroke: 0.55pt)
  line((2.5, 3.2), (2.5, -1.15), stroke: 0.55pt)
  line((3.25, 2.0), (3.25, -0.75), stroke: 0.55pt)
  line((5.75, 0), (5.75, -1.8), stroke: 0.55pt)

  line((3.9, 2.6), (3.9, 3.38), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((3.9, 2.0), (3.9, 2.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((5.1, 2.0), (5.1, 3.38), mark: (start: ">", end: ">"), stroke: 0.65pt)

  line((2.5, -0.6), (3.25, -0.6), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((0, -1.0), (2.5, -1.0), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((2.5, -1.0), (5.75, -1.0), mark: (start: ">", end: ">"), stroke: 0.65pt)
  line((0, -1.6), (5.75, -1.6), mark: (start: ">", end: ">"), stroke: 0.65pt)

  rect((3.14, 3.27), (3.36, 3.49), fill: red, stroke: none)
  line((3.25, 2.14), (3.12, 1.91), (3.38, 1.91), close: true, fill: rgb("#2040e0"), stroke: none)



  content((-0.2, 4.75), text(size: 8.5pt)[$|F_p|$], anchor: "east")
  content((-0.2, 4.2), text(size: 8.5pt)[$|F_v|$], anchor: "east")
  content((-0.2, 3.38), text(size: 8.5pt)[$F'_v$], anchor: "east")
  content((-0.2, 2.6), text(size: 8.5pt)[$|F_p| = |F_v|$], anchor: "east")
  content((-0.2, 2.0), text(size: 8.5pt)[$F'_p$], anchor: "east")

  content((4.02, 2.99), text(size: 8pt)[$Delta C_v$], anchor: "west")
  content((4.02, 2.3), text(size: 8pt)[$Delta C_p$], anchor: "west")
  content((5.22, 2.69), text(size: 8.5pt)[$C$], anchor: "west")

  content((2.875, -0.48), text(size: 8pt)[$Delta u$], anchor: "south")
  content((1.25, -0.88), text(size: 8pt)[$u_v$], anchor: "south")
  content((4.125, -0.88), text(size: 8pt)[$u_p$], anchor: "south")
  content((2.875, -1.48), text(size: 8.5pt)[$i$], anchor: "south")
  content((7.3, -0.35), text(size: 8.5pt)[$u$], anchor: "north")

 
})
