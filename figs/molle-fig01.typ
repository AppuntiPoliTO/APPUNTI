// Figura estratta da molle.typ (riga 62) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Tratteggio obliquo rosso nell'area sottesa alla retta lineare (pendenza -1, passo 0.60)
  line((0.30, 0.30), (0.60, 0.00), stroke: (paint: red, thickness: 0.7pt))
  line((0.60, 0.60), (1.20, 0.00), stroke: (paint: red, thickness: 0.7pt))
  line((0.90, 0.90), (1.80, 0.00), stroke: (paint: red, thickness: 0.7pt))
  line((1.20, 1.20), (2.40, 0.00), stroke: (paint: red, thickness: 0.7pt))
  line((1.50, 1.50), (2.85, 0.15), stroke: (paint: red, thickness: 0.7pt))
  line((1.80, 1.80), (2.85, 0.75), stroke: (paint: red, thickness: 0.7pt))
  line((2.10, 2.10), (2.85, 1.35), stroke: (paint: red, thickness: 0.7pt))
  line((2.40, 2.40), (2.85, 1.95), stroke: (paint: red, thickness: 0.7pt))
  line((2.70, 2.70), (2.85, 2.55), stroke: (paint: red, thickness: 0.7pt))

  // Assi cartesiani
  line((-0.35, 0.00), (3.65, 0.00), mark: (end: ">"), stroke: 0.8pt)
  line((0.00, -0.35), (0.00, 3.45), mark: (end: ">"), stroke: 0.8pt)

  // Curve: lineare, chiusura verticale, hardening (tratteggiata), softening (punteggiata)
  line((0.00, 0.00), (2.85, 2.85), stroke: 1.0pt)
  line((2.85, 2.85), (2.85, 0.00), stroke: 0.6pt)
  arc((-7.50, 7.50), start: 315deg, stop: 337deg, radius: 10.607, anchor: "origin", stroke: (dash: "dashed", thickness: 1.0pt))
  arc((2.65, -2.65), start: 82deg, stop: 135deg, radius: 3.748, anchor: "origin", stroke: (dash: "dotted", thickness: 1.0pt))

  // Frecce di richiamo
  line((3.00, 3.50), (2.28, 3.16), mark: (end: ">"), stroke: 0.6pt)
  line((3.20, 2.35), (2.15, 2.15), mark: (end: ">"), stroke: 0.6pt)
  line((3.95, 1.45), (2.48, 1.55), mark: (end: ">"), stroke: 0.6pt)
  line((3.40, 0.85), (2.15, 1.06), mark: (end: ">"), stroke: 0.6pt)

  // Etichette
  content((-0.18, 3.25), [$F (M)$], anchor: "east")
  content((2.95, -0.32), [$f (theta)$], anchor: "north")
  content((3.05, 3.50), [hardening], anchor: "west")
  content((3.25, 2.35), [lineare], anchor: "west")
  content((4.00, 1.45), [$W = (F f) / 2$], anchor: "west")
  content((3.45, 0.85), [softening], anchor: "west")
})
