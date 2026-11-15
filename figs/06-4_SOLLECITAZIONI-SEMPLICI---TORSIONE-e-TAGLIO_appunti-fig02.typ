// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 133) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.82cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Tronco 1 ---
  line((0, 1.1), (3.4, 1.1), stroke: 1.2pt)
  line((0, -1.1), (3.4, -1.1), stroke: 1.2pt)
  circle((0, 0), radius: (0.35, 1.1), stroke: 1pt)
  circle((3.4, 0), radius: (0.35, 1.1), stroke: 1pt)

  // Assi
  line((-0.4, 0), (4.5, 0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((4.5, -0.15), text(size: 7pt)[$x$], anchor: "north")
  line((0, -1.4), (0, 1.4), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((3.4, -1.4), (3.4, 1.4), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Raggi O-A0, O'-B0, O'-B
  line((0, 0), (-0.22, -0.35), stroke: 0.6pt)
  line((3.4, 0), (3.18, -0.35), stroke: 0.6pt)
  line((3.4, 0), (3.25, -0.65), stroke: 0.6pt)

  // Fibra indeformata A0-B0 (rossa) e deformata A0-B (blu)
  line((-0.22, -0.35), (3.18, -0.35), stroke: (paint: red, thickness: 1.4pt))
  line((-0.22, -0.35), (3.25, -0.65), stroke: (paint: blue, thickness: 1.4pt))

  // Punti A0, B0, B
  circle((-0.22, -0.35), radius: 0.08, fill: black, stroke: none)
  circle((3.18, -0.35), radius: 0.08, fill: red, stroke: none)
  circle((3.25, -0.65), radius: 0.08, fill: blue, stroke: none)

  // Etichette punti e angoli sul cilindro
  content((0.05, 0.18), text(size: 7pt)[$O$], anchor: "west")
  content((3.45, 0.18), text(size: 7pt)[$O'$], anchor: "west")
  content((-0.22, -0.48), text(size: 7pt)[$A_0$], anchor: "north")
  content((3.15, -0.22), text(size: 7pt)[$B_0$], anchor: "east")
  content((3.35, -0.72), text(size: 7pt)[$B$], anchor: "west")
  content((2.3, 0.15), text(size: 7pt)[$l$], anchor: "south")
  content((3.42, -0.45), text(size: 7pt)[$theta$], anchor: "west")

  // Indicazione angolo gamma_1
  arc((-0.22, -0.35), start: -15deg, stop: 5deg, radius: 1.1, anchor: "origin", stroke: 0.5pt)
  content((1.05, -0.65), text(size: 7pt)[$gamma_1$], anchor: "north")

  // Momento Mt a sinistra
  arc((0, 0), start: 145deg, stop: 215deg, radius: (0.48, 1.1), anchor: "origin", stroke: 0.7pt, mark: (start: ">"))
  content((-0.5, 0.45), text(size: 7pt)[$M_t$], anchor: "east")

  // Indicatore tronco 1
  circle((1.9, 1.75), radius: 0.22, stroke: 0.6pt)
  content((1.9, 1.75), text(size: 7pt)[1])
  line((1.82, 1.54), (1.6, 0.85), mark: (end: ">"), stroke: 0.6pt)

  // --- PANNELLO DESTRO: Sezione trasversale (centro (6.8, 0), R = 1.25) ---
  circle((6.8, 0), radius: 1.25, stroke: 0.9pt)
  // Assi z (sinistra) e y (alto)
  line((8.2, 0), (5.0, 0), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((5.0, -0.15), text(size: 7pt)[$z$], anchor: "north")
  line((6.8, -1.45), (6.8, 1.75), mark: (end: ">"), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  content((6.95, 1.7), text(size: 7pt)[$y$], anchor: "west")

  // Raggi verso B0 (205 deg) e B (235 deg)
  line((6.8, 0), (5.67, -0.53), stroke: 0.6pt)
  line((6.8, 0), (6.08, -1.02), stroke: 0.6pt)
  arc((6.8, 0), start: 205deg, stop: 235deg, radius: 0.65, anchor: "origin", stroke: 0.5pt)
  content((6.45, 0.22), text(size: 7pt)[$theta$], anchor: "south")

  // Punto B0 (rosso) e area dA1 intorno a B (blu)
  circle((5.98, -0.38), radius: 0.08, fill: red, stroke: none)
  content((5.88, -0.25), text(size: 7pt)[$B_0$], anchor: "south")

  // Elemento dA1 e forza dF1
  line((6.05, -0.78), (6.22, -0.66), (6.34, -0.83), (6.17, -0.95), close: true, stroke: 0.6pt)
  circle((6.20, -0.80), radius: 0.07, fill: blue, stroke: none)
  line((6.20, -0.80), (6.65, -1.12), mark: (end: ">"), stroke: 0.8pt)
  content((5.98, -0.82), text(size: 7pt)[$B$], anchor: "east")
  content((6.32, -0.52), text(size: 7pt)[$r_1$], anchor: "east")
  content((6.42, -0.75), text(size: 7pt)[$d A_1$], anchor: "west")
  content((6.68, -1.22), text(size: 7pt)[$d F_1$], anchor: "north")

  // Secondo elemento dA2 (verde) nel quarto quadrante
  line((6.8, 0), (7.65, -0.25), stroke: 0.6pt)
  line((7.55, -0.15), (7.75, -0.21), (7.69, -0.41), (7.49, -0.35), close: true, stroke: 0.6pt)
  circle((7.62, -0.28), radius: 0.07, fill: rgb("#1b8a3d"), stroke: none)
  line((7.62, -0.28), (7.78, 0.28), mark: (end: ">"), stroke: 0.8pt)
  content((7.25, -0.05), text(size: 7pt)[$r_2$], anchor: "south")
  content((7.65, -0.50), text(size: 7pt)[$d A_2$], anchor: "north")
  content((7.65, 0.42), text(size: 7pt)[$d F_2$], anchor: "south")
})
