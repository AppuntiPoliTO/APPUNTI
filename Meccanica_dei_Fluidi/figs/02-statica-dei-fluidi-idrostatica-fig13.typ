// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 922) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.75cm, {
  import draw: *

  // Tratteggio del terreno sotto il fondo
  line((0.4, 0), (0.1, -0.3), stroke: 0.55pt + c-geo)
  line((0.8, 0), (0.5, -0.3), stroke: 0.55pt + c-geo)
  line((1.2, 0), (0.9, -0.3), stroke: 0.55pt + c-geo)
  line((1.6, 0), (1.3, -0.3), stroke: 0.55pt + c-geo)
  line((2.0, 0), (1.7, -0.3), stroke: 0.55pt + c-geo)
  line((2.4, 0), (2.1, -0.3), stroke: 0.55pt + c-geo)
  line((2.8, 0), (2.5, -0.3), stroke: 0.55pt + c-geo)

  // Tratteggio del terreno a destra della parete
  line((6.4, 2.6), (6.7, 2.9), stroke: 0.55pt + c-geo)
  line((6.4, 3.0), (6.7, 3.3), stroke: 0.55pt + c-geo)
  line((6.4, 3.4), (6.7, 3.7), stroke: 0.55pt + c-geo)
  line((6.4, 3.8), (6.7, 4.1), stroke: 0.55pt + c-geo)
  line((6.4, 4.2), (6.7, 4.5), stroke: 0.55pt + c-geo)
  line((6.4, 4.6), (6.6, 4.8), stroke: 0.55pt + c-geo)

  // Superficie libera
  line((0, 4.8), (6.4, 4.8), stroke: 1pt + c-norm)

  // Simbolo del livello libero
  line((1.5, 5.1), (1.9, 5.1), (1.7, 4.8), close: true, stroke: 0.8pt + c-norm)
  line((1.7, 4.65), (1.7, 4.3), stroke: (paint: c-aux, dash: "dotted", thickness: 0.6pt))

  // Fondo piano
  line((0, 0), (3.2, 0), stroke: 1pt)

  // Profilo curvo a S
  bezier((3.2, 0), (4.5, 1.35), (3.9, 0), (3.9, 1.2), stroke: 1pt)
  bezier((4.5, 1.35), (6.4, 2.5), (5.1, 1.5), (6.4, 1.6), stroke: 1pt)

  // Parete verticale
  line((6.4, 2.5), (6.4, 4.8), stroke: 1pt)

  // Linee di riferimento verticali (tratto-punto)
  line((3.2, 4.4), (3.2, -0.9), stroke: (paint: c-aux, dash: "dash-dotted", thickness: 0.6pt))
  line((6.4, 2.4), (6.4, -0.9), stroke: (paint: c-aux, dash: "dash-dotted", thickness: 0.6pt))

  // Linee di riferimento orizzontali (tratteggiate)
  line((3.2, 2.5), (8.0, 2.5), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((3.4, 0), (8.0, 0), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  line((3.2, 1.25), (6.4, 1.25), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))

  // Quota h (doppia freccia con etichetta al centro)
  line((0.2, 1.8), (0.2, 4.8), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((0.2, 1.2), (0.2, 0), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((0.2, 1.5), [$h$])

  // Quota h - a/2 (profondità del baricentro)
  line((3.0, 4.8), (3.0, 1.25), mark: (start: "stealth", end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((3.4, 3.4), [$h - a/2$], anchor: "west")

  // Quota b
  line((4.45, -0.7), (3.2, -0.7), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((5.15, -0.7), (6.4, -0.7), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((4.8, -0.7), [$b$])

  // Quota a
  line((8.0, 1.55), (8.0, 2.5), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  line((8.0, 0.95), (8.0, 0), mark: (end: "stealth", fill: c-geo), stroke: 0.6pt)
  content((8.0, 1.25), [$a$])
})
