// Figura estratta da fatica.typ (riga 231) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *

  // --- 1. Ciclo di inversione (R = -1) ---
  let x1 = 0.0
  let y0 = 2.0
  line((x1, y0 - 1.8), (x1, y0 + 2.0), mark: (end: ">"), stroke: 0.8pt)
  line((x1 - 0.2, y0), (x1 + 3.4, y0), mark: (end: ">"), stroke: 0.8pt)
  content((x1 - 0.25, y0 + 1.9), text(size: 8pt)[$sigma$])
  content((x1 + 3.55, y0 - 0.2), text(size: 8pt)[$t$])
  content((x1 + 1.6, y0 + 2.3), text(size: 8pt, weight: "bold")[Inversione ($R = -1$)])
  line((x1, y0 + 1.0), (x1 + 3.0, y0 + 1.0), stroke: (dash: "dotted", thickness: 0.5pt))
  line((x1, y0 - 1.0), (x1 + 3.0, y0 - 1.0), stroke: (dash: "dotted", thickness: 0.5pt))
  content((x1 - 0.5, y0 + 1.0), text(size: 7pt, fill: blue)[$+sigma_"max"$])
  content((x1 - 0.5, y0 - 1.0), text(size: 7pt, fill: blue)[$-sigma_"min"$])
  bezier((x1, y0), (x1 + 1.5, y0), (x1 + 0.5, y0 + 1.33), (x1 + 1.0, y0 + 1.33), stroke: (paint: blue, thickness: 1pt))
  bezier((x1 + 1.5, y0), (x1 + 3.0, y0), (x1 + 2.0, y0 - 1.33), (x1 + 2.5, y0 - 1.33), stroke: (paint: blue, thickness: 1pt))})
