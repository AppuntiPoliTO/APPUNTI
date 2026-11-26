// Effetto della tensione di compressione sull'escursione efficace Delta sigma (Slide 31)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Assi coordinati
  line((0.8, 0.35), (0.8, 3.75), mark: (end: ">", scale: 0.55), stroke: 0.85pt)
  line((0.6, 2.05), (6.5, 2.05), mark: (end: ">", scale: 0.55), stroke: 0.85pt)
  content((0.55, 3.55), text(size: 8pt)[$plus$], anchor: "east")
  content((0.55, 0.55), text(size: 8pt)[$minus$], anchor: "east")
  content((6.62, 2.05), text(size: 7.5pt)[$t$], anchor: "west")
  content((0.75, 3.92), text(size: 8pt)[$sigma$], anchor: "center")

  // Curva sinusoidale: y(x) = 1.90 + 1.15 * sin(2.6 * (x - 1.1)) -> max = 3.05 (+1.00 sopra 0), min = 0.75 (-1.30 sotto 0)
  let pts = ()
  for i in range(0, 81) {
    let x = 1.05 + i * 0.055
    let y = 1.90 + 1.15 * calc.sin(2.85 * (x - 1.55))
    pts.push((x, y))
  }
  line(..pts, stroke: (paint: blue.darken(20%), thickness: 1.05pt))

  // Livello sigma_max (y = 3.05)
  line((2.10, 3.05), (7.15, 3.05), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(80)))
  content((2.10, 3.22), text(size: 7.8pt)[$sigma_"max"$], anchor: "south")

  // Livello sigma_min (y = 0.75)
  line((3.20, 0.75), (6.10, 0.75), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(80)))
  content((3.20, 0.58), text(size: 7.8pt)[$sigma_"min"$], anchor: "north")

  // Livello ridotto -0.6 |sigma_min| -> 2.05 - 0.6 * 1.30 = 1.27
  line((5.35, 1.27), (7.10, 1.27), stroke: (dash: "dashed", thickness: 0.7pt, paint: red.darken(15%)))
  content((6.20, 1.12), text(size: 6.8pt, fill: red.darken(15%))[$-0.6 |sigma_"min"|$], anchor: "north")

  // Quota sigma_max (da 0 a sigma_max)
  line((5.95, 2.05), (5.95, 3.05), mark: (start: ">", end: ">", scale: 0.42), stroke: 0.65pt)
  content((6.06, 2.55), text(size: 7.2pt)[$|sigma_"max"|$], anchor: "west")

  // Quota Delta sigma efficace (da -0.6 |sigma_min| a sigma_max)
  line((6.95, 1.27), (6.95, 3.05), mark: (start: ">", end: ">", scale: 0.5, fill: red.darken(15%)), stroke: (paint: red.darken(15%), thickness: 0.9pt))
  content((7.12, 2.16), text(size: 7.6pt, fill: red.darken(15%))[*$Delta sigma =$\ $|sigma_"max"| + 0.6 |sigma_"min"|$*], anchor: "west")
})
