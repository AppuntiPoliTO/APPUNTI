// Figura estratta da ruote dentate.typ (riga 2167) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Assi di centro
  line((-3.40, 0.00), (2.85, 0.00), stroke: 0.6pt)
  line((0.00, -2.95), (0.00, 2.50), stroke: 0.6pt)

  // Circonferenza primitiva (tratto-punto)
  circle((0.00, 0.00), radius: 2.40, stroke: (dash: "dash-dotted", thickness: 0.8pt))

  // Linee tratteggiate di scomposizione delle forze
  line((0.00, 3.55), (2.96, 3.55), (2.96, 2.40), stroke: (dash: "dashed", thickness: 0.7pt))
  line((-2.96, 0.00), (-2.96, -1.15), (0.00, -1.15), stroke: (dash: "dashed", thickness: 0.7pt))

  // Forze nel punto di ingranamento superiore (0, 2.40)
  line((2.96, 3.55), (0.00, 2.40), stroke: 0.7pt, mark: (end: ">", fill: black, length: 0.22, width: 0.12))
  line((0.00, 3.55), (0.00, 2.40), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.28, width: 0.18))
  line((2.96, 2.40), (0.00, 2.40), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.28, width: 0.18))

  // Forze sull'albero nel centro (0, 0)
  line((-2.96, -1.15), (0.00, 0.00), stroke: 0.7pt, mark: (end: ">", fill: black, length: 0.22, width: 0.12))
  line((-2.96, 0.00), (0.00, 0.00), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.28, width: 0.18))
  line((0.00, -1.15), (0.00, 0.00), stroke: 2.2pt, mark: (end: ">", fill: black, length: 0.28, width: 0.18))

  // Arco verso di rotazione n_2 e arco coppia T_a2
  arc((0.00, 0.00), start: 126deg, stop: 160deg, radius: 2.90, anchor: "origin", stroke: 0.7pt, mark: (start: ">", fill: black, length: 0.20, width: 0.12))
  arc((0.00, 0.00), start: 24deg, stop: 68deg, radius: 1.40, anchor: "origin", stroke: 1.8pt, mark: (start: ">", fill: black, length: 0.26, width: 0.16))

  // Linee di estensione e quota diametro d_2
  line((1.70, 1.70), (4.05, -0.65), stroke: 0.6pt)
  line((-1.70, -1.70), (0.65, -4.05), stroke: 0.6pt)
  line((2.40, -1.90), (3.85, -0.45), stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.20, width: 0.11))
  line((1.90, -2.40), (0.45, -3.85), stroke: 0.6pt, mark: (end: ">", fill: black, length: 0.20, width: 0.11))

  // Etichette
  content((-0.18, 3.15), text(size: 9pt)[$F_(32)^r$], anchor: "east")
  content((3.08, 3.55), text(size: 9pt)[$F_(32)$], anchor: "west")
  content((2.65, 2.02), text(size: 9pt)[$F_(32)^t$], anchor: "center")
  content((-2.45, 1.95), text(size: 9pt)[$n_2$], anchor: "east")
  content((0.92, 1.25), text(size: 9pt)[$T_(a 2)$], anchor: "west")
  content((0.20, 0.22), text(size: 9pt)[$a$], anchor: "south-west")
  content((-1.60, 0.35), text(size: 9pt)[$F_(a 2)^t$], anchor: "center")
  content((-3.05, -1.45), text(size: 9pt)[$F_(a 2)$], anchor: "center")
  content((0.15, -0.70), text(size: 9pt)[$F_(a 2)^r$], anchor: "west")
  content((2.42, -0.80), text(size: 9pt)[$2$], anchor: "west")
  content((2.15, -2.15), text(size: 9pt)[$d_2$], anchor: "center")
})
