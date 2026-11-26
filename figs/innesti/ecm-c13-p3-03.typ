// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  rect((0, -2.6), (0.22, 2.6), stroke: 0.9pt)
  line((0, 1.56), (0.22, 1.56), stroke: 0.8pt)
  line((0, -1.56), (0.22, -1.56), stroke: 0.8pt)

  for y in (1.56, 1.76, 1.96, 2.16, 2.36) {
    line((0, y), (0.22, y + 0.22), stroke: 0.5pt)
  }
  for y in (-2.60, -2.40, -2.20, -2.00, -1.80) {
    line((0, y), (0.22, y + 0.22), stroke: 0.5pt)
  }

  line((-0.35, 0), (3.25, 0), stroke: (dash: "dash-dotted", thickness: 0.65pt))

  let pts-top = (
    (3.120, 1.560),
    (2.830, 1.733),
    (2.592, 1.907),
    (2.395, 2.080),
    (2.228, 2.253),
    (2.084, 2.427),
    (1.960, 2.600),
  )
  for p in pts-top {
    line(p, (0.22, p.at(1)), mark: (end: ">"), stroke: 0.7pt)
    line((p.at(0), -p.at(1)), (0.22, -p.at(1)), mark: (end: ">"), stroke: 0.7pt)
  }
  bezier((3.120, 1.560), (1.960, 2.600), (2.475, 1.907), (2.192, 2.253), stroke: 0.85pt)
  bezier((3.120, -1.560), (1.960, -2.600), (2.475, -1.907), (2.192, -2.253), stroke: 0.85pt)

  content((1.65, 3.05), text(size: 8.5pt)[$p(r) = p_"max" dot frac(r_i, r)$], anchor: "south")
  content((1.65, 1.32), text(size: 8.5pt)[$p(r)$], anchor: "north")
})
