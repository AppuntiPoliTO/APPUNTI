// Esempio 5 (Statica): proiezione a 45° di n_{perp, max} sulla sezione di gola (Slide 21)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Triangolo rettangolo isoscele della sezione del cordone
  let A = (2.20, 2.20)
  let B = (4.60, 2.20)
  let C = (2.20, 4.60)
  let M = (3.40, 3.40) // punto medio dell'ipotenusa -> sezione di gola A-M

  line(A, B, C, close: true, stroke: 0.9pt)
  // Sezione di gola (bisettrice A-M)
  line(A, (3.75, 3.75), stroke: 1.0pt)
  content((2.10, 1.98), text(size: 10.5pt, weight: "bold")[A], anchor: "north")
  content((4.65, 2.02), text(size: 10.5pt, weight: "bold")[B], anchor: "north")

  // Punto di applicazione al centro della gola (2.80, 2.80) -> forza verticale verso il basso n_{perp,max}
  let O = (2.95, 2.95)
  let Tip = (2.95, 0.75) // lunghezza 2.20
  line(O, Tip, mark: (end: ">", fill: red, scale: 0.65), stroke: (paint: red, thickness: 1.15pt))
  content((3.12, 1.48), text(size: 11.5pt, fill: red, weight: "bold")[$n_(perp, "max")$], anchor: "west")

  // Proiezioni a 45° sulla sezione di gola:
  // n_{perp,t} lungo la gola (-cos45, -sin45) -> da O a (1.85, 1.85)
  // n_{perp,n} normale alla gola (+cos45, -sin45) -> da (1.85, 1.85) a Tip (2.95, 0.75)
  let P_t = (1.85, 1.85)
  line(O, P_t, mark: (end: ">", fill: red, scale: 0.55), stroke: (paint: red, thickness: 1.0pt))
  line(P_t, Tip, mark: (end: ">", fill: red, scale: 0.55), stroke: (paint: red, thickness: 1.0pt))

  content((1.95, 3.05), text(size: 10.5pt, fill: red, weight: "bold")[$n_(perp, t) = n_(perp, "max") sin 45°$], anchor: "east")
  content((1.90, 1.15), text(size: 10.5pt, fill: red, weight: "bold")[$n_(perp, n) = n_(perp, "max") cos 45°$], anchor: "east")
})
