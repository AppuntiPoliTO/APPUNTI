// Figura estratta da fatica.typ (riga 256) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *
  let x1 = 0.0
  let y0 = 2.0
  let x2 = 4.5
  line((x2, y0 - 1.8), (x2, y0 + 2.0), mark: (end: ">"), stroke: 0.8pt)
  line((x2 - 0.2, y0), (x2 + 3.4, y0), mark: (end: ">"), stroke: 0.8pt)
  content((x2 - 0.25, y0 + 1.9), text(size: 8pt)[$sigma$])
  content((x2 + 3.55, y0 - 0.2), text(size: 8pt)[$t$])
  content((x2 + 1.6, y0 + 2.3), text(size: 8pt, weight: "bold")[Origine traz. ($R = 0$)])
  line((x2, y0 + 0.8), (x2 + 3.0, y0 + 0.8), stroke: (dash: "dashed", thickness: 0.5pt))
  line((x2, y0 + 1.6), (x2 + 3.0, y0 + 1.6), stroke: (dash: "dotted", thickness: 0.5pt))
  content((x2 - 0.45, y0 + 0.8), text(size: 7pt)[$sigma_m$])
  content((x2 - 0.5, y0 + 1.6), text(size: 7pt, fill: blue)[$sigma_"max"$])
  bezier((x2, y0 + 0.8), (x2 + 1.5, y0 + 0.8), (x2 + 0.5, y0 + 1.87), (x2 + 1.0, y0 + 1.87), stroke: (paint: blue, thickness: 1pt))
  bezier((x2 + 1.5, y0 + 0.8), (x2 + 3.0, y0 + 0.8), (x2 + 2.0, y0 - 0.27), (x2 + 2.5, y0 - 0.27), stroke: (paint: blue, thickness: 1pt))
})
