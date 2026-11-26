// Schema della perturbazione delle linee di flusso magnetico (magnetoscopia)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Corpo del pezzo ferromagnetico
  rect((0.4, 0.5), (7.6, 2.9), fill: luma(242), stroke: 0.95pt)

  // --- Difetti ---
  // 1. Cricca superficiale (sinistra)
  rect((2.15, 2.12), (2.29, 2.90), fill: black, stroke: none)
  // 2. Cricca sub-superficiale trasversale (centro)
  rect((4.13, 1.85), (4.27, 2.58), fill: black, stroke: none)
  // 3. Difetto parallelo al flusso (destra, scarsa perturbazione)
  rect((5.70, 2.52), (6.45, 2.65), fill: white, stroke: 0.75pt)

  // --- Flusso di dispersione esterno (cricca superficiale) ---
  bezier((1.55, 2.90), (2.89, 2.90), (1.72, 3.50), (2.72, 3.50), stroke: (paint: blue.darken(15%), thickness: 0.75pt, dash: "dashed"))
  bezier((1.78, 2.90), (2.66, 2.90), (1.92, 3.30), (2.52, 3.30), stroke: (paint: blue.darken(15%), thickness: 0.75pt))
  bezier((1.98, 2.90), (2.46, 2.90), (2.06, 3.12), (2.38, 3.12), stroke: (paint: blue.darken(15%), thickness: 0.75pt))

  // Flusso di dispersione debole (cricca sub-superficiale)
  bezier((3.72, 2.90), (4.68, 2.90), (3.92, 3.18), (4.48, 3.18), stroke: (paint: blue.darken(15%), thickness: 0.65pt, dash: "dashed"))

  // Particelle ferromagnetiche accumulate sulla cricca superficiale
  for (px, py) in ((2.08, 2.95), (2.15, 3.00), (2.22, 3.04), (2.29, 3.00), (2.36, 2.95), (2.19, 2.95), (2.26, 2.96)) {
    circle((px, py), radius: 0.032, fill: red.darken(10%), stroke: none)
  }

  // --- Linee di flusso magnetico interne (da destra a sinistra o sx->dx) ---
  // Linea 1 (superiore, esce in corrispondenza della cricca superficiale)
  line((0.55, 2.68), (1.55, 2.68), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((1.55, 2.68), (1.78, 2.90), (1.68, 2.68), (1.74, 2.79), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((2.66, 2.90), (2.92, 2.68), (2.70, 2.79), (2.78, 2.68), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((2.92, 2.68), (3.72, 2.90), (3.30, 2.68), (3.55, 2.78), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((4.68, 2.90), (5.35, 2.72), (4.92, 2.78), (5.12, 2.72), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((5.35, 2.72), (6.75, 2.72), (5.75, 2.79), (6.40, 2.79), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  line((6.75, 2.72), (7.45, 2.72), mark: (end: ">", scale: 0.5, fill: blue.darken(20%)), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Linea 2 (devia sotto la cricca superficiale e sotto la sub-superficiale)
  bezier((0.55, 2.25), (2.22, 1.94), (1.45, 2.25), (1.80, 1.94), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((2.22, 1.94), (3.20, 2.22), (2.64, 1.94), (2.90, 2.22), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((3.20, 2.22), (4.20, 1.67), (3.60, 2.22), (3.85, 1.67), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((4.20, 1.67), (5.20, 2.25), (4.55, 1.67), (4.85, 2.25), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  line((5.20, 2.25), (7.45, 2.25), mark: (end: ">", scale: 0.5, fill: blue.darken(20%)), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Linea 3 (media, lieve deviazione)
  bezier((0.55, 1.72), (2.22, 1.54), (1.40, 1.72), (1.80, 1.54), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((2.22, 1.54), (3.20, 1.66), (2.64, 1.54), (2.90, 1.66), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((3.20, 1.66), (4.20, 1.38), (3.60, 1.66), (3.85, 1.38), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((4.20, 1.38), (5.20, 1.72), (4.55, 1.38), (4.85, 1.72), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  line((5.20, 1.72), (7.45, 1.72), mark: (end: ">", scale: 0.5, fill: blue.darken(20%)), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Linea 4 (bassa, quasi indisturbata)
  bezier((0.55, 1.22), (4.20, 1.12), (2.10, 1.20), (3.40, 1.12), stroke: (paint: blue.darken(20%), thickness: 0.7pt))
  bezier((4.20, 1.12), (7.45, 1.22), (5.00, 1.12), (6.00, 1.22), mark: (end: ">", scale: 0.5, fill: blue.darken(20%)), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Linea 5 (fondo, rettilinea)
  line((0.55, 0.80), (7.45, 0.80), mark: (end: ">", scale: 0.5, fill: blue.darken(20%)), stroke: (paint: blue.darken(20%), thickness: 0.7pt))

  // Etichette
  content((2.22, 3.72), text(size: 6.8pt)[*Flusso disperso* (cricca superficiale)], anchor: "center")
  content((4.20, 3.36), text(size: 6.5pt)[Sub-superficiale], anchor: "center")
  content((6.10, 3.12), text(size: 6.3pt)[Difetto parallelo], anchor: "center")
  content((0.95, 0.24), text(size: 6.8pt, fill: blue.darken(20%))[*Linee di flusso magnetico* $arrow(B)$], anchor: "west")
  content((7.45, 0.24), text(size: 6.5pt, fill: red.darken(15%))[● Particelle ferromagnetiche], anchor: "east")
})
