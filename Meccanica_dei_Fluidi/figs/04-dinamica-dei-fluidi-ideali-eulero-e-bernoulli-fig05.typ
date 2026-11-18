// Figura estratta da capitoli/04-dinamica-dei-fluidi-ideali-eulero-e-bernoulli.typ
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1.4cm, {
  import draw: *

  // --- VISTA 3D (pannello sinistro) ---
  line((1.95, -1.26), (1.95, -1.45), stroke: (paint: c-aux, thickness: 0.7pt, dash: "dash-dotted"))
  line((1.95, 2.12), (1.95, 2.38), stroke: (paint: c-aux, thickness: 0.7pt, dash: "dash-dotted"))

  // Disco di carta 3D
  circle((1.95, -0.68), radius: (1.65, 0.53), fill: c-aux.transparentize(78%), stroke: none)
  rect((0.30, -0.68), (3.60, -0.60), fill: c-aux.transparentize(78%), stroke: none)
  circle((1.95, -0.60), radius: (1.65, 0.53), fill: c-aux.transparentize(90%), stroke: none)
  arc((1.95, -0.68), start: 180deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)
  line((0.30, -0.68), (0.30, -0.60), stroke: 0.9pt + black)
  line((3.60, -0.68), (3.60, -0.60), stroke: 0.9pt + black)
  arc((1.95, -0.60), start: 0deg, stop: 19.9deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)
  arc((1.95, -0.60), start: 160.1deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.9pt + black)

  // Frecce radiali in uscita in 3D
  line((3.35, -0.42), (3.90, -0.42), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((0.55, -0.42), (0.00, -0.42), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((1.95, -0.80), (1.95, -1.20), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((2.90, -0.73), (3.33, -0.86), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((1.00, -0.73), (0.57, -0.86), mark: (end: ">"), stroke: 0.95pt + c-vel)

  // Flangia della bobina 3D
  circle((1.95, -0.24), radius: (1.65, 0.53), fill: c-aux.transparentize(83%), stroke: none)
  rect((0.30, -0.24), (3.60, -0.10), fill: c-aux.transparentize(83%), stroke: none)
  circle((1.95, -0.10), radius: (1.65, 0.53), fill: c-aux.transparentize(91%), stroke: none)
  arc((1.95, -0.24), start: 180deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)
  line((0.30, -0.24), (0.30, -0.10), stroke: 0.95pt + black)
  line((3.60, -0.24), (3.60, -0.10), stroke: 0.95pt + black)
  arc((1.95, -0.10), start: 0deg, stop: 70.2deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)
  arc((1.95, -0.10), start: 109.8deg, stop: 360deg, radius: (1.65, 0.53), anchor: "origin", stroke: 0.95pt + black)

  // Condotto verticale 3D
  circle((1.95, -0.10), radius: (0.56, 0.18), fill: c-aux.transparentize(86%), stroke: none)
  rect((1.39, -0.10), (2.51, 1.55), fill: c-aux.transparentize(86%), stroke: none)
  circle((1.95, 1.55), radius: (0.56, 0.18), fill: c-aux.transparentize(91%), stroke: none)
  circle((1.95, 1.55), radius: (0.42, 0.135), fill: c-aux.transparentize(75%), stroke: none)
  arc((1.95, -0.10), start: 180deg, stop: 360deg, radius: (0.56, 0.18), anchor: "origin", stroke: 0.95pt + black)
  line((1.39, -0.10), (1.39, 1.55), stroke: 0.95pt + black)
  line((2.51, -0.10), (2.51, 1.55), stroke: 0.95pt + black)
  circle((1.95, 1.55), radius: (0.56, 0.18), stroke: 0.95pt + black)
  circle((1.95, 1.55), radius: (0.42, 0.135), stroke: 0.8pt + black)

  // Frecce del flusso in ingresso 3D
  line((1.75, 2.05), (1.75, 1.57), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((1.95, 2.05), (1.95, 1.57), mark: (end: ">"), stroke: 0.95pt + c-vel)
  line((2.15, 2.05), (2.15, 1.57), mark: (end: ">"), stroke: 0.95pt + c-vel)


  // --- SEZIONE 2D (pannello destro) ---
  line((7.35, -1.30), (7.35, 2.38), stroke: (paint: c-aux, thickness: 0.7pt, dash: "dash-dotted"))

  // Riempimento pareti a L
  line(
    (6.81, 1.55), (6.81, -0.24), (5.55, -0.24), (5.55, -0.10), (6.67, -0.10), (6.67, 1.55),
    close: true, fill: c-aux.transparentize(92%), stroke: none
  )
  line(
    (7.89, 1.55), (7.89, -0.24), (9.15, -0.24), (9.15, -0.10), (8.03, -0.10), (8.03, 1.55),
    close: true, fill: c-aux.transparentize(92%), stroke: none
  )

  // Tratteggio parete sinistra
  line((6.67, -0.10), (6.81, 0.04), stroke: 0.45pt + c-aux)
  line((6.67, 0.06), (6.81, 0.20), stroke: 0.45pt + c-aux)
  line((6.67, 0.22), (6.81, 0.36), stroke: 0.45pt + c-aux)
  line((6.67, 0.38), (6.81, 0.52), stroke: 0.45pt + c-aux)
  line((6.67, 0.54), (6.81, 0.68), stroke: 0.45pt + c-aux)
  line((6.67, 0.70), (6.81, 0.84), stroke: 0.45pt + c-aux)
  line((6.67, 0.86), (6.81, 1.00), stroke: 0.45pt + c-aux)
  line((6.67, 1.02), (6.81, 1.16), stroke: 0.45pt + c-aux)
  line((6.67, 1.18), (6.81, 1.32), stroke: 0.45pt + c-aux)
  line((6.67, 1.34), (6.81, 1.48), stroke: 0.45pt + c-aux)
  line((5.60, -0.24), (5.74, -0.10), stroke: 0.45pt + c-aux)
  line((5.76, -0.24), (5.90, -0.10), stroke: 0.45pt + c-aux)
  line((5.92, -0.24), (6.06, -0.10), stroke: 0.45pt + c-aux)
  line((6.08, -0.24), (6.22, -0.10), stroke: 0.45pt + c-aux)
  line((6.24, -0.24), (6.38, -0.10), stroke: 0.45pt + c-aux)
  line((6.40, -0.24), (6.54, -0.10), stroke: 0.45pt + c-aux)
  line((6.56, -0.24), (6.70, -0.10), stroke: 0.45pt + c-aux)
  line((6.67, -0.24), (6.81, -0.10), stroke: 0.45pt + c-aux)

  // Tratteggio parete destra
  line((7.89, -0.10), (8.03, 0.04), stroke: 0.45pt + c-aux)
  line((7.89, 0.06), (8.03, 0.20), stroke: 0.45pt + c-aux)
  line((7.89, 0.22), (8.03, 0.36), stroke: 0.45pt + c-aux)
  line((7.89, 0.38), (8.03, 0.52), stroke: 0.45pt + c-aux)
  line((7.89, 0.54), (8.03, 0.68), stroke: 0.45pt + c-aux)
  line((7.89, 0.70), (8.03, 0.84), stroke: 0.45pt + c-aux)
  line((7.89, 0.86), (8.03, 1.00), stroke: 0.45pt + c-aux)
  line((7.89, 1.02), (8.03, 1.16), stroke: 0.45pt + c-aux)
  line((7.89, 1.18), (8.03, 1.32), stroke: 0.45pt + c-aux)
  line((7.89, 1.34), (8.03, 1.48), stroke: 0.45pt + c-aux)
  line((7.89, -0.24), (8.03, -0.10), stroke: 0.45pt + c-aux)
  line((8.05, -0.24), (8.19, -0.10), stroke: 0.45pt + c-aux)
  line((8.21, -0.24), (8.35, -0.10), stroke: 0.45pt + c-aux)
  line((8.37, -0.24), (8.51, -0.10), stroke: 0.45pt + c-aux)
  line((8.53, -0.24), (8.67, -0.10), stroke: 0.45pt + c-aux)
  line((8.69, -0.24), (8.83, -0.10), stroke: 0.45pt + c-aux)
  line((8.85, -0.24), (8.99, -0.10), stroke: 0.45pt + c-aux)
  line((8.99, -0.24), (9.13, -0.10), stroke: 0.45pt + c-aux)

  // Contorni pareti a L e disco di carta 2D
  line((6.67, 1.55), (6.67, -0.10), (5.55, -0.10), (5.55, -0.24), (6.81, -0.24), (6.81, 1.55), stroke: 1pt + black)
  line((7.89, 1.55), (7.89, -0.24), (9.15, -0.24), (9.15, -0.10), (8.03, -0.10), (8.03, 1.55), stroke: 1pt + black)
  rect((5.55, -0.68), (9.15, -0.60), fill: c-aux.transparentize(83%), stroke: 1pt + black)

  // Frecce del flusso in ingresso 2D
  line((6.95, 1.48), (6.95, 1.15), mark: (end: ">"), stroke: 0.9pt + c-vel)
  line((7.15, 1.48), (7.15, 1.15), mark: (end: ">"), stroke: 0.9pt + c-vel)
  line((7.35, 1.48), (7.35, 1.15), mark: (end: ">"), stroke: 0.9pt + c-vel)
  line((7.55, 1.48), (7.55, 1.15), mark: (end: ">"), stroke: 0.9pt + c-vel)
  line((7.75, 1.48), (7.75, 1.15), mark: (end: ">"), stroke: 0.9pt + c-vel)

  // Linee di corrente 2D
  line((6.95, 1.05), (6.95, -0.14), stroke: 0.95pt + c-vel)
  bezier((6.95, -0.14), (6.81, -0.34), (6.95, -0.25), (6.89, -0.34), stroke: 0.95pt + c-vel)
  line((6.81, -0.34), (5.08, -0.34), mark: (end: ">"), stroke: 0.95pt + c-vel)

  line((7.11, 1.05), (7.11, -0.15), stroke: 0.95pt + c-vel)
  bezier((7.11, -0.15), (6.81, -0.49), (7.11, -0.34), (6.98, -0.49), stroke: 0.95pt + c-vel)
  line((6.81, -0.49), (5.08, -0.49), mark: (end: ">"), stroke: 0.95pt + c-vel)

  line((7.75, 1.05), (7.75, -0.14), stroke: 0.95pt + c-vel)
  bezier((7.75, -0.14), (7.89, -0.34), (7.75, -0.25), (7.81, -0.34), stroke: 0.95pt + c-vel)
  line((7.89, -0.34), (9.65, -0.34), mark: (end: ">"), stroke: 0.95pt + c-vel)

  line((7.59, 1.05), (7.59, -0.15), stroke: 0.95pt + c-vel)
  bezier((7.59, -0.15), (7.89, -0.49), (7.59, -0.34), (7.72, -0.49), stroke: 0.95pt + c-vel)
  line((7.89, -0.49), (9.65, -0.49), mark: (end: ">"), stroke: 0.95pt + c-vel)

  // Linee tratteggiate di efflusso
  line((5.55, -0.24), (5.08, -0.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: c-aux))
  line((5.55, -0.60), (5.08, -0.74), stroke: (dash: "dashed", thickness: 0.6pt, paint: c-aux))
  line((9.15, -0.24), (9.65, -0.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: c-aux))
  line((9.15, -0.60), (9.65, -0.74), stroke: (dash: "dashed", thickness: 0.6pt, paint: c-aux))

  // Quote r1, r2, h
  line((7.89, 1.55), (7.89, 1.92), stroke: 0.6pt + black)
  line((7.35, 1.82), (7.89, 1.82), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((7.62, 1.92), text(size: 7.5pt)[$r_1$], anchor: "south")

  line((9.15, -0.10), (9.15, 2.38), stroke: 0.6pt + black)
  line((7.35, 2.26), (9.15, 2.26), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((8.25, 2.34), text(size: 7.5pt)[$r_2$], anchor: "south")

  line((5.55, -0.24), (4.82, -0.24), stroke: 0.6pt + black)
  line((5.55, -0.60), (4.82, -0.60), stroke: 0.6pt + black)
  line((4.92, -0.60), (4.92, -0.24), mark: (start: ">", end: ">"), stroke: 0.7pt + black)
  content((4.80, -0.42), text(size: 7.5pt)[$h$], anchor: "east")

  // Etichette A, B, C, D
  content((7.47, 0.55), text(size: 7.5pt)[$A$])
  content((6.72, -1.22), text(size: 7.5pt)[$B$])
  line((6.78, -1.10), (7.08, -0.44), mark: (end: ">"), stroke: 0.6pt + c-aux)
  content((6.05, -1.22), text(size: 7.5pt)[$C$])
  line((6.12, -1.10), (6.35, -0.49), mark: (end: ">"), stroke: 0.6pt + c-aux)
  content((9.75, -1.22), text(size: 7.5pt)[$D$])
  line((9.68, -1.10), (9.38, -0.49), mark: (end: ">"), stroke: 0.6pt + c-aux)


})
