// Figura estratta da fatica.typ (riga 281) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *
  let x1 = 0.0
  let y0 = 2.0
  let x2 = 4.5
  let x3 = 9.0
  line((x3, y0 - 1.8), (x3, y0 + 2.0), mark: (end: ">"), stroke: 0.8pt)
  line((x3 - 0.2, y0), (x3 + 3.4, y0), mark: (end: ">"), stroke: 0.8pt)
  content((x3 - 0.25, y0 + 1.9), text(size: 8pt)[$sigma$])
  content((x3 + 3.55, y0 - 0.2), text(size: 8pt)[$t$])
  content((x3 + 1.6, y0 + 2.3), text(size: 8pt, weight: "bold")[Origine compr. ($R = -oo$)])
  line((x3, y0 - 0.8), (x3 + 3.0, y0 - 0.8), stroke: (dash: "dashed", thickness: 0.5pt))
  line((x3, y0 - 1.6), (x3 + 3.0, y0 - 1.6), stroke: (dash: "dotted", thickness: 0.5pt))
  content((x3 - 0.45, y0 - 0.8), text(size: 7pt)[$sigma_m$])
  content((x3 - 0.5, y0 - 1.6), text(size: 7pt, fill: blue)[$sigma_"min"$])
  bezier((x3, y0 - 0.8), (x3 + 1.5, y0 - 0.8), (x3 + 0.5, y0 + 0.27), (x3 + 1.0, y0 + 0.27), stroke: (paint: blue, thickness: 1pt))
  bezier((x3 + 1.5, y0 - 0.8), (x3 + 3.0, y0 - 0.8), (x3 + 2.0, y0 - 1.87), (x3 + 2.5, y0 - 1.87), stroke: (paint: blue, thickness: 1pt))
})
