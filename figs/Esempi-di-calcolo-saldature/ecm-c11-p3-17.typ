#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Triangolo della sezione del cordone e bisettrice della gola
  line((1.00, 2.50), (1.00, 4.50), (3.00, 2.50), stroke: 0.75pt)
  line((1.00, 2.50), (2.15, 3.65), stroke: 0.55pt)
  line((1.00, 2.50), (3.00, 2.50), stroke: 1.8pt)
  circle((1.00, 2.50), radius: 0.055, fill: black, stroke: none)
  circle((3.00, 2.50), radius: 0.055, fill: black, stroke: none)

  content((1.00, 2.32), text(size: 10.5pt, weight: "bold")[A], anchor: "north")
  content((2.95, 2.32), text(size: 10.5pt, weight: "bold")[B], anchor: "north")

  // Linee di chiusura del rettangolo vettoriale (rosse sottili)
  line((1.50, 1.40), (5.50, 1.40), stroke: (paint: red, thickness: 0.7pt))
  line((5.50, 3.00), (5.50, 1.40), stroke: (paint: red, thickness: 0.7pt))

  // Vettori rossi n_perp1, n_perp2 e risultante n_perp
  line((1.50, 3.00), (5.50, 3.00), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))
  line((1.50, 3.00), (1.50, 1.40), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))
  line((1.50, 3.00), (5.50, 1.40), mark: (end: ">", fill: red), stroke: (paint: red, thickness: 1.2pt))

  // Proiezioni verdi sulla sezione di gola
  line((1.50, 3.00), (4.30, 0.20), mark: (end: ">", fill: green.darken(25%)), stroke: (paint: green.darken(25%), thickness: 1.2pt))
  line((4.30, 0.20), (5.50, 1.40), mark: (end: ">", fill: green.darken(25%)), stroke: (paint: green.darken(25%), thickness: 1.2pt))

  // Archi degli angoli beta e delta
  arc((1.50, 3.00), start: 338.2deg, stop: 360deg, radius: 2.05, anchor: "origin", stroke: 0.65pt)
  arc((1.50, 3.00), start: 315deg, stop: 338.2deg, radius: 2.05, anchor: "origin", stroke: 0.65pt)

  content((3.76, 2.58), text(size: 10.5pt, weight: "bold")[$beta$])
  content((3.48, 1.72), text(size: 10.5pt, weight: "bold")[$delta$])

  // Etichette dei vettori rossi
  content((4.30, 3.18), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp 2)$], anchor: "south")
  content((1.32, 1.32), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp 1)$], anchor: "east")
  content((4.85, 1.92), text(size: 11.5pt, fill: red, weight: "bold")[$n_perp$], anchor: "south-west")

  // Etichette delle componenti verdi
  content((3.90, 0.32), text(size: 10.5pt, fill: green.darken(25%))[$n_(perp n) = n_perp cos delta$], anchor: "east")
  content((5.05, 0.62), text(size: 10.5pt, fill: green.darken(25%))[$n_(perp t) = n_perp "sen" delta$], anchor: "west")
})
