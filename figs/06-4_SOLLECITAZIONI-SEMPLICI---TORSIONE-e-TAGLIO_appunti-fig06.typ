// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 469) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.82cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Recipiente con fluido in rotazione ---
  rect((0, -1.6), (2.1, 1.6), stroke: 1.2pt)
  line((0, 1.6), (-0.45, 2.05), stroke: 0.4pt)
  line((2.1, 1.6), (1.65, 2.05), stroke: 0.4pt)
  line((0, -1.6), (-0.45, -1.15), stroke: 0.4pt)

  // Linea di flusso chiusa (rettangolo raccordato)
  arc((0.55, 1.0), start: 90deg, stop: 180deg, radius: 0.4, anchor: "origin", stroke: 0.6pt)
  arc((1.55, 1.0), start: 0deg, stop: 90deg, radius: 0.4, anchor: "origin", stroke: 0.6pt)
  arc((1.55, -1.0), start: 270deg, stop: 360deg, radius: 0.4, anchor: "origin", stroke: 0.6pt)
  arc((0.55, -1.0), start: 180deg, stop: 270deg, radius: 0.4, anchor: "origin", stroke: 0.6pt)
  line((0.55, 1.4), (1.55, 1.4), stroke: 0.6pt)
  line((0.55, -1.4), (1.55, -1.4), stroke: 0.6pt)
  line((0.15, -1.0), (0.15, 1.0), stroke: 0.6pt)
  line((1.95, -1.0), (1.95, 1.0), stroke: 0.6pt)

  // Vettore velocita' v
  line((1.82, -0.1), (1.82, 0.65), mark: (end: ">"), stroke: 1pt)
  content((1.72, 0.25), text(size: 7pt)[$v$], anchor: "east")

  // --- PANNELLO DESTRO: Sezione rettangolare con tensioni (x da 3.5 a 5.6) ---
  rect((3.5, -1.6), (5.6, 1.6), stroke: 1.2pt)

  // Assi di simmetria tratteggiati
  line((3.1, 0), (6.4, 0), stroke: (dash: "dash-dotted", thickness: 0.5pt))
  line((4.55, -2.0), (4.55, 2.2), stroke: (dash: "dash-dotted", thickness: 0.5pt))

  // Frecce di flusso tangenziale lungo il perimetro interno
  line((5.45, -1.1), (5.45, -0.4), mark: (end: ">"), stroke: 0.6pt)
  line((5.45, 0.4), (5.45, 1.1), mark: (end: ">"), stroke: 0.6pt)
  line((3.65, 1.1), (3.65, 0.4), mark: (end: ">"), stroke: 0.6pt)
  line((3.65, -0.4), (3.65, -1.1), mark: (end: ">"), stroke: 0.6pt)
  line((5.2, 1.45), (4.7, 1.45), mark: (end: ">"), stroke: 0.6pt)
  line((4.4, 1.45), (3.9, 1.45), mark: (end: ">"), stroke: 0.6pt)
  line((3.9, -1.45), (4.4, -1.45), mark: (end: ">"), stroke: 0.6pt)
  line((4.7, -1.45), (5.2, -1.45), mark: (end: ">"), stroke: 0.6pt)

  // Profili interni non lineari lungo gli assi (curve a S per flesso in (4.55, 0))
  bezier((3.5, -0.55), (4.55, 0), (3.9, -0.15), (4.3, 0), stroke: 0.6pt)
  bezier((4.55, 0), (5.6, 0.55), (4.8, 0), (5.2, 0.15), stroke: 0.6pt)
  bezier((4.25, 1.6), (4.55, 0), (4.45, 1.1), (4.55, 0.4), stroke: 0.6pt)
  bezier((4.55, 0), (4.85, -1.6), (4.55, -0.4), (4.65, -1.1), stroke: 0.6pt)

  // Diagramma esterno sul lato lungo destro (tau_A = tau_max)
  arc((4.55, 0), start: -52deg, stop: 52deg, radius: (1.65, 2.03), anchor: "origin", stroke: 0.7pt)
  line((5.6, 1.2), (5.92, 1.2), stroke: 0.4pt)
  line((5.6, 0.8), (6.08, 0.8), stroke: 0.4pt)
  line((5.6, 0.4), (6.17, 0.4), stroke: 0.4pt)
  line((5.6, 0.0), (6.20, 0.0), stroke: 0.4pt)
  line((5.6, -0.4), (6.17, -0.4), stroke: 0.4pt)
  line((5.6, -0.8), (6.08, -0.8), stroke: 0.4pt)
  line((5.6, -1.2), (5.92, -1.2), stroke: 0.4pt)

  // Diagramma esterno sul lato corto superiore (tau_B)
  arc((4.55, 0.9), start: 33deg, stop: 147deg, radius: (1.25, 1.28), anchor: "origin", stroke: 0.7pt)
  line((3.9, 1.6), (3.9, 1.98), stroke: 0.4pt)
  line((4.2, 1.6), (4.2, 2.12), stroke: 0.4pt)
  line((4.55, 1.6), (4.55, 2.18), stroke: 0.4pt)
  line((4.9, 1.6), (4.9, 2.12), stroke: 0.4pt)
  line((5.2, 1.6), (5.2, 1.98), stroke: 0.4pt)

  // Punti notevoli A e B
  circle((3.5, 0), radius: 0.07, fill: white, stroke: 0.8pt)
  circle((5.6, 0), radius: 0.07, fill: white, stroke: 0.8pt)
  circle((4.55, 1.6), radius: 0.07, fill: white, stroke: 0.8pt)
  circle((4.55, -1.6), radius: 0.07, fill: white, stroke: 0.8pt)

  content((3.7, 0.2), text(size: 7pt)[$A$], anchor: "west")
  content((5.35, -0.25), text(size: 7pt)[$A$], anchor: "east")
  content((4.65, 1.25), text(size: 7pt)[$B$], anchor: "west")
  content((4.65, -1.85), text(size: 7pt)[$B$], anchor: "west")

  // Etichette tau_A e tau_B
  line((5.85, 0), (6.35, 0.2), stroke: 0.5pt)
  content((6.4, 0.25), text(size: 7pt)[$tau_A = tau_"max"$], anchor: "west")
  line((4.55, 1.9), (5.25, 2.3), stroke: 0.5pt)
  content((5.3, 2.35), text(size: 7pt)[$tau_B$], anchor: "west")

  // Quote a e b
  line((3.5, 1.6), (2.8, 1.6), stroke: 0.5pt)
  line((3.5, -1.6), (2.8, -1.6), stroke: 0.5pt)
  line((2.95, -1.6), (2.95, 1.6), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((2.85, 0), text(size: 7pt)[$a$], anchor: "east")

  line((3.5, -1.6), (3.5, -2.35), stroke: 0.5pt)
  line((5.6, -1.6), (5.6, -2.35), stroke: 0.5pt)
  line((3.5, -2.2), (5.6, -2.2), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((4.55, -2.25), text(size: 7pt)[$b$], anchor: "north")
})
