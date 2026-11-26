// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.45cm, {
  import draw: *

  let lx = -2.6
  content((lx, 2.20), text(size: 8.5pt)[*Piste a sezione ellittica*])

  line((lx - 1.65, 0), (lx + 1.65, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((lx, -1.65), (lx, 1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  rect((lx - 1.45, 0.30), (lx + 1.45, 1.40), fill: luma(236), stroke: 0.8pt)
  rect((lx - 1.45, -1.40), (lx + 1.45, -0.30), fill: luma(222), stroke: 0.8pt)
  circle((lx, 0), radius: (0.98, 1.08), fill: white, stroke: 0.9pt)
  circle((lx, 0), radius: 0.92, fill: rgb("#fef08a").transparentize(40%), stroke: 1.05pt)

  line((lx - 1.20, -1.20), (lx + 1.20, 1.20), stroke: (paint: red, thickness: 0.9pt))
  circle((lx + 0.65, 0.65), radius: 0.06, fill: red, stroke: none)
  circle((lx - 0.65, -0.65), radius: 0.06, fill: red, stroke: none)
  line((lx + 1.15, 1.15), (lx + 0.72, 0.72), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((lx - 1.15, -1.15), (lx - 0.72, -0.72), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  content((lx + 1.02, 1.28), text(size: 8pt, fill: red)[$F$])
  content((lx - 1.05, -1.28), text(size: 8pt, fill: red)[$F$])

  arc((lx, 0), start: 45deg, stop: 90deg, radius: 0.55, anchor: "origin", stroke: 0.6pt)
  content((lx + 0.26, 0.62), text(size: 6.5pt)[$45 degree$])
  circle((lx, 0), radius: 0.045, fill: black)
  content((lx + 0.16, -0.18), text(size: 7.5pt)[$O'$])

  circle((lx - 1.15, 1.10), radius: 0.18, fill: white, stroke: 0.65pt)
  content((lx - 1.15, 1.10), text(size: 7pt)[1])
  circle((lx + 1.15, -1.10), radius: 0.18, fill: white, stroke: 0.65pt)
  content((lx + 1.15, -1.10), text(size: 7pt)[3])

  let rx = 2.6
  content((rx, 2.20), text(size: 8.5pt)[*Piste a sezione ad arco gotico*])

  line((rx - 1.65, 0), (rx + 1.65, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((rx, -1.65), (rx, 1.65), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  rect((rx - 1.45, 0.28), (rx + 1.45, 1.40), fill: luma(236), stroke: 0.8pt)
  rect((rx - 1.45, -1.40), (rx + 1.45, -0.28), fill: luma(222), stroke: 0.8pt)

  merge-path(close: true, fill: white, stroke: 0.9pt, {
    arc((rx - 0.14, 0), start: -82.55deg, stop: 82.55deg, radius: 1.08, anchor: "origin")
    arc((rx + 0.14, 0), start: 97.45deg, stop: 262.55deg, radius: 1.08, anchor: "origin")
  })

  circle((rx, 0), radius: 0.92, fill: rgb("#fef08a").transparentize(40%), stroke: 1.05pt)

  line((rx - 1.15, -1.15), (rx + 1.15, 1.15), stroke: (dash: "dashed", paint: luma(90), thickness: 0.65pt))
  line((rx - 1.15, 1.15), (rx + 1.15, -1.15), stroke: (paint: red, thickness: 0.9pt))

  for pt in ((rx - 0.65, 0.65), (rx + 0.65, -0.65), (rx + 0.65, 0.65), (rx - 0.65, -0.65)) {
    circle(pt, radius: 0.055, fill: red, stroke: none)
  }
  line((rx - 1.12, 1.12), (rx - 0.72, 0.72), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  line((rx + 1.12, -1.12), (rx + 0.72, -0.72), mark: (end: ">"), stroke: (paint: red, thickness: 1pt))
  content((rx - 1.28, 0.90), text(size: 8pt, fill: red)[$N$])
  content((rx + 1.28, -0.90), text(size: 8pt, fill: red)[$N$])
  content((rx - 0.65, 1.00), text(size: 7.5pt)[$P$])
  content((rx + 0.65, -1.00), text(size: 7.5pt)[$P$])

  circle((rx - 0.14, 0), radius: 0.04, fill: black)
  circle((rx + 0.14, 0), radius: 0.04, fill: black)
  content((rx - 0.34, -0.26), text(size: 7pt)[$O''$])
  content((rx + 0.34, 0.26), text(size: 7pt)[$O'$])
  content((rx, -1.24), text(size: 7.5pt)[$C$])
})
