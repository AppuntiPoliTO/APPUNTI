#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Riempimento leggero della sezione di gola
  line((0, 0), (0.9, 0.9), (5.1, 2.4), (4.2, 1.5), close: true, fill: gray.transparentize(88%), stroke: none)

  // Tratteggio parallelo della sezione di gola
  line((0.3, 0.3), (0.49, 0.175), stroke: 0.5pt)
  line((0.6, 0.6), (0.98, 0.35), stroke: 0.5pt)
  line((0.9, 0.9), (1.47, 0.525), stroke: 0.5pt)
  line((1.39, 1.075), (1.96, 0.7), stroke: 0.5pt)
  line((1.88, 1.25), (2.45, 0.875), stroke: 0.5pt)
  line((2.37, 1.425), (2.94, 1.05), stroke: 0.5pt)
  line((2.86, 1.6), (3.43, 1.225), stroke: 0.5pt)
  line((3.35, 1.775), (3.92, 1.4), stroke: 0.5pt)
  line((3.84, 1.95), (4.3286, 1.6286), stroke: 0.5pt)
  line((4.33, 2.125), (4.6286, 1.9286), stroke: 0.5pt)
  line((4.82, 2.3), (4.9286, 2.2286), stroke: 0.5pt)

  // Spigoli nascosti del prisma e contorni interni della sezione di gola
  line((0, 0), (4.2, 1.5), stroke: (dash: "dashed", thickness: 0.75pt))
  line((4.2, 1.5), (4.2, 3.3), stroke: (dash: "dashed", thickness: 0.75pt))
  line((4.2, 1.5), (6.0, 1.5), stroke: (dash: "dashed", thickness: 0.75pt))
  line((0.9, 0.9), (5.1, 2.4), stroke: (dash: "dashed", thickness: 0.75pt))
  line((4.2, 1.5), (5.1, 2.4), stroke: (dash: "dashed", thickness: 0.75pt))

  // Spigoli visibili del prisma
  line((0, 0), (0, 1.8), (1.8, 0), close: true, stroke: 1.05pt)
  line((0, 1.8), (4.2, 3.3), stroke: 1.05pt)
  line((1.8, 0), (6.0, 1.5), stroke: 1.05pt)
  line((4.2, 3.3), (6.0, 1.5), stroke: 1.05pt)

  // Altezza di gola a sulla faccia frontale
  line((0, 0), (0.9, 0.9), stroke: 0.95pt)

  // Quota verticale p
  line((-0.08, 0), (-0.55, 0), stroke: 0.5pt)
  line((-0.08, 1.8), (-0.55, 1.8), stroke: 0.5pt)
  line((-0.45, 0), (-0.45, 1.8), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((-0.22, 0.9), text(size: 8.5pt)[$p$], anchor: "center")

  // Quota orizzontale p
  line((0, -0.08), (0, -0.55), stroke: 0.5pt)
  line((1.8, -0.08), (1.8, -0.55), stroke: 0.5pt)
  line((0, -0.45), (1.8, -0.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((0.9, -0.24), text(size: 8.5pt)[$p$], anchor: "center")

  // Quota lunghezza L
  line((1.88, 0), (2.6, 0), stroke: 0.5pt)
  line((6.08, 1.5), (6.8, 1.5), stroke: 0.5pt)
  line((2.45, 0), (6.65, 1.5), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.7, 0.62), text(size: 8.5pt)[$L$], anchor: "north-west")

  // Etichetta altezza di gola a
  content((0.32, 0.62), text(size: 8.5pt)[$a$], anchor: "center")

  // Annotazione sezione di gola
  line((5.55, 2.95), (3.1, 1.35), mark: (end: ">"), stroke: 0.7pt)
  content((5.55, 3.05), text(size: 8pt)[sezione \ di gola], anchor: "south-west")
})
