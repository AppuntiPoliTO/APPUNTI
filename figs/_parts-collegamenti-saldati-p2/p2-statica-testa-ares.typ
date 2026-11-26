// Sezione resistente A_res del giunto testa a testa (Slide 19)
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Piastra principale in assonometria
  line((0.40, 0.80), (4.60, 0.80), (4.60, 1.55), (0.40, 1.55), close: true, stroke: 0.9pt)
  line((0.40, 1.55), (3.40, 3.05), (7.60, 3.05), (4.60, 1.55), stroke: 0.9pt)
  line((4.60, 0.80), (7.60, 2.30), (7.60, 3.05), stroke: 0.9pt)

  // Maschera bianca del cordone per nascondere lo spigolo posteriore
  line((1.70, 1.55), (4.70, 3.05), (5.75, 3.05), (2.75, 1.55), close: true, fill: white, stroke: none)

  // Sezione resistente longitudinale L x s (tratteggiata in azzurro/grigio al centro del cordone)
  line((2.225, 0.80), (2.225, 1.55), (5.225, 3.05), (5.225, 2.30), close: true, fill: blue.transparentize(86%), stroke: (paint: blue.darken(25%), thickness: 0.85pt, dash: "dashed"))
  // Linee interne di tratteggio sulla sezione resistente L x s
  for t in (0.15, 0.30, 0.45, 0.60, 0.75, 0.90) {
    let x = 2.225 + 3.0 * t
    let y0 = 0.80 + 1.5 * t
    line((x, y0), (x, y0 + 0.75), stroke: (paint: blue.darken(20%), thickness: 0.45pt))
  }

  // Contorno del cianfrino frontale e cordone
  line((1.70, 1.55), (2.225, 0.80), (2.75, 1.55), stroke: 0.85pt)
  bezier((1.70, 1.55), (2.75, 1.55), (1.96, 1.75), (2.49, 1.75), stroke: 0.85pt)
  line((1.70, 1.55), (4.70, 3.05), stroke: 0.85pt)
  line((2.75, 1.55), (5.75, 3.05), stroke: 0.85pt)
  bezier((4.70, 3.05), (5.75, 3.05), (4.96, 3.25), (5.49, 3.25), stroke: 0.85pt)

  // Quota H (larghezza totale)
  line((0.40, 0.72), (0.40, 0.28), stroke: 0.55pt)
  line((4.60, 0.72), (4.60, 0.28), stroke: 0.55pt)
  line((0.40, 0.38), (4.60, 0.38), mark: (start: ">", end: ">", scale: 0.5), stroke: 0.65pt)
  content((2.50, 0.16), text(size: 8.5pt)[$H$], anchor: "center")

  // Quota s (spessore)
  line((3.35, 0.80), (3.35, 1.55), mark: (start: ">", end: ">", scale: 0.48), stroke: 0.65pt)
  content((3.56, 1.18), text(size: 8.5pt)[$s$], anchor: "west")

  // Quota L (lunghezza del cordone)
  line((2.55, 1.85), (5.55, 3.35), mark: (start: ">", end: ">", scale: 0.5), stroke: 0.65pt)
  content((3.90, 2.78), text(size: 8.5pt)[$L$], anchor: "south-east")

  // Richiamo alla sezione resistente tratteggiata
  content((6.95, 0.72), text(size: 7.2pt, fill: blue.darken(25%))[*Sezione resistente*\ $A_"res" = L dot s$], anchor: "center")
  line((6.10, 1.05), (4.68, 2.22), mark: (end: ">", scale: 0.5, fill: blue.darken(25%)), stroke: (paint: blue.darken(25%), thickness: 0.65pt))
})
