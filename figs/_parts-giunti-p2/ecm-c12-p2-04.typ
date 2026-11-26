// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // === 1. FLANGIA SINISTRA (parte superiore visibile a sinistra del cilindro) ===
  line((-2.65, 0.26), (-1.88, 0.26), (0.92, 2.36), (0.15, 2.36), close: true, fill: luma(242), stroke: (paint: black, thickness: 0.9pt, join: "round"))

  // === 2. FLANGIA DESTRA (faccia superiore e faccia laterale destra) ===
  line((1.88, 0.26), (2.65, 0.26), (5.45, 2.36), (4.68, 2.36), close: true, fill: luma(242), stroke: (paint: black, thickness: 0.9pt, join: "round"))
  line((2.65, 0.00), (5.45, 2.10), (5.45, 2.36), (2.65, 0.26), close: true, fill: luma(222), stroke: (paint: black, thickness: 0.95pt, join: "round"))

  // === 3. SUPERFICIE CILINDRICA ESTERNA ===
  merge-path(close: true, fill: luma(247), stroke: none, {
    arc((0, 0), start: 7.87deg, stop: 126.87deg, radius: 1.90, anchor: "origin")
    line((-1.14, 1.52), (1.66, 3.62))
    arc((2.80, 2.10), start: 126.87deg, stop: 7.87deg, radius: 1.90, anchor: "origin")
    line((4.68, 2.36), (1.88, 0.26))
  })
  line((-1.14, 1.52), (1.66, 3.62), stroke: (paint: black, thickness: 1.05pt, cap: "round"))
  arc((2.80, 2.10), start: 7.87deg, stop: 126.87deg, radius: 1.90, anchor: "origin", stroke: (paint: black, thickness: 1.05pt, cap: "round"))
  line((1.88, 0.26), (4.68, 2.36), stroke: 0.8pt)

  // Generatrice superiore centrale (phi = 0) lungo il semiguscio
  line((0.00, 1.90), (2.80, 4.00), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(120)))

  // === 4. SPIGOLI INTERNI NASCOSTI (foro semicilindrico posteriore) ===
  arc((2.80, 2.10), start: 0deg, stop: 180deg, radius: 1.45, anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(115)))
  line((-1.45, 0.00), (1.35, 2.10), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(115)))
  line((1.45, 0.00), (4.25, 2.10), stroke: (dash: "dashed", thickness: 0.65pt, paint: luma(115)))

  // === 5. SEZIONE FRONTALE DEL SEMIGUSCIO ===
  merge-path(close: true, fill: luma(228), stroke: (paint: black, thickness: 1.05pt, join: "round"), {
    line((1.45, 0.00), (2.65, 0.00), (2.65, 0.26), (1.88, 0.26))
    arc((0, 0), start: 7.87deg, stop: 172.13deg, radius: 1.90, anchor: "origin")
    line((-1.88, 0.26), (-2.65, 0.26), (-2.65, 0.00), (-1.45, 0.00))
    arc((0, 0), start: 180deg, stop: 0deg, radius: 1.45, anchor: "origin")
  })

  // === 6. DIAGRAMMA DI PRESSIONE p(phi) = p_0 cos^2(phi) SULLA PARETE INTERNA ===
  line(
    (-1.45, 0.00), (-1.44, 0.13), (-1.41, 0.25), (-1.36, 0.36), (-1.30, 0.47), (-1.22, 0.57),
    (-1.13, 0.65), (-1.03, 0.72), (-0.92, 0.77), (-0.81, 0.81), (-0.71, 0.84), (-0.60, 0.86),
    (-0.50, 0.87), (-0.40, 0.87), (-0.31, 0.86), (-0.23, 0.86), (-0.15, 0.85), (-0.07, 0.85),
    (0.00, 0.85), (0.07, 0.85), (0.15, 0.85), (0.23, 0.86), (0.31, 0.86), (0.40, 0.87),
    (0.50, 0.87), (0.60, 0.86), (0.71, 0.84), (0.81, 0.81), (0.92, 0.77), (1.03, 0.72),
    (1.13, 0.65), (1.22, 0.57), (1.30, 0.47), (1.36, 0.36), (1.41, 0.25), (1.44, 0.13), (1.45, 0.00),
    (1.44, 0.13), (1.43, 0.25), (1.40, 0.38), (1.36, 0.50), (1.31, 0.61), (1.26, 0.72),
    (1.19, 0.83), (1.11, 0.93), (1.03, 1.03), (0.93, 1.11), (0.83, 1.19), (0.73, 1.26),
    (0.61, 1.31), (0.50, 1.36), (0.38, 1.40), (0.25, 1.43), (0.13, 1.44), (0.00, 1.45),
    (-0.13, 1.44), (-0.25, 1.43), (-0.38, 1.40), (-0.50, 1.36), (-0.61, 1.31), (-0.72, 1.26),
    (-0.83, 1.19), (-0.93, 1.11), (-1.03, 1.03), (-1.11, 0.93), (-1.19, 0.83), (-1.26, 0.72),
    (-1.31, 0.61), (-1.36, 0.50), (-1.40, 0.38), (-1.43, 0.25), (-1.44, 0.13),
    close: true, fill: rgb("#2563eb").transparentize(86%), stroke: none
  )
  line(
    (-1.45, 0.00), (-1.44, 0.13), (-1.41, 0.25), (-1.36, 0.36), (-1.30, 0.47), (-1.22, 0.57),
    (-1.13, 0.65), (-1.03, 0.72), (-0.92, 0.77), (-0.81, 0.81), (-0.71, 0.84), (-0.60, 0.86),
    (-0.50, 0.87), (-0.40, 0.87), (-0.31, 0.86), (-0.23, 0.86), (-0.15, 0.85), (-0.07, 0.85),
    (0.00, 0.85), (0.07, 0.85), (0.15, 0.85), (0.23, 0.86), (0.31, 0.86), (0.40, 0.87),
    (0.50, 0.87), (0.60, 0.86), (0.71, 0.84), (0.81, 0.81), (0.92, 0.77), (1.03, 0.72),
    (1.13, 0.65), (1.22, 0.57), (1.30, 0.47), (1.36, 0.36), (1.41, 0.25), (1.44, 0.13), (1.45, 0.00),
    stroke: (paint: rgb("#1d4ed8"), thickness: 0.9pt)
  )

  // Frecce radiali di pressione p(phi)
  line((-1.01, 0.73), (-1.17, 0.85), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.52), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))
  line((-0.62, 0.86), (-0.85, 1.17), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.55), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))
  line((-0.28, 0.86), (-0.45, 1.38), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.55), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))
  line((0.00, 0.85), (0.00, 1.45), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.58), stroke: (paint: rgb("#1d4ed8"), thickness: 0.85pt))
  line((0.28, 0.86), (0.45, 1.38), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.55), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))
  line((0.62, 0.86), (0.85, 1.17), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.55), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))
  line((1.01, 0.73), (1.17, 0.85), mark: (end: ">", fill: rgb("#1d4ed8"), scale: 0.52), stroke: (paint: rgb("#1d4ed8"), thickness: 0.75pt))

  // === 7. ASSI DI RIFERIMENTO, RAGGIO r E ANGOLO phi ===
  line((-0.65, -0.49), (3.45, 2.59), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(80)))
  line((0.00, -0.30), (0.00, 3.15), stroke: (dash: "dash-dotted", thickness: 0.55pt, paint: luma(80)))
  line((0.00, 0.00), (-1.34, 2.63), stroke: 0.6pt)

  // Angolo phi (in spazio libero tra le frecce di pressione e sopra il guscio)
  arc((0, 0), start: 90deg, stop: 117deg, radius: 2.70, anchor: "origin", mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  content((-0.66, 2.75), text(size: 8.5pt)[$phi$], anchor: "south")

  // Raggio r (ben distinto dall'asse longitudinale)
  line((0.00, 0.00), (1.38, 0.45), mark: (end: ">", fill: black, scale: 0.65), stroke: 0.7pt)
  content((0.72, 0.24), text(size: 8pt)[$r$], anchor: "north")

  // Etichetta p_0
  line((-0.02, 1.12), (-0.42, 0.58), stroke: (paint: rgb("#1d4ed8"), thickness: 0.55pt))
  content((-0.45, 0.54), text(size: 8pt, fill: rgb("#1d4ed8"))[$p_0$], anchor: "north-east")

  // === 8. FORZA RISULTANTE N (rossa) ===
  circle((1.40, 2.95), radius: 0.045, fill: red, stroke: none)
  line((1.40, 4.02), (1.40, 3.00), mark: (end: ">", fill: red, scale: 0.8), stroke: (paint: red, thickness: 1.7pt))
  content((1.55, 3.65), text(size: 10pt, fill: red)[$bold(N)$], anchor: "west")

  // === 9. FORI BULLONI E TIRO T_b SULLA FLANGIA DESTRA ===
  line((2.27, 0.26), (5.07, 2.36), stroke: (dash: "dash-dotted", thickness: 0.5pt, paint: luma(120)))
  circle((2.77, 0.64), radius: (0.11, 0.055), fill: white, stroke: 0.7pt)
  circle((3.67, 1.31), radius: (0.11, 0.055), fill: white, stroke: 0.7pt)
  circle((4.57, 1.98), radius: (0.11, 0.055), fill: white, stroke: 0.7pt)

  line((2.77, 1.36), (2.77, 0.68), mark: (end: ">", fill: black, scale: 0.65), stroke: 1.05pt)
  content((2.68, 1.12), text(size: 8pt)[$T_b$], anchor: "east")
  line((3.67, 2.03), (3.67, 1.35), mark: (end: ">", fill: black, scale: 0.65), stroke: 1.05pt)
  content((3.58, 1.79), text(size: 8pt)[$T_b$], anchor: "east")
  line((4.57, 2.70), (4.57, 2.02), mark: (end: ">", fill: black, scale: 0.65), stroke: 1.05pt)
  content((4.48, 2.48), text(size: 8pt)[$T_b$], anchor: "east")

  // === 10. QUOTE l, l E L ===
  line((2.71, 0.00), (4.55, 0.00), stroke: (paint: luma(80), thickness: 0.55pt))
  line((4.11, 1.05), (5.25, 1.05), stroke: (paint: luma(80), thickness: 0.55pt))
  line((5.51, 2.10), (7.35, 2.10), stroke: (paint: luma(80), thickness: 0.55pt))

  line((3.50, 0.00), (4.90, 1.05), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  line((4.90, 1.05), (6.30, 2.10), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  content((4.28, 0.45), text(size: 8.5pt)[$l$], anchor: "north-west")
  content((5.68, 1.50), text(size: 8.5pt)[$l$], anchor: "north-west")

  line((4.30, 0.00), (7.10, 2.10), mark: (start: ">", end: ">", fill: black, scale: 0.55), stroke: 0.6pt)
  content((5.78, 0.96), text(size: 8.5pt)[$L$], anchor: "north-west")
})
