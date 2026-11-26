// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Ribaltamento della sezione di gola per la verifica a fatica (Slide 27)
#canvas(length: 1cm, {
  import draw: *

  // =========================================================================
  // SINISTRA: Ribaltamento sulla FACCIA ORIZZONTALE
  // =========================================================================
  // Piano orizzontale ribaltato
  line((0.60, 0.90), (1.84, 0.90), (4.64, 2.15), (3.40, 2.15), close: true, fill: blue.transparentize(85%), stroke: (paint: blue.darken(25%), thickness: 0.85pt, dash: "dashed"))
  line((1.00, 1.0786), (2.24, 1.0786), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((1.40, 1.2571), (2.64, 1.2571), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((1.80, 1.4357), (3.04, 1.4357), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((2.20, 1.6143), (3.44, 1.6143), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((2.60, 1.7929), (3.84, 1.7929), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((3.00, 1.9714), (4.24, 1.9714), stroke: (paint: blue.darken(20%), thickness: 0.4pt))

  // Spigoli nascosti del prisma
  line((0.60, 0.90), (3.40, 2.15), stroke: (dash: "dashed", thickness: 0.55pt))
  line((3.40, 2.15), (5.15, 2.15), stroke: (dash: "dashed", thickness: 0.55pt))
  line((3.40, 2.15), (3.40, 3.90), stroke: (dash: "dashed", thickness: 0.55pt))

  // Sezione di gola originale (obliqua, ben visibile e tratteggiata)
  line((0.60, 0.90), (1.475, 1.775), (4.275, 3.025), (3.40, 2.15), close: true, fill: luma(140).transparentize(82%), stroke: (paint: luma(50), thickness: 0.85pt, dash: "dashed"))

  // Spigoli visibili del prisma
  line((0.60, 0.90), (2.35, 0.90), (0.60, 2.65), close: true, stroke: 0.85pt)
  line((2.35, 0.90), (5.15, 2.15), (3.40, 3.90), (0.60, 2.65), stroke: 0.85pt)

  // Archetto di ribaltamento verso la base
  arc((0.60, 0.90), start: 42deg, stop: 4deg, radius: 1.28, anchor: "origin", mark: (end: ">", scale: 0.45, fill: red.darken(15%)), stroke: (paint: red.darken(15%), thickness: 0.7pt))

  // Vettori sulla faccia orizzontale (origine al centro del piano ribaltato)
  circle((2.62, 1.52), radius: 0.04, fill: black, stroke: none)
  line((2.62, 1.52), (2.62, 3.05), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((2.46, 2.82), text(size: 8.8pt)[*$sigma_perp$*], anchor: "east")
  line((2.62, 1.52), (4.35, 1.52), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((4.42, 1.52), text(size: 8.8pt)[*$tau_perp$*], anchor: "west")
  line((2.62, 1.52), (3.85, 2.07), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((3.62, 2.18), text(size: 8.5pt)[*$tau_parallel$*], anchor: "south")

  content((2.65, 0.28), text(size: 7.4pt)[*Ribaltamento su faccia orizzontale*], anchor: "center")

  // =========================================================================
  // DESTRA: Ribaltamento sulla FACCIA VERTICALE
  // =========================================================================
  // Piano verticale ribaltato
  line((6.80, 0.90), (6.80, 2.14), (9.60, 3.39), (9.60, 2.15), close: true, fill: blue.transparentize(85%), stroke: (paint: blue.darken(25%), thickness: 0.85pt, dash: "dashed"))
  line((7.20, 1.0786), (7.20, 2.3186), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((7.60, 1.2571), (7.60, 2.4971), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((8.00, 1.4357), (8.00, 2.6757), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((8.40, 1.6143), (8.40, 2.8543), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((8.80, 1.7929), (8.80, 3.0329), stroke: (paint: blue.darken(20%), thickness: 0.4pt))
  line((9.20, 1.9714), (9.20, 3.2114), stroke: (paint: blue.darken(20%), thickness: 0.4pt))

  // Spigoli nascosti del prisma
  line((6.80, 0.90), (9.60, 2.15), stroke: (dash: "dashed", thickness: 0.55pt))
  line((9.60, 2.15), (11.35, 2.15), stroke: (dash: "dashed", thickness: 0.55pt))
  line((9.60, 2.15), (9.60, 3.90), stroke: (dash: "dashed", thickness: 0.55pt))

  // Sezione di gola originale (obliqua, ben visibile e tratteggiata)
  line((6.80, 0.90), (7.675, 1.775), (10.475, 3.025), (9.60, 2.15), close: true, fill: luma(140).transparentize(82%), stroke: (paint: luma(50), thickness: 0.85pt, dash: "dashed"))

  // Spigoli visibili del prisma
  line((6.80, 0.90), (8.55, 0.90), (6.80, 2.65), close: true, stroke: 0.85pt)
  line((8.55, 0.90), (11.35, 2.15), (9.60, 3.90), (6.80, 2.65), stroke: 0.85pt)

  // Archetto di ribaltamento verso la parete verticale
  arc((6.80, 0.90), start: 48deg, stop: 86deg, radius: 1.28, anchor: "origin", mark: (end: ">", scale: 0.45, fill: red.darken(15%)), stroke: (paint: red.darken(15%), thickness: 0.7pt))

  // Vettori sulla faccia verticale (origine al centro del piano verticale ribaltato)
  circle((8.20, 2.14), radius: 0.04, fill: black, stroke: none)
  line((8.20, 2.14), (8.20, 3.85), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((8.04, 3.65), text(size: 8.8pt)[*$tau_perp$*], anchor: "east")
  line((8.20, 2.14), (9.90, 2.14), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((9.98, 2.14), text(size: 8.8pt)[*$sigma_perp$*], anchor: "west")
  line((8.20, 2.14), (9.42, 2.68), mark: (end: ">", scale: 0.58, fill: black), stroke: 1.0pt)
  content((9.08, 2.90), text(size: 8.5pt)[*$tau_parallel$*], anchor: "south")

  content((8.85, 0.28), text(size: 7.4pt)[*Ribaltamento su faccia verticale*], anchor: "center")
})
