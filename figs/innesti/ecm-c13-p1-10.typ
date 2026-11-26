// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  line((0.2, 3.0), (4.6, 3.0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((2.4, 0.2), (2.4, 5.8), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((0.85, 1.45), (3.95, 4.55), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0.85, 4.55), (3.95, 1.45), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  line((2.4, 5.75), (2.75, 5.75), mark: (end: ">"), stroke: 0.8pt)
  content((2.22, 5.75), text(size: 8.5pt)[_A_])
  line((2.4, 0.25), (2.75, 0.25), mark: (end: ">"), stroke: 0.8pt)
  content((2.22, 0.25), text(size: 8.5pt)[_A_])
  content((1.10, 5.15), text(size: 8.5pt)[_B–B_])

  circle((2.4, 3.0), radius: 1.95, fill: white, stroke: 0.9pt)
  circle((2.4, 3.0), radius: 1.60, fill: gray.transparentize(84%), stroke: 0.85pt)
  circle((2.4, 3.0), radius: 1.40, fill: white, stroke: 0.85pt)

  for i in range(8) {
    let a = i * 45deg
    circle((2.4 + 1.78 * calc.cos(a), 3.0 + 1.78 * calc.sin(a)), radius: 0.10, fill: white, stroke: 0.65pt)
  }

  for a in (0deg, 90deg, 180deg, 270deg) {
    let cx = 2.4 + 1.41 * calc.cos(a)
    let cy = 3.0 + 1.41 * calc.sin(a)
    rect((cx - 0.08, cy - 0.08), (cx + 0.08, cy + 0.08), fill: white, stroke: 0.65pt)
  }

  circle((2.4, 3.0), radius: 1.32, stroke: 0.65pt)
  circle((2.4, 3.0), radius: 1.04, fill: white, stroke: 0.7pt)
  circle((2.4, 3.0), radius: 0.94, fill: gray.transparentize(82%), stroke: 0.85pt)
  for i in range(6) {
    let a = 30deg + i * 60deg
    let r1 = 0.88
    let r2 = 1.05
    let da = 6deg
    line(
      (2.4 + r1 * calc.cos(a - da), 3.0 + r1 * calc.sin(a - da)),
      (2.4 + r2 * calc.cos(a - da), 3.0 + r2 * calc.sin(a - da)),
      (2.4 + r2 * calc.cos(a + da), 3.0 + r2 * calc.sin(a + da)),
      (2.4 + r1 * calc.cos(a + da), 3.0 + r1 * calc.sin(a + da)),
      close: true, fill: gray.transparentize(65%), stroke: 0.6pt,
    )
  }
  circle((2.4, 3.0), radius: 0.50, fill: white, stroke: 0.85pt)
  rect((2.32, 3.45), (2.48, 3.58), fill: white, stroke: 0.7pt)

  line((5.3, 3.0), (9.3, 3.0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((6.70, 0.2), (6.70, 5.8), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  line((6.70, 5.75), (6.35, 5.75), mark: (end: ">"), stroke: 0.8pt)
  content((6.88, 5.75), text(size: 8.5pt)[_B_])
  line((6.70, 0.25), (6.35, 0.25), mark: (end: ">"), stroke: 0.8pt)
  content((6.88, 0.25), text(size: 8.5pt)[_B_])
  content((7.55, 5.15), text(size: 8.5pt)[_A–A_])

  rect((5.95, 4.35), (6.20, 4.95), fill: gray.transparentize(82%), stroke: 0.8pt)
  line((5.70, 4.72), (6.45, 4.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((5.95, 4.64), (6.20, 4.80), fill: white, stroke: 0.65pt)

  rect((5.95, 1.05), (6.20, 1.65), fill: gray.transparentize(82%), stroke: 0.8pt)
  line((5.70, 1.28), (6.45, 1.28), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((5.95, 1.20), (6.20, 1.36), fill: white, stroke: 0.65pt)

  line((6.20, 3.55), (6.44, 3.55), (6.44, 4.26), (7.30, 4.26), (7.30, 4.48), (6.20, 4.48), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)
  line((6.20, 1.52), (7.30, 1.52), (7.30, 1.74), (6.44, 1.74), (6.44, 2.45), (6.20, 2.45), close: true, fill: gray.transparentize(82%), stroke: 0.8pt)

  for i in range(7) {
    let x = 6.50 + i * 0.09
    let fl = if calc.rem(i, 2) == 0 { gray.transparentize(65%) } else { white }
    rect((x, 3.74), (x + 0.06, 4.26), fill: fl, stroke: 0.5pt)
    rect((x, 1.74), (x + 0.06, 2.26), fill: fl, stroke: 0.5pt)
  }

  rect((7.14, 3.72), (7.50, 4.32), fill: gray.transparentize(78%), stroke: 0.8pt)
  rect((7.14, 1.68), (7.50, 2.28), fill: gray.transparentize(78%), stroke: 0.8pt)
  rect((7.30, 4.35), (7.50, 4.48), fill: gray.transparentize(60%), stroke: 0.65pt)
  rect((7.30, 1.52), (7.50, 1.65), fill: gray.transparentize(60%), stroke: 0.65pt)

  rect((5.85, 2.68), (9.05, 3.32), fill: white, stroke: 0.85pt)
  line((5.85, 2.82), (9.05, 2.82), stroke: 0.5pt)
  line((5.85, 3.18), (9.05, 3.18), stroke: 0.5pt)
  rect((5.85, 3.32), (9.05, 3.46), fill: gray.transparentize(82%), stroke: 0.8pt)
  rect((5.85, 2.54), (9.05, 2.68), fill: gray.transparentize(82%), stroke: 0.8pt)

  merge-path(fill: gray.transparentize(82%), stroke: 0.8pt, close: true, {
    line((7.65, 3.46), (8.92, 3.46), (8.92, 4.02), (8.54, 4.02), (8.54, 3.68), (8.16, 3.68), (8.16, 4.02), (7.96, 4.02))
    bezier((7.96, 4.02), (7.65, 3.46), (7.88, 3.70), (7.78, 3.52))
  })
  merge-path(fill: gray.transparentize(82%), stroke: 0.8pt, close: true, {
    line((7.65, 2.54), (8.92, 2.54), (8.92, 1.98), (8.54, 1.98), (8.54, 2.32), (8.16, 2.32), (8.16, 1.98), (7.96, 1.98))
    bezier((7.96, 1.98), (7.65, 2.54), (7.88, 2.30), (7.78, 2.48))
  })

  line(
    (6.02, 3.46),
    (6.02, 3.92),
    (6.24, 3.92),
    (6.30, 3.74),
    (7.14, 3.74),
    (7.14, 3.62),
    (7.78, 3.62),
    (7.72, 3.50),
    (7.14, 3.46),
    close: true, fill: white, stroke: 0.8pt,
  )
  circle((6.16, 3.66), radius: 0.065, fill: gray.transparentize(55%), stroke: 0.65pt)

  circle((8.35, 4.30), radius: (0.44, 0.20), stroke: (dash: "dashed", thickness: 1.0pt, paint: red))
  line((8.04, 4.30), (8.66, 4.30), mark: (start: ">", end: ">"), stroke: 0.85pt)
  circle((8.35, 4.30), radius: 0.035, fill: black, stroke: none)
})
