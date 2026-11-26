#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((-1.10, 0), (3.10, 0), stroke: (dash: "dashed", paint: rgb("#1e2896"), thickness: 1.1pt))
  content((3.25, -0.10), text(size: 9pt, fill: rgb("#1e2896"))[1], anchor: "north-west")

  line((0.31, 4.13), (3.77, 2.13), stroke: (dash: "dashed", paint: rgb("#1e2896"), thickness: 1.1pt))
  content((3.90, 2.05), text(size: 9pt, fill: rgb("#1e2896"))[2], anchor: "north-west")

  line((0, 2.00), (0.50, 1.87), stroke: (thickness: 0.55pt, paint: luma(60)))

  arc((0, 0), start: 75deg, stop: 90deg, radius: 1.05, anchor: "origin", stroke: (thickness: 0.55pt, paint: luma(60)))
  content((0.46, 0.55), text(size: 8.5pt)[$beta / 2$], anchor: "west")

  arc((1.00, 3.73), start: 240deg, stop: 255deg, radius: 1.05, anchor: "origin", stroke: (thickness: 0.55pt, paint: luma(60)))
  content((0.92, 2.65), text(size: 8.5pt)[$beta / 2$], anchor: "west")

  line((0, 0), (0, 2.00), (1.00, 3.73), stroke: (paint: rgb("#0a1045"), thickness: 1.1pt))
  content((-0.18, 1.00), text(size: 9pt)[$overline(M)$], anchor: "east")
  content((0.32, 2.95), text(size: 9pt)[$overline(M)$], anchor: "east")

  line((0, 0), (0.93, 3.46), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 0.85pt))
  line((0.82, 3.05), (1.00, 3.73), mark: (end: ">"), stroke: (paint: rgb("#0a1045"), thickness: 0.85pt))
  content((0.68, 1.52), text(size: 9pt)[$M_Q$], anchor: "west")
})
