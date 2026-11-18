// Figura estratta da solidi.typ (riga 1212) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *

  // Semianello (archi interno ed esterno)
  arc((0, 0), start: 0deg, stop: 180deg, radius: 2.92, anchor: "origin", stroke: 1.3pt)
  arc((0, 0), start: 0deg, stop: 180deg, radius: 2.48, anchor: "origin", stroke: 1.3pt)

  // Assi di simmetria (tratto-punto)
  line((-3.30, 0), (3.20, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((0, -0.35), (0, 3.30), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Raggio all'angolo \phi e linea orizzontale in P
  line((0, 0), (2.31, 1.39), stroke: 0.6pt)
  line((2.31, 1.39), (3.95, 1.39), stroke: 0.6pt)

  // Archi di quota per gli angoli \phi
  arc((0, 0), start: 0deg, stop: 31deg, radius: 1.80, anchor: "origin", mark: (end: ">", fill: none, scale: 1.2), stroke: 0.6pt)
  arc((2.31, 1.39), start: 0deg, stop: 31deg, radius: 1.05, anchor: "origin", mark: (end: ">", fill: none, scale: 1.1), stroke: 0.6pt)

  // Vettore risultante F^\omega
  line((0, 3.12), (0, 4.45), mark: (end: ">", fill: black, scale: 1.7), stroke: 1.8pt)

  // Vettori dF e dF\sin\phi applicati in P(2.31, 1.39)
  line((2.31, 1.39), (4.09, 2.46), mark: (end: ">", fill: black, scale: 1.7), stroke: 1.4pt)
  line((2.31, 1.39), (2.31, 2.46), mark: (end: ">", fill: black, scale: 1.4), stroke: 1.4pt)

  // Vettori delle forze di trazione T
  line((-2.70, -0.06), (-2.70, -1.25), mark: (end: ">", fill: black, scale: 1.4), stroke: 1.4pt)
  line((2.70, -0.06), (2.70, -1.25), mark: (end: ">", fill: black, scale: 1.4), stroke: 1.4pt)

  // Etichette
  content((0.45, 3.82), [$F^omega$], anchor: "west")
  content((2.92, 2.95), [$dif F sin phi$], anchor: "center")
  content((3.85, 1.90), [$dif F$], anchor: "west")
  content((2.08, 0.58), [$phi$], anchor: "center")
  content((-2.48, -0.82), [$T = sigma_c^omega s B$], anchor: "west")
  content((3.00, -0.82), [$T$], anchor: "west")
})
