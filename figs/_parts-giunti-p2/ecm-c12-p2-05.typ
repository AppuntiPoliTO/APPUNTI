// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Disegno creato con Studio di LocalTypst
#canvas(length: 0.85cm, {
  import draw: *

  // Semigiunto sinistro (giallo) e destro (azzurro)
  line((-2.35, 0.58), (-2.35, 1.25), (-0.65, 1.35), (-0.55, 1.45), (-0.55, 2.50), (-1.25, 2.50), (-1.25, 2.72), (-1.17, 2.80), (0, 2.80), (0, 1.18), (-0.12, 1.18), (-0.12, 0.58), close: true, fill: rgb("#facc15").transparentize(25%), stroke: none)
  line((2.35, 0.58), (2.35, 1.25), (0.65, 1.35), (0.55, 1.45), (0.55, 2.50), (1.25, 2.50), (1.25, 2.72), (1.17, 2.80), (0, 2.80), (0, 1.18), (-0.12, 1.18), (-0.12, 0.85), (-0.04, 0.85), (-0.04, 0.58), close: true, fill: rgb("#38bdf8").transparentize(25%), stroke: none)

  // Tratteggio sinistra (+45 deg)
  line((-2.35, 1.05), (-2.14, 1.26), stroke: 0.45pt)
  line((-2.35, 0.85), (-1.92, 1.28), stroke: 0.45pt)
  line((-2.35, 0.65), (-1.71, 1.29), stroke: 0.45pt)
  line((-2.22, 0.58), (-1.50, 1.30), stroke: 0.45pt)
  line((-2.02, 0.58), (-1.29, 1.31), stroke: 0.45pt)
  line((-1.82, 0.58), (-1.07, 1.33), stroke: 0.45pt)
  line((-1.62, 0.58), (-0.86, 1.34), stroke: 0.45pt)
  line((-1.42, 0.58), (-0.65, 1.35), stroke: 0.45pt)
  line((-1.22, 0.58), (0, 1.80), stroke: 0.45pt)
  line((-1.02, 0.58), (0, 1.60), stroke: 0.45pt)
  line((-0.82, 0.58), (0, 1.40), stroke: 0.45pt)
  line((-0.62, 0.58), (-0.12, 1.08), stroke: 0.45pt)
  line((-0.42, 0.58), (-0.12, 0.88), stroke: 0.45pt)
  line((-0.22, 0.58), (-0.12, 0.68), stroke: 0.45pt)
  line((-0.17, 2.23), (0, 2.40), stroke: 0.45pt)
  line((-0.37, 2.23), (0, 2.60), stroke: 0.45pt)
  line((-0.55, 2.25), (0, 2.80), stroke: 0.45pt)
  line((-0.55, 2.45), (-0.20, 2.80), stroke: 0.45pt)
  line((-0.70, 2.50), (-0.40, 2.80), stroke: 0.45pt)
  line((-0.90, 2.50), (-0.60, 2.80), stroke: 0.45pt)
  line((-1.10, 2.50), (-0.80, 2.80), stroke: 0.45pt)
  line((-1.25, 2.55), (-1.00, 2.80), stroke: 0.45pt)

  // Tratteggio destra (-45 deg)
  line((2.35, 1.05), (2.14, 1.26), stroke: 0.45pt)
  line((2.35, 0.85), (1.92, 1.28), stroke: 0.45pt)
  line((2.35, 0.65), (1.71, 1.29), stroke: 0.45pt)
  line((2.22, 0.58), (1.50, 1.30), stroke: 0.45pt)
  line((2.02, 0.58), (1.29, 1.31), stroke: 0.45pt)
  line((1.82, 0.58), (1.07, 1.33), stroke: 0.45pt)
  line((1.62, 0.58), (0.86, 1.34), stroke: 0.45pt)
  line((1.42, 0.58), (0.65, 1.35), stroke: 0.45pt)
  line((1.22, 0.58), (0, 1.80), stroke: 0.45pt)
  line((1.02, 0.58), (0, 1.60), stroke: 0.45pt)
  line((0.82, 0.58), (0, 1.40), stroke: 0.45pt)
  line((0.62, 0.58), (0, 1.20), stroke: 0.45pt)
  line((0.42, 0.58), (-0.12, 1.12), stroke: 0.45pt)
  line((0.22, 0.58), (-0.12, 0.92), stroke: 0.45pt)
  line((0.17, 2.23), (0, 2.40), stroke: 0.45pt)
  line((0.37, 2.23), (0, 2.60), stroke: 0.45pt)
  line((0.55, 2.25), (0, 2.80), stroke: 0.45pt)
  line((0.55, 2.45), (0.20, 2.80), stroke: 0.45pt)
  line((0.70, 2.50), (0.40, 2.80), stroke: 0.45pt)
  line((0.90, 2.50), (0.60, 2.80), stroke: 0.45pt)
  line((1.10, 2.50), (0.80, 2.80), stroke: 0.45pt)
  line((1.25, 2.55), (1.00, 2.80), stroke: 0.45pt)

  // Contorni principali
  line((-2.35, 0), (-2.35, 1.25), (-0.65, 1.35), stroke: 1pt)
  arc((-0.65, 1.45), start: 270deg, stop: 360deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((-0.55, 1.45), (-0.55, 2.50), (-1.25, 2.50), stroke: 1pt)
  line((-1.25, 1.315), (-1.25, 2.72), (-1.17, 2.80), (0, 2.80), (0, 2.23), stroke: 1pt)
  line((0, 1.87), (0, 1.18), stroke: 1pt)
  line((-2.35, 0.58), (-0.12, 0.58), stroke: 0.85pt)
  line((-2.35, 0.38), (-0.12, 0.38), stroke: 0.85pt)

  line((2.35, 0), (2.35, 1.25), (0.65, 1.35), stroke: 1pt)
  arc((0.65, 1.45), start: 180deg, stop: 270deg, radius: 0.10, anchor: "origin", stroke: 1pt)
  line((0.55, 1.45), (0.55, 2.50), (1.25, 2.50), stroke: 1pt)
  line((1.25, 1.315), (1.25, 2.72), (1.17, 2.80), (0, 2.80), stroke: 1pt)
  line((-0.04, 0.85), (-0.04, 0), stroke: 1pt)
  line((2.35, 0.58), (-0.04, 0.58), stroke: 0.85pt)
  line((2.35, 0.38), (-0.04, 0.38), stroke: 0.85pt)

  // Collare di centratura (rosso)
  line((0, 1.62), (0, 1.18), (-0.12, 1.18), (-0.12, 0.58), stroke: (paint: red, thickness: 1.5pt))
  line((-0.12, 0.58), (-0.12, 0), stroke: 1pt)

  // Vista esterna inferiore
  line((-2.35, 0), (-2.35, -1.25), (-1.25, -1.315), stroke: 1pt)
  line((-1.25, -1.315), (-1.25, -2.72), (-1.17, -2.80), (1.17, -2.80), (1.25, -2.72), (1.25, -1.315), stroke: 1pt)
  line((1.25, -1.315), (2.35, -1.25), (2.35, 0), stroke: 1pt)
  line((0, 0), (0, -2.80), stroke: 0.85pt)
  line((-1.17, -1.315), (-1.17, -2.80), stroke: 0.65pt)
  line((1.17, -1.315), (1.17, -2.80), stroke: 0.65pt)

  // Bullone e dado
  rect((-1.15, 1.87), (0.55, 2.23), fill: white, stroke: 0.9pt)
  line((-1.15, 1.91), (-0.25, 1.91), stroke: 0.55pt)
  line((-1.15, 2.19), (-0.25, 2.19), stroke: 0.55pt)
  rect((-1.05, 1.73), (-0.75, 2.37), fill: white, stroke: 0.9pt)
  line((-1.05, 1.89), (-0.75, 1.89), stroke: 0.7pt)
  line((-1.05, 2.21), (-0.75, 2.21), stroke: 0.7pt)
  rect((0.55, 1.73), (0.92, 2.37), fill: white, stroke: 0.9pt)
  line((0.80, 1.73), (0.80, 2.37), stroke: 0.7pt)

  // Assi
  line((-2.60, 0), (2.60, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((-1.35, 2.05), (1.35, 2.05), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // Quote sezione longitudinale
  line((-2.35, 1.35), (-2.35, 3.62), stroke: 0.5pt)
  line((2.35, 1.35), (2.35, 3.62), stroke: 0.5pt)
  line((-2.35, 3.48), (2.35, 3.48), mark: (start: ">", end: ">"), stroke: 0.55pt)
  content((0, 3.55), text(size: 8pt)[$L_("max")$], anchor: "south")

  line((-1.40, 2.05), (-3.05, 2.05), stroke: 0.5pt)
  line((-2.95, -0.20), (-2.95, 2.05), mark: (end: ">"), stroke: 0.55pt)
  content((-3.02, 0.95), text(size: 7.5pt)[$d^*$], anchor: "east")

  line((-2.38, 1.25), (-2.70, 1.25), stroke: 0.5pt)
  line((-2.58, -0.20), (-2.58, 1.25), mark: (end: ">"), stroke: 0.55pt)
  content((-2.65, 0.50), text(size: 7.5pt)[$d_i$], anchor: "east")

  line((1.25, 2.80), (3.00, 2.80), stroke: 0.5pt)
  line((1.25, -2.80), (3.00, -2.80), stroke: 0.5pt)
  line((2.88, -2.80), (2.88, 2.80), mark: (start: ">", end: ">"), stroke: 0.55pt)
  content((2.96, 0), text(size: 8pt)[$D$], anchor: "west")

  line((-1.25, -2.85), (-1.25, -3.55), stroke: 0.5pt)
  line((1.25, -2.85), (1.25, -3.55), stroke: 0.5pt)
  line((-1.25, -3.40), (1.25, -3.40), mark: (start: ">", end: ">"), stroke: 0.55pt)
  content((0, -3.33), text(size: 7.5pt)[$L$], anchor: "south")

  // Vista frontale (destra)
  let cx = 6.75
  line((cx - 3.10, 0), (cx + 3.10, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((cx, -3.10), (cx, 3.10), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  circle((cx, 0), radius: 2.80, stroke: 1pt)
  circle((cx, 0), radius: 2.50, stroke: 0.75pt)
  circle((cx, 0), radius: 2.05, stroke: (dash: "dash-dotted", thickness: 0.6pt))
  circle((cx, 0), radius: 1.25, stroke: 0.85pt)
  circle((cx, 0), radius: 0.58, stroke: 0.9pt)
  rect((cx - 0.14, 0.52), (cx + 0.14, 0.74), fill: white, stroke: 0.8pt)

  for pos in ((cx, 2.05), (cx, -2.05), (cx + 2.05, 0), (cx - 2.05, 0)) {
    let (bx, by) = pos
    circle((bx, by), radius: 0.36, fill: white, stroke: 0.75pt)
    line((bx + 0.30, by), (bx + 0.15, by + 0.26), (bx - 0.15, by + 0.26), (bx - 0.30, by), (bx - 0.15, by - 0.26), (bx + 0.15, by - 0.26), close: true, stroke: 0.85pt)
    circle((bx, by), radius: 0.18, stroke: 0.65pt)
  }

  line((cx - 1.45, -1.45), (cx + 1.45, 1.45), mark: (start: ">", end: ">"), stroke: 0.6pt)
  line((cx + 1.45, 1.45), (cx + 2.45, 2.45), stroke: 0.55pt)
  content((cx + 2.52, 2.50), text(size: 8.5pt)[$d^*$], anchor: "west")
})
