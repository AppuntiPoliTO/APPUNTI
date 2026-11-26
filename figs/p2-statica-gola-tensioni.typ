// Vettori di tensione locali sulla sezione di gola — 1° Metodo direzionale (Slide 23)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Vertici del prisma triangolare (faccia frontale e faccia posteriore)
  let A = (1.50, 1.00)
  let B = (3.40, 1.00)
  let C = (1.50, 2.90)
  let A2 = (4.80, 2.50)
  let B2 = (6.70, 2.50)
  let C2 = (4.80, 4.40)

  // Punto medio dell'ipotenusa (piede dell'altezza di gola)
  let M = (2.45, 1.95)
  let M2 = (5.75, 3.45)

  // Riempimento leggero della sezione di gola (piano A - M - M2 - A2)
  line(A, M, M2, A2, close: true, fill: blue.transparentize(86%), stroke: none)
  // Tratteggio parallelo sulla sezione di gola
  for k in range(1, 9) {
    let t = k / 9.0
    let p1 = (1.50 + 3.30 * t, 1.00 + 1.50 * t)
    let p2 = (2.45 + 3.30 * t, 1.95 + 1.50 * t)
    line(p1, p2, stroke: (paint: blue.darken(20%), thickness: 0.45pt))
  }

  // Spigoli nascosti del prisma
  line(A, A2, stroke: (dash: "dashed", thickness: 0.65pt))
  line(A2, B2, stroke: (dash: "dashed", thickness: 0.65pt))
  line(A2, C2, stroke: (dash: "dashed", thickness: 0.65pt))

  // Contorno sezione di gola
  line(A, M, stroke: (paint: blue.darken(30%), thickness: 0.85pt))
  line(M, M2, stroke: (paint: blue.darken(30%), thickness: 0.85pt, dash: "dashed"))
  line(M2, A2, stroke: (paint: blue.darken(30%), thickness: 0.75pt, dash: "dashed"))

  // Spigoli visibili del prisma
  line(A, B, C, close: true, stroke: 0.95pt)
  line(B, B2, C2, C, stroke: 0.95pt)

  // Origine locale O al centro della sezione di gola
  let O = (3.62, 2.22)
  circle(O, radius: 0.045, fill: black, stroke: none)

  // 1) sigma_perp^g (normale alla sezione di gola, verso alto-sinistra a 135°)
  line(O, (2.25, 3.55), mark: (end: ">", scale: 0.6, fill: black), stroke: 1.05pt)
  content((2.20, 3.72), text(size: 9pt)[*$sigma_perp^g$*], anchor: "south")

  // 2) tau_perp^g (giace nella sezione di gola, perpendicolare all'asse -> verso alto-destra lungo A->M)
  line(O, (4.72, 3.32), mark: (end: ">", scale: 0.6, fill: black), stroke: 1.05pt)
  content((4.52, 3.48), text(size: 9pt)[*$tau_perp^g$*], anchor: "south-east")

  // 3) tau_parallel^g (giace nella sezione di gola, parallela all'asse -> verso destra-alto lungo A->A2)
  line(O, (5.25, 2.96), mark: (end: ">", scale: 0.6, fill: black), stroke: 1.05pt)
  content((5.42, 3.00), text(size: 9pt)[*$tau_parallel^g$*], anchor: "west")

  // 4) sigma_parallel^g (lungo l'asse verso fuori, non si considera)
  line((1.98, 1.48), (0.65, 0.88), mark: (end: ">", scale: 0.6, fill: red.darken(15%)), stroke: (paint: red.darken(15%), thickness: 0.95pt))
  content((0.55, 0.58), text(size: 8pt, fill: red.darken(15%))[*$sigma_parallel^g$* (non si considera)], anchor: "west")

  // Etichetta sezione di gola
  content((5.85, 1.35), text(size: 7pt, fill: blue.darken(30%))[*Sezione di gola*], anchor: "center")
  line((5.15, 1.48), (4.45, 2.02), mark: (end: ">", scale: 0.45, fill: blue.darken(30%)), stroke: (paint: blue.darken(30%), thickness: 0.6pt))
})
