// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1.4cm, {
  import draw: *

  // Assi di simmetria principali
  line((-2.10, 0), (5.18, 0), stroke: (dash: "dash-dotted", thickness: 0.55pt))
  line((3.85, -1.42), (3.85, 1.32), stroke: (dash: "dash-dotted", thickness: 0.55pt))

  // === VISTA FRONTALE (SINISTRA) ===
  line((-1.95, 0.36), (-1.60, 0.36), stroke: 1pt)
  line((-1.95, -0.36), (-1.60, -0.36), stroke: 1pt)
  bezier((-1.95, 0.36), (-1.95, 0), (-2.03, 0.24), (-1.87, 0.12), stroke: 1pt)
  bezier((-1.95, 0), (-1.95, -0.36), (-2.03, -0.12), (-2.03, -0.24), stroke: 1pt)
  bezier((-1.95, 0), (-1.95, -0.36), (-1.87, -0.12), (-1.87, -0.24), stroke: 1pt)

  line((1.60, 0.36), (1.95, 0.36), stroke: 1pt)
  line((1.60, -0.36), (1.95, -0.36), stroke: 1pt)
  bezier((1.95, 0.36), (1.95, -0.36), (2.04, 0.12), (1.86, -0.12), stroke: 1pt)

  // Corpo del giunto a gusci
  line((-1.60, 1.10), (-1.60, -1.10), stroke: 1pt)
  arc((-1.52, -1.10), start: 180deg, stop: 270deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((-1.52, -1.18), (1.52, -1.18), stroke: 1pt)
  arc((1.52, -1.10), start: 270deg, stop: 360deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((1.60, -1.10), (1.60, 1.10), stroke: 1pt)
  arc((1.52, 1.10), start: 0deg, stop: 90deg, radius: 0.08, anchor: "origin", stroke: 1pt)
  line((1.52, 1.18), (-1.52, 1.18), stroke: 1pt)
  arc((-1.52, 1.10), start: 90deg, stop: 180deg, radius: 0.08, anchor: "origin", stroke: 1pt)

  // Involucro di protezione in lamierino
  rect((-1.50, 1.18), (1.50, 1.25), fill: gray.transparentize(65%), stroke: 0.9pt)
  rect((-1.50, -1.25), (1.50, -1.18), fill: gray.transparentize(65%), stroke: 0.9pt)
  for x in range(-148, 145, step: 15) {
    let xf = x / 100
    line((xf, 1.18), (xf + 0.07, 1.25), stroke: 0.45pt)
    line((xf, -1.25), (xf + 0.07, -1.18), stroke: 0.45pt)
  }

  // Cava centrale nascosta
  line((-1.32, 0.11), (1.32, 0.11), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-1.32, -0.11), (1.32, -0.11), stroke: (dash: "dashed", thickness: 0.6pt))
  arc((-1.32, 0), start: 90deg, stop: 270deg, radius: 0.11, anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))
  arc((1.32, 0), start: 270deg, stop: 450deg, radius: 0.11, anchor: "origin", stroke: (dash: "dashed", thickness: 0.6pt))

  // Assi dei bulloni nella vista frontale
  line((-0.95, -1.25), (-0.95, 1.25), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0, -1.25), (0, 1.38), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((0.95, -1.25), (0.95, 1.38), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-1.40, 0.72), (1.40, 0.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((-1.40, -0.72), (1.40, -0.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Nicchie a U
  for cx in (-0.95, 0, 0.95) {
    line((cx - 0.28, 1.18), (cx - 0.28, 0.72), stroke: 0.85pt)
    arc((cx, 0.72), start: 180deg, stop: 360deg, radius: 0.28, anchor: "origin", stroke: 0.85pt)
    line((cx + 0.28, 0.72), (cx + 0.28, 1.18), stroke: 0.85pt)
    line((cx - 0.28, -1.18), (cx - 0.28, -0.72), stroke: 0.85pt)
    arc((cx, -0.72), start: 0deg, stop: 180deg, radius: 0.28, anchor: "origin", stroke: 0.85pt)
    line((cx + 0.28, -0.72), (cx + 0.28, -1.18), stroke: 0.85pt)
  }

  // Bulloni alternati (dadi esagonali)
  for pos in ((-0.95, 0.72), (0.95, 0.72), (0, -0.72)) {
    let (bx, by) = pos
    circle((bx, by), radius: 0.22, stroke: 0.65pt)
    line((bx + 0.20, by), (bx + 0.10, by + 0.17), (bx - 0.10, by + 0.17), (bx - 0.20, by), (bx - 0.10, by - 0.17), (bx + 0.10, by - 0.17), close: true, stroke: 0.8pt)
    circle((bx, by), radius: 0.16, stroke: 0.6pt)
    circle((bx, by), radius: 0.08, stroke: 0.75pt)
  }

  // Bulloni alternati (teste quadrate)
  rect((-0.15, 0.57), (0.15, 0.87), stroke: 0.8pt)
  rect((-1.10, -0.87), (-0.80, -0.57), stroke: 0.8pt)
  rect((0.80, -0.87), (1.10, -0.57), stroke: 0.8pt)

  // === SEZIONE TRASVERSALE (DESTRA) ===
  circle((3.85, 0), radius: 1.25, fill: gray.transparentize(65%), stroke: 1pt)
  circle((3.85, 0), radius: 1.18, fill: white, stroke: 0.9pt)

  // Riempimento continuo semiguscio sinistro (giallo)
  merge-path(close: true, fill: rgb("#facc15").transparentize(30%), stroke: none, {
    line((3.82, -1.1796), (3.82, 1.1796))
    arc((3.85, 0), start: 91.46deg, stop: 112.42deg, radius: 1.18, anchor: "origin")
    line((3.40, 1.0908), (3.40, 0.24), (2.6947, 0.24))
    arc((3.85, 0), start: 168.26deg, stop: 191.74deg, radius: 1.18, anchor: "origin")
    line((2.6947, -0.24), (3.40, -0.24), (3.40, -1.0908))
    arc((3.85, 0), start: 247.58deg, stop: 268.54deg, radius: 1.18, anchor: "origin")
  })

  // Riempimento continuo semiguscio destro (verde)
  merge-path(close: true, fill: rgb("#84cc16").transparentize(30%), stroke: none, {
    line((3.88, 1.1796), (3.88, -1.1796))
    arc((3.85, 0), start: 271.46deg, stop: 292.42deg, radius: 1.18, anchor: "origin")
    line((4.30, -1.0908), (4.30, -0.24), (5.0053, -0.24))
    arc((3.85, 0), start: 348.26deg, stop: 371.74deg, radius: 1.18, anchor: "origin")
    line((5.0053, 0.24), (4.30, 0.24), (4.30, 1.0908))
    arc((3.85, 0), start: 67.58deg, stop: 88.54deg, radius: 1.18, anchor: "origin")
  })

  // Foro albero centrale
  circle((3.85, 0), radius: 0.36, fill: white, stroke: none)

  // Contorni dei semigusci
  line((3.82, 1.18), (3.82, 0.36), stroke: 0.9pt)
  line((3.82, -0.36), (3.82, -1.18), stroke: 0.9pt)
  line((3.40, 1.09), (3.40, 0.24), (2.70, 0.24), stroke: 0.9pt)
  line((3.40, -1.09), (3.40, -0.24), (2.70, -0.24), stroke: 0.9pt)

  line((3.88, 1.18), (3.88, 0.36), stroke: 0.9pt)
  line((3.88, -0.36), (3.88, -1.18), stroke: 0.9pt)
  line((4.30, 1.09), (4.30, 0.24), (5.00, 0.24), stroke: 0.9pt)
  line((4.30, -1.09), (4.30, -0.24), (5.00, -0.24), stroke: 0.9pt)

  arc((3.85, 0), start: 95deg, stop: 265deg, radius: 0.36, anchor: "origin", stroke: 0.95pt)
  arc((3.85, 0), start: 275deg, stop: 345deg, radius: 0.36, anchor: "origin", stroke: 0.95pt)
  arc((3.85, 0), start: 15deg, stop: 85deg, radius: 0.36, anchor: "origin", stroke: 0.95pt)

  // Linguetta
  rect((4.14, -0.09), (4.28, 0.09), fill: rgb("#e5e7eb"), stroke: 0.9pt)

  // Tratteggi semiguscio sinistro
  line((3.40, 0.95), (3.60, 1.15), stroke: 0.45pt)
  line((2.67, 0.02), (2.89, 0.24), stroke: 0.45pt)
  line((3.44, 0.79), (3.82, 1.17), stroke: 0.45pt)
  line((2.68, -0.17), (3.09, 0.24), stroke: 0.45pt)
  line((3.40, 0.55), (3.50, 0.65), stroke: 0.45pt)
  line((3.64, 0.79), (3.82, 0.97), stroke: 0.45pt)
  line((2.81, -0.24), (3.29, 0.24), stroke: 0.45pt)
  line((3.40, 0.35), (3.70, 0.65), stroke: 0.45pt)
  line((3.01, -0.24), (3.82, 0.57), stroke: 0.45pt)
  line((3.21, -0.24), (3.49, 0.04), stroke: 0.45pt)
  line((3.40, -0.25), (3.52, -0.13), stroke: 0.45pt)
  line((3.40, -0.45), (3.60, -0.25), stroke: 0.45pt)
  line((3.40, -0.65), (3.72, -0.33), stroke: 0.45pt)
  line((3.40, -0.85), (3.46, -0.79), stroke: 0.45pt)
  line((3.60, -0.65), (3.82, -0.43), stroke: 0.45pt)
  line((3.40, -1.05), (3.66, -0.79), stroke: 0.45pt)
  line((3.52, -1.13), (3.82, -0.83), stroke: 0.45pt)
  line((3.68, -1.17), (3.82, -1.03), stroke: 0.45pt)

  // Tratteggi semiguscio destro
  line((4.10, -1.15), (4.30, -0.95), stroke: 0.45pt)
  line((3.88, -1.17), (4.26, -0.79), stroke: 0.45pt)
  line((4.81, -0.24), (5.03, -0.02), stroke: 0.45pt)
  line((3.88, -0.97), (4.06, -0.79), stroke: 0.45pt)
  line((4.20, -0.65), (4.30, -0.55), stroke: 0.45pt)
  line((4.61, -0.24), (5.02, 0.17), stroke: 0.45pt)
  line((4.00, -0.65), (4.30, -0.35), stroke: 0.45pt)
  line((4.41, -0.24), (4.89, 0.24), stroke: 0.45pt)
  line((3.88, -0.57), (4.69, 0.24), stroke: 0.45pt)
  line((4.28, 0.03), (4.49, 0.24), stroke: 0.45pt)
  line((4.18, 0.13), (4.30, 0.25), stroke: 0.45pt)
  line((4.10, 0.25), (4.30, 0.45), stroke: 0.45pt)
  line((3.98, 0.33), (4.30, 0.65), stroke: 0.45pt)
  line((3.88, 0.43), (4.10, 0.65), stroke: 0.45pt)
  line((4.24, 0.79), (4.30, 0.85), stroke: 0.45pt)
  line((4.04, 0.79), (4.30, 1.05), stroke: 0.45pt)
  line((3.88, 0.83), (4.18, 1.13), stroke: 0.45pt)
  line((3.88, 1.03), (4.02, 1.17), stroke: 0.45pt)

  // Bulloni nella sezione
  line((3.08, 0.72), (4.58, 0.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((3.10, 0.65), (4.30, 0.79), fill: white, stroke: 0.85pt)
  rect((3.33, 0.56), (3.40, 0.88), fill: white, stroke: 0.8pt)
  rect((3.17, 0.54), (3.33, 0.90), fill: white, stroke: 0.85pt)
  line((3.17, 0.63), (3.33, 0.63), stroke: 0.6pt)
  line((3.17, 0.81), (3.33, 0.81), stroke: 0.6pt)
  rect((4.30, 0.57), (4.48, 0.87), fill: white, stroke: 0.85pt)
  line((4.30, 0.57), (4.48, 0.87), stroke: 0.55pt)

  line((3.12, -0.72), (4.62, -0.72), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  rect((3.40, -0.79), (4.60, -0.65), fill: white, stroke: 0.85pt)
  rect((3.22, -0.87), (3.40, -0.57), fill: white, stroke: 0.85pt)
  line((3.22, -0.87), (3.40, -0.57), stroke: 0.55pt)
  rect((4.30, -0.88), (4.37, -0.56), fill: white, stroke: 0.8pt)
  rect((4.37, -0.90), (4.53, -0.54), fill: white, stroke: 0.85pt)
  line((4.37, -0.81), (4.53, -0.81), stroke: 0.6pt)
  line((4.37, -0.63), (4.53, -0.63), stroke: 0.6pt)

  circle((3.85, 0), radius: 1.18, stroke: 0.9pt)

  // Quote e annotazioni
  line((-2.42, 0.36), (-1.95, 0.36), stroke: 0.5pt)
  line((-2.42, -0.36), (-1.95, -0.36), stroke: 0.5pt)
  line((-2.30, -0.36), (-2.30, 0.36), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((-2.42, 0), text(size: 9pt)[$d$], anchor: "east")

  line((0, 1.38), (0, 1.68), stroke: 0.5pt)
  line((0.95, 1.38), (0.95, 1.68), stroke: 0.5pt)
  line((0, 1.56), (0.95, 1.56), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((0.475, 1.62), text(size: 9pt)[$L$], anchor: "south")

  line((-1.60, -1.18), (-1.60, -1.80), stroke: 0.5pt)
  line((1.60, -1.18), (1.60, -1.80), stroke: 0.5pt)
  line((-1.60, -1.68), (1.60, -1.68), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((0, -1.62), text(size: 9pt)[$L_"max"$], anchor: "south")

  line((1.50, 1.25), (3.85, 1.25), stroke: 0.5pt)
  line((1.50, -1.25), (3.85, -1.25), stroke: 0.5pt)
  line((2.25, -1.25), (2.25, 1.25), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((2.32, 0.15), text(size: 9pt)[$d_1$], anchor: "west")

  line((3.40, 1.09), (3.40, 1.68), stroke: 0.5pt)
  line((4.30, 1.09), (4.30, 1.68), stroke: 0.5pt)
  line((3.40, 1.56), (4.30, 1.56), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((3.85, 1.63), text(size: 9pt)[$l$], anchor: "south")

  line((3.82, -1.18), (3.82, -1.55), stroke: 0.5pt)
  line((3.88, -1.18), (3.88, -1.55), stroke: 0.5pt)
  line((3.60, -1.48), (3.82, -1.48), mark: (end: ">", fill: black), stroke: 0.55pt)
  line((4.10, -1.48), (3.88, -1.48), mark: (end: ">", fill: black), stroke: 0.55pt)
  content((3.85, -1.54), text(size: 9pt)[$s$], anchor: "north")
  line((5.22, -1.55), (3.85, -1.10), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((5.30, -1.55), text(size: 9.2pt)[Gioco per il serraggio], anchor: "west")

  line((4.60, -0.65), (5.23, -0.65), stroke: 0.5pt)
  line((4.60, -0.79), (5.23, -0.79), stroke: 0.5pt)
  line((5.18, -0.49), (5.18, -0.65), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((5.18, -0.95), (5.18, -0.79), mark: (end: ">", fill: black), stroke: 0.5pt)
  content((5.27, -0.72), text(size: 9pt)[$d$], anchor: "west")

  line((5.22, 1.40), (4.70, 0.92), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((5.30, 1.45), text(size: 9.5pt)[Involucro di protezione], anchor: "west")
  content((5.30, 1.15), text(size: 9.5pt)[in lamierino di acciaio], anchor: "west")

  line((5.22, -0.15), (4.28, -0.03), mark: (end: ">", fill: black), stroke: 0.65pt)
  content((5.30, -0.10), text(size: 9.5pt)[Linguetta], anchor: "west")
  content((5.30, -0.40), text(size: 8.8pt)[(usata in caso di coppie elevate)], anchor: "west")
})
