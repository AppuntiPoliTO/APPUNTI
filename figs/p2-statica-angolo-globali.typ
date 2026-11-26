// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
// Componenti globali di tensione nel giunto con cordone d'angolo (Slide 21)
#canvas(length: 1cm, {
  import draw: *

  // Piastra orizzontale di base
  line((0.30, 0.90), (4.70, 0.90), (4.70, 1.40), (0.30, 1.40), close: true, fill: white, stroke: 0.9pt)
  line((0.30, 1.40), (3.30, 2.90), (7.70, 2.90), (4.70, 1.40), stroke: 0.9pt)
  line((4.70, 0.90), (7.70, 2.40), (7.70, 2.90), stroke: 0.9pt)

  // Cordone d'angolo sinistro: porzione visibile della fascia longitudinale dietro lo spigolo dell'anima
  merge-path(fill: luma(242), stroke: 0.85pt, close: true, {
    bezier((1.65, 1.40), (1.965, 1.834), (1.674, 1.573), (1.765, 1.734))
    line((1.965, 1.834), (2.15, 1.926))
    line((2.15, 1.926), (2.15, 1.65))
    line((2.15, 1.65), (1.65, 1.40))
  })
  // Ondulazione visibile del cordone sinistro
  bezier((2.079, 1.614), (2.15, 1.827), (2.089, 1.689), (2.112, 1.761), stroke: 0.55pt)

  // Anima verticale (con maschera bianca)
  line((2.15, 1.40), (2.15, 3.55), (5.15, 5.05), (5.75, 5.05), (5.75, 2.90), (2.75, 1.40), close: true, fill: white, stroke: none)
  line((2.15, 1.40), (2.15, 3.55), (2.75, 3.55), (2.75, 1.40), stroke: 0.9pt)
  line((2.15, 3.55), (5.15, 5.05), (5.75, 5.05), (2.75, 3.55), stroke: 0.9pt)
  line((5.75, 5.05), (5.75, 2.90), stroke: 0.9pt)

  // Frontale pieno del cordone d'angolo sinistro
  merge-path(fill: black, stroke: 0.8pt, close: true, {
    line((2.15, 1.40), (1.65, 1.40))
    bezier((1.65, 1.40), (2.15, 1.90), (1.68, 1.62), (1.82, 1.82))
    line((2.15, 1.90), (2.15, 1.40))
  })

  // Cordone d'angolo destro (frontale pieno + fascia longitudinale con entrambe le fini arrotondate)
  merge-path(fill: black, stroke: 0.8pt, close: true, {
    line((2.75, 1.40), (3.25, 1.40))
    bezier((3.25, 1.40), (2.75, 1.90), (3.22, 1.62), (3.08, 1.82))
    line((2.75, 1.90), (2.75, 1.40))
  })
  merge-path(fill: luma(242), stroke: 0.85pt, close: true, {
    line((2.75, 1.90), (5.75, 3.40))
    bezier((5.75, 3.40), (6.25, 2.90), (6.08, 3.32), (6.22, 3.12))
    line((6.25, 2.90), (3.25, 1.40))
    bezier((3.25, 1.40), (2.75, 1.90), (3.22, 1.62), (3.08, 1.82))
  })
  // Ondulazioni del cordone destro
  bezier((3.179, 2.114), (3.679, 1.614), (3.509, 2.034), (3.649, 1.834), stroke: 0.55pt)
  bezier((3.607, 2.329), (4.107, 1.829), (3.937, 2.249), (4.077, 2.049), stroke: 0.55pt)
  bezier((4.036, 2.543), (4.536, 2.043), (4.366, 2.463), (4.506, 2.263), stroke: 0.55pt)
  bezier((4.464, 2.757), (4.964, 2.257), (4.794, 2.677), (4.934, 2.477), stroke: 0.55pt)
  bezier((4.893, 2.971), (5.393, 2.471), (5.223, 2.891), (5.363, 2.691), stroke: 0.55pt)
  bezier((5.321, 3.186), (5.821, 2.686), (5.651, 3.106), (5.791, 2.906), stroke: 0.55pt)

  // --- Vettori di tensione globali ---
  // tau: tangenziale lungo l'asse del cordone (sulla faccia verticale)
  line((3.05, 2.35), (4.35, 3.00), mark: (end: ">", scale: 0.6, fill: black), stroke: 0.95pt)
  content((3.45, 2.82), text(size: 9pt)[$tau$], anchor: "south")

  // sigma verticale (sulla faccia verticale, normale all'asse del cordone)
  line((4.65, 3.18), (4.65, 4.18), mark: (end: ">", scale: 0.6, fill: black), stroke: 0.95pt)
  content((4.85, 3.80), text(size: 9pt)[$sigma$], anchor: "west")

  // sigma orizzontale (sulla piastra orizzontale, normale all'asse del cordone)
  line((5.28, 2.38), (6.38, 2.38), mark: (end: ">", scale: 0.6, fill: black), stroke: 0.95pt)
  content((5.83, 2.24), text(size: 9pt)[$sigma$], anchor: "north")

  // sigma_parallel (sulla faccia frontale del cordone — NON CONSIDERARE)
  line((2.92, 1.52), (1.75, 0.52), mark: (end: ">", scale: 0.6, fill: red.darken(15%)), stroke: (paint: red.darken(15%), thickness: 0.95pt))
  content((1.65, 0.30), text(size: 7.8pt, fill: red.darken(15%))[*$sigma_parallel$ (NON CONSIDERARE)*], anchor: "west")

  // Quota lunghezza l
  line((4.90, 1.30), (7.90, 2.80), mark: (start: ">", end: ">", scale: 0.5), stroke: 0.6pt)
  content((6.70, 1.90), text(size: 8.5pt)[$l$], anchor: "north-west")
})
