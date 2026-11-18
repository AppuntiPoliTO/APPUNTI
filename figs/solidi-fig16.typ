// Figura estratta da solidi.typ (riga 1154) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Contorno dell'elemento infinitesimo (faccia anteriore, superiore e laterale destra)
  arc((0, 0), start: 83deg, stop: 97deg, radius: 10.40, anchor: "origin", stroke: 1.3pt)
  arc((0, 0), start: 83deg, stop: 97deg, radius: 13.00, anchor: "origin", stroke: 1.3pt)
  line((-1.27, 10.32), (-1.58, 12.90), stroke: 1.3pt)
  line((1.27, 10.32), (1.58, 12.90), stroke: 1.3pt)

  arc((1.33, 0.43), start: 83deg, stop: 97deg, radius: 13.00, anchor: "origin", stroke: 1.3pt)
  line((-1.58, 12.90), (-0.25, 13.33), stroke: 1.3pt)
  line((1.58, 12.90), (2.91, 13.33), stroke: 1.3pt)
  line((1.27, 10.32), (2.60, 10.75), stroke: 1.3pt)
  line((2.60, 10.75), (2.91, 13.33), stroke: 1.3pt)

  // Superficie cilindrica media (tratto-punto)
  arc((0, 0), start: 97deg, stop: 105deg, radius: 11.70, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.6pt))
  arc((0, 0), start: 75.5deg, stop: 81.5deg, radius: 11.70, anchor: "origin", stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // Linee radiali e arco per l'angolo infinitesimo d\phi
  line((-1.02, 8.34), (-1.25, 10.15), stroke: 0.7pt)
  line((1.02, 8.34), (1.25, 10.15), stroke: 0.7pt)
  arc((0, 0), start: 80deg, stop: 100deg, radius: 8.95, anchor: "origin", stroke: 0.7pt)

  // Quota raggio r
  line((-1.99, 9.18), (-2.53, 11.42), mark: (end: ">", fill: none, scale: 1.3), stroke: 0.7pt)

  // Vettore velocità angolare \omega
  arc((0, 0), start: 79deg, stop: 96.5deg, radius: 11.05, anchor: "origin", mark: (end: ">", fill: black, scale: 1.4), stroke: 1.4pt)

  // Vettore forza centrifuga dF
  line((0.50, 13.15), (0.50, 14.55), mark: (end: ">", fill: black, scale: 1.8), stroke: 1.4pt)

  // Etichette
  content((0.75, 13.78), [$dif F$], anchor: "west")
  content((2.05, 12.68), [$B$], anchor: "center")
  content((1.58, 11.82), [$s$], anchor: "center")
  content((0.10, 11.55), [$omega$], anchor: "center")
  content((-2.75, 10.30), [$r$], anchor: "center")
  content((-0.15, 9.45), [$dif phi$], anchor: "center")
})
