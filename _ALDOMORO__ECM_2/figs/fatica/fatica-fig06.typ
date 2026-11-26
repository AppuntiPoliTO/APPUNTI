// Figura estratta da fatica.typ (riga 308) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *
  let x1 = 0.0
  let y0 = 2.0
  let x2 = 4.5
  let x4 = 13.5
  line((x4, y0 - 1.8), (x4, y0 + 2.0), mark: (end: ">"), stroke: 0.8pt)
  line((x4 - 0.2, y0), (x4 + 3.4, y0), mark: (end: ">"), stroke: 0.8pt)
  content((x4 - 0.25, y0 + 1.9), text(size: 8pt)[$sigma$])
  content((x4 + 3.55, y0 - 0.2), text(size: 8pt)[$t$])
  content((x4 + 1.6, y0 + 2.3), text(size: 8pt, weight: "bold")[Pulsanti ($R > 0$)])
  // Pulsante trazione (sopra)
  line((x4, y0 + 1.1), (x4 + 3.0, y0 + 1.1), stroke: (dash: "dashed", thickness: 0.5pt))
  bezier((x4, y0 + 1.1), (x4 + 1.5, y0 + 1.1), (x4 + 0.5, y0 + 1.75), (x4 + 1.0, y0 + 1.75), stroke: (paint: blue, thickness: 1pt))
  bezier((x4 + 1.5, y0 + 1.1), (x4 + 3.0, y0 + 1.1), (x4 + 2.0, y0 + 0.45), (x4 + 2.5, y0 + 0.45), stroke: (paint: blue, thickness: 1pt))
  // Pulsante compressione (sotto)
  line((x4, y0 - 1.1), (x4 + 3.0, y0 - 1.1), stroke: (dash: "dashed", thickness: 0.5pt))
  bezier((x4, y0 - 1.1), (x4 + 1.5, y0 - 1.1), (x4 + 0.5, y0 - 0.45), (x4 + 1.0, y0 - 0.45), stroke: (paint: red, thickness: 1pt))
  bezier((x4 + 1.5, y0 - 1.1), (x4 + 3.0, y0 - 1.1), (x4 + 2.0, y0 - 1.75), (x4 + 2.5, y0 - 1.75), stroke: (paint: red, thickness: 1pt))
  content((x4 + 1.6, y0 + 1.8), text(size: 7pt, fill:blue.transparentize(20%), weight: "bold")[trazione])
  content((x4 + 1.6, y0 - 1.8), text(size: 7pt, fill:red.transparentize(20%), weight: "bold")[compressione])
})
