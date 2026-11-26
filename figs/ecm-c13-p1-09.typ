#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.3, 6.8), (4.7, 6.8), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((2.5, 5.02), (2.5, 9.0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  circle((2.5, 6.8), radius: 1.65, fill: gray.transparentize(84%), stroke: 0.9pt)
  circle((2.5, 6.8), radius: 1.40, fill: white, stroke: 0.85pt)
  rect((2.40, 8.19), (2.60, 8.33), fill: white, stroke: 0.65pt)
  rect((2.40, 5.27), (2.60, 5.41), fill: white, stroke: 0.65pt)
  rect((0.97, 6.70), (1.11, 6.90), fill: white, stroke: 0.65pt)
  rect((3.89, 6.70), (4.03, 6.90), fill: white, stroke: 0.65pt)

  circle((2.5, 6.8), radius: 1.32, stroke: 0.65pt)
  circle((2.5, 6.8), radius: 0.55, stroke: 0.65pt)
  circle((2.5, 6.8), radius: 0.25, fill: gray.transparentize(82%), stroke: 0.8pt)
  rect((2.45, 7.00), (2.55, 7.11), fill: gray.transparentize(65%), stroke: 0.6pt)
  rect((2.45, 6.49), (2.55, 6.60), fill: gray.transparentize(65%), stroke: 0.6pt)
  rect((2.19, 6.75), (2.30, 6.85), fill: gray.transparentize(65%), stroke: 0.6pt)
  rect((2.70, 6.75), (2.81, 6.85), fill: gray.transparentize(65%), stroke: 0.6pt)

  line((4.9, 6.8), (8.4, 6.8), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  rect((4.95, 6.62), (8.25, 6.98), fill: white, stroke: 0.85pt)
  rect((5.25, 6.76), (5.75, 6.84), fill: gray.transparentize(75%), stroke: 0.55pt)
  rect((6.20, 6.76), (7.65, 6.84), fill: gray.transparentize(75%), stroke: 0.55pt)
  bezier((4.95, 6.98), (4.95, 6.62), (4.86, 6.88), (5.04, 6.72), stroke: 0.75pt)
  bezier((8.25, 6.98), (8.25, 6.62), (8.34, 6.88), (8.16, 6.72), stroke: 0.75pt)

  line((5.15, 6.98), (5.15, 7.55), (5.70, 7.55), (5.70, 8.25), (7.95, 8.25), (7.95, 8.05), (5.95, 8.05), (5.95, 6.98), close: true, fill: gray.transparentize(82%), stroke: 0.85pt)
  line((5.15, 6.62), (5.15, 6.05), (5.70, 6.05), (5.70, 5.35), (7.95, 5.35), (7.95, 5.55), (5.95, 5.55), (5.95, 6.62), close: true, fill: gray.transparentize(82%), stroke: 0.85pt)

  rect((5.95, 6.98), (7.65, 7.18), fill: gray.transparentize(70%), stroke: 0.75pt)
  rect((5.95, 6.42), (7.65, 6.62), fill: gray.transparentize(70%), stroke: 0.75pt)

  rect((7.65, 6.98), (7.95, 8.05), fill: gray.transparentize(82%), stroke: 0.85pt)
  rect((7.65, 5.55), (7.95, 6.62), fill: gray.transparentize(82%), stroke: 0.85pt)

  rect((6.10, 7.26), (6.20, 8.05), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((6.54, 7.26), (6.64, 8.05), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((6.98, 7.26), (7.08, 8.05), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((7.42, 7.26), (7.52, 8.05), fill: gray.transparentize(75%), stroke: 0.65pt)

  rect((6.10, 5.55), (6.20, 6.34), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((6.54, 5.55), (6.64, 6.34), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((6.98, 5.55), (7.08, 6.34), fill: gray.transparentize(75%), stroke: 0.65pt)
  rect((7.42, 5.55), (7.52, 6.34), fill: gray.transparentize(75%), stroke: 0.65pt)

  rect((6.26, 7.18), (6.32, 7.95), fill: gray.darken(40%), stroke: 0.5pt)
  rect((6.32, 7.18), (6.42, 7.95), fill: white, stroke: 0.5pt)
  rect((6.42, 7.18), (6.48, 7.95), fill: gray.darken(40%), stroke: 0.5pt)

  rect((6.70, 7.18), (6.76, 7.95), fill: gray.darken(40%), stroke: 0.5pt)
  rect((6.76, 7.18), (6.86, 7.95), fill: white, stroke: 0.5pt)
  rect((6.86, 7.18), (6.92, 7.95), fill: gray.darken(40%), stroke: 0.5pt)

  rect((7.14, 7.18), (7.20, 7.95), fill: gray.darken(40%), stroke: 0.5pt)
  rect((7.20, 7.18), (7.30, 7.95), fill: white, stroke: 0.5pt)
  rect((7.30, 7.18), (7.36, 7.95), fill: gray.darken(40%), stroke: 0.5pt)

  rect((6.26, 5.65), (6.32, 6.42), fill: gray.darken(40%), stroke: 0.5pt)
  rect((6.32, 5.65), (6.42, 6.42), fill: white, stroke: 0.5pt)
  rect((6.42, 5.65), (6.48, 6.42), fill: gray.darken(40%), stroke: 0.5pt)

  rect((6.70, 5.65), (6.76, 6.42), fill: gray.darken(40%), stroke: 0.5pt)
  rect((6.76, 5.65), (6.86, 6.42), fill: white, stroke: 0.5pt)
  rect((6.86, 5.65), (6.92, 6.42), fill: gray.darken(40%), stroke: 0.5pt)

  rect((7.14, 5.65), (7.20, 6.42), fill: gray.darken(40%), stroke: 0.5pt)
  rect((7.20, 5.65), (7.30, 6.42), fill: white, stroke: 0.5pt)
  rect((7.30, 5.65), (7.36, 6.42), fill: gray.darken(40%), stroke: 0.5pt)

  line((8.35, 7.65), (7.96, 7.65), mark: (end: ">", fill: black), stroke: 1.0pt)
  line((8.35, 5.95), (7.96, 5.95), mark: (end: ">", fill: black), stroke: 1.0pt)

  content((1.15, 8.65), text(size: 8.5pt)[_campana_])
  line((1.15, 8.48), (1.45, 8.05), stroke: 0.55pt)
  line((1.25, 8.48), (5.70, 7.85), stroke: 0.55pt)

  content((1.35, 4.82), text(size: 8.5pt)[_spingidisco/i_])
  line((2.55, 4.82), (7.25, 5.85), stroke: 0.55pt)

  line((1.4, 0.35), (7.6, 0.35), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  rect((2.05, 0.35), (6.35, 0.90), fill: white, stroke: 0.85pt)
  arc((6.35, 0.625), start: 270deg, stop: 450deg, radius: (0.12, 0.275), anchor: "origin", stroke: 0.85pt)

  line((1.55, 0.90), (1.85, 0.90), (1.85, 3.60), (2.35, 3.60), (2.35, 4.20), (1.55, 4.20), close: true, fill: gray.transparentize(82%), stroke: 0.85pt)
  line((1.40, 3.90), (2.50, 3.90), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  rect((1.55, 3.78), (1.85, 4.02), fill: white, stroke: 0.65pt)

  rect((2.05, 0.90), (5.75, 1.25), fill: gray.transparentize(84%), stroke: 0.8pt)
  line((2.15, 1.25), (2.15, 3.40), (3.00, 3.40), (3.00, 1.25), close: true, fill: gray.transparentize(88%), stroke: 0.8pt)
  circle((2.50, 2.75), radius: 0.10, fill: white, stroke: 0.65pt)
  line((2.20, 2.75), (2.80, 2.75), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  rect((3.00, 3.55), (4.10, 3.80), fill: gray.transparentize(78%), stroke: 0.75pt)
  rect((3.06, 1.32), (3.14, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.20, 1.32), (3.28, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.34, 1.32), (3.42, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.48, 1.32), (3.56, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.62, 1.32), (3.70, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.76, 1.32), (3.84, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((3.90, 1.32), (3.98, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)
  rect((4.04, 1.32), (4.12, 3.55), fill: gray.transparentize(70%), stroke: 0.55pt)

  line((4.12, 1.25), (5.85, 1.25), (5.85, 3.40), (4.12, 3.40), close: true, fill: gray.transparentize(82%), stroke: 0.85pt)

  rect((4.65, 2.10), (5.40, 2.72), fill: white, stroke: 0.8pt)
  line((4.65, 2.25), (5.40, 2.25), stroke: 0.45pt)
  line((4.65, 2.41), (5.40, 2.41), stroke: 0.45pt)
  line((4.65, 2.57), (5.40, 2.57), stroke: 0.45pt)
  line((4.83, 2.10), (4.83, 2.72), stroke: 0.45pt)
  line((5.02, 2.10), (5.02, 2.72), stroke: 0.45pt)
  line((5.21, 2.10), (5.21, 2.72), stroke: 0.45pt)

  rect((4.12, 2.95), (5.85, 3.12), fill: white, stroke: 0.7pt)
  rect((4.12, 1.56), (5.85, 1.88), fill: white, stroke: 0.7pt)
  rect((4.12, 1.67), (5.85, 1.77), fill: gray.transparentize(75%), stroke: 0.6pt)
  line((4.48, 1.58), (4.55, 1.86), stroke: 0.75pt)
  line((4.63, 1.58), (4.70, 1.86), stroke: 0.75pt)
  line((4.78, 1.58), (4.85, 1.86), stroke: 0.75pt)
  line((4.93, 1.58), (5.00, 1.86), stroke: 0.75pt)
  line((5.08, 1.58), (5.15, 1.86), stroke: 0.75pt)

  rect((4.45, 3.40), (4.85, 3.88), fill: gray.transparentize(78%), stroke: 0.75pt)
  rect((5.15, 3.40), (5.55, 3.88), fill: gray.transparentize(78%), stroke: 0.75pt)
  line((4.65, 3.88), (4.65, 4.10), stroke: 0.65pt)
  line((5.35, 3.88), (5.35, 4.10), stroke: 0.65pt)
  content((4.65, 4.30), text(size: 9pt)[*+*])
  content((5.35, 4.30), text(size: 9pt)[*-*])

  content((6.80, 2.85), text(size: 8.5pt)[_elettro-_])
  content((6.80, 2.55), text(size: 8.5pt)[_magnete_])
  line((6.20, 2.65), (5.40, 2.45), stroke: 0.55pt)

  content((6.70, 1.73), text(size: 8.5pt)[_molle_])
  line((6.30, 1.73), (5.20, 1.73), stroke: 0.55pt)
})
