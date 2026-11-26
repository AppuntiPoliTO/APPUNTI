// Figura estratta da fatica.typ (riga 4067) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.75cm, {
  // BBox: x in [0.0, 10.6] (dx=10.6), y in [0.1, 5.6], length=0.75cm -> larghezza = 7.95 cm <= 8.2 cm
  import draw: *

  // --- Pannello sinistro: prova di creep (asse provetta x = 2.45) ---
  line((1.45, 5.2), (3.45, 5.2), stroke: 1.1pt)
  for hx in (1.55, 1.80, 2.05, 2.30, 2.55, 2.80, 3.05, 3.30) {
    line((hx, 5.2), (hx + 0.2, 5.45), stroke: 0.65pt)
  }

  // Asse di simmetria e afferraggio superiore
  line((2.45, 1.8), (2.45, 5.2), stroke: (dash: "dashed", thickness: 0.5pt, paint: black.transparentize(55%)))
  rect((2.25, 4.6), (2.65, 5.2), fill: black.transparentize(86%), stroke: 0.9pt)

  // Provetta a osso di cane
  line(
    (2.20, 4.6), (2.20, 4.45), (2.32, 4.3), (2.32, 2.7), (2.20, 2.55), (2.20, 2.4),
    (2.70, 2.4), (2.70, 2.55), (2.58, 2.7), (2.58, 4.3), (2.70, 4.45), (2.70, 4.6),
    close: true, fill: black.transparentize(72%), stroke: 1pt,
  )

  // Afferraggio inferiore e peso costante
  rect((2.25, 1.8), (2.65, 2.4), fill: black.transparentize(86%), stroke: 0.9pt)
  rect((1.80, 0.75), (3.10, 1.8), fill: black.transparentize(72%), stroke: 1pt)
  content((2.45, 1.27), text(size: 7.5pt, weight: "bold")[Peso], anchor: "center")
  line((2.45, 0.75), (2.45, 0.15), stroke: 1.1pt, mark: (end: ">"))
  content((2.63, 0.38), text(size: 7.5pt)[$F = "cost"$], anchor: "west")

  // Camera e bobina termica
  rect(
    (1.68, 2.75), (3.22, 4.25),
    fill: red.transparentize(92%),
    stroke: (paint: red.transparentize(25%), dash: "dashed", thickness: 0.7pt),
  )
  for cy in (2.98, 3.33, 3.68, 4.03) {
    circle((1.90, cy), radius: 0.11, fill: orange.transparentize(45%), stroke: (paint: orange, thickness: 0.7pt))
    circle((3.00, cy), radius: 0.11, fill: orange.transparentize(45%), stroke: (paint: orange, thickness: 0.7pt))
  }

  // Richiami e annotazioni pannello sinistro senza collisioni
  content((1.22, 3.5), align(right, text(size: 7.2pt)[Bobina\ termica]), anchor: "east")
  line((1.30, 3.5), (1.76, 3.66), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
  content((3.35, 4.75), text(size: 7.2pt)[Provetta], anchor: "west")
  line((3.30, 4.72), (2.73, 4.52), stroke: 0.6pt, mark: (end: ">", scale: 0.6))
  content((3.35, 3.5), text(size: 7.2pt, fill: red.transparentize(10%))[$T = "cost"$], anchor: "west")

  // --- Pannello destro: curva epsilon(t) ---
  line((4.9, 2.0), (10.2, 2.0), stroke: 0.9pt, mark: (end: ">"))
  line((4.9, 2.0), (4.9, 5.5), stroke: 0.9pt, mark: (end: ">"))
  content((4.68, 5.42), text(size: 8pt)[$epsilon$], anchor: "east")
  content((10.28, 2.0), text(size: 8pt)[$t$], anchor: "west")
  content((4.78, 2.45), text(size: 7.5pt)[$epsilon_0$], anchor: "east")

  // Curva di creep (elastico, primario, secondario, terziario)
  line((4.9, 2.0), (4.95, 2.45), stroke: (paint: blue, thickness: 1.1pt))
  bezier((4.95, 2.45), (5.88, 3.05), (5.1, 2.85), (5.48, 2.95), stroke: (paint: blue, thickness: 1.1pt))
  line((5.88, 3.05), (7.85, 3.55), stroke: (paint: blue, thickness: 1.1pt))
  bezier((7.85, 3.55), (9.35, 5.15), (8.45, 3.70), (9.15, 4.35), stroke: (paint: blue, thickness: 1.1pt))

  // Crocetta di rottura
  line((9.25, 5.05), (9.45, 5.25), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  line((9.25, 5.25), (9.45, 5.05), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  content((9.10, 5.15), align(right, text(size: 7.2pt, fill: red.transparentize(10%))[Instabilità\ e rottura]), anchor: "east")

  // Guide verticali stadi
  line((5.88, 2.0), (5.88, 3.05), stroke: (dash: "dotted", thickness: 0.6pt))
  line((7.85, 2.0), (7.85, 3.55), stroke: (dash: "dotted", thickness: 0.6pt))
  line((9.35, 2.0), (9.35, 5.15), stroke: (dash: "dotted", thickness: 0.6pt))
  content((5.40, 2.25), text(size: 7pt)[I], anchor: "center")
  content((6.86, 2.25), text(size: 7pt)[II], anchor: "center")
  content((8.60, 2.25), text(size: 7pt)[III], anchor: "center")

  // Barra soglie termiche T / T_f
  rect((4.9, 0.75), (6.45, 1.05), fill: black.transparentize(90%), stroke: 0.7pt)
  rect((6.45, 0.75), (8.48, 1.05), fill: orange.transparentize(70%), stroke: 0.7pt)
  rect((8.48, 0.75), (10.2, 1.05), fill: red.transparentize(65%), stroke: 0.7pt)
  content((6.45, 1.15), text(size: 7pt)[0.3–0.4 $T_f$], anchor: "south")
  content((8.48, 1.15), text(size: 7pt)[0.6–0.7 $T_f$], anchor: "south")
  content((10.2, 1.15), text(size: 7pt)[$T_f$], anchor: "south")
  content((4.9, 0.63), text(size: 7pt)[$0$], anchor: "north")
  content((7.46, 0.63), text(size: 7pt)[Attivazione], anchor: "north")
  content((9.34, 0.63), align(center, text(size: 7pt)[Creep\ dominante]), anchor: "north")
})
