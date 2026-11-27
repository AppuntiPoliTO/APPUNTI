// Figura estratta da fatica.typ (riga 1989) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.96cm, {
  // BBox: x in [0.0, 10.0] (dx=10.0), y in [0.15, 4.35], length=0.76cm -> larghezza = 7.60 cm <= 8.2 cm
  import draw: *

  // Carico alternato superiore
  line((3.2, 3.80), (6.8, 3.80), mark: (start: ">", end: ">", scale: 0.65), stroke: (thickness: 0.8pt))
  content((5.0, 3.98), text(size: 7pt, weight: "bold")[Carico alternato], anchor: "south")

  // Etichette dei tre meccanismi
  content((1.75, 2.88), align(center, text(size: 6.8pt, weight: "bold")[Creste e\ avvallamenti]), anchor: "south")
  content((5.00, 2.98), text(size: 6.8pt, weight: "bold")[Ondulazioni], anchor: "south")
  content((8.25, 2.88), align(center, text(size: 6.8pt, weight: "bold")[Estrusione\ a bande]), anchor: "south")

  // Fondo campito del materiale sottostante
  rect((0.3, 0.95), (9.7, 2.15), fill: black.transparentize(90%), stroke: none)
  for ix in range(0, 22) {
    let x0 = 0.4 + ix * 0.42
    line((x0, 0.95), (x0 + 0.35, 1.65), stroke: (paint: black.transparentize(68%), thickness: 0.45pt))
  }
  line((0.3, 0.95), (9.7, 0.95), stroke: (thickness: 0.65pt))

  // Separatori verticali tra i tre regimi
  line((3.35, 0.95), (3.35, 2.80), stroke: (paint: black.transparentize(55%), dash: "dotted", thickness: 0.55pt))
  line((6.70, 0.95), (6.70, 2.80), stroke: (paint: black.transparentize(55%), dash: "dotted", thickness: 0.55pt))

  // 1) Creste e avvallamenti (ridge and groove)
  line(
    (0.30, 2.15), (0.70, 2.15), (1.02, 2.58), (1.34, 1.92),
    (1.68, 2.66), (2.00, 1.88), (2.34, 2.56), (2.66, 2.15), (3.70, 2.15),
    stroke: (thickness: 1.05pt),
  )

  // 2) Ondulazioni (undulations) con bezier raccordate (1.333 * A)
  bezier((3.70, 2.15), (4.35, 2.15), (3.91, 2.483), (4.14, 2.483), stroke: (thickness: 1.05pt))
  bezier((4.35, 2.15), (5.00, 2.15), (4.56, 1.817), (4.79, 1.817), stroke: (thickness: 1.05pt))
  bezier((5.00, 2.15), (5.65, 2.15), (5.21, 2.483), (5.44, 2.483), stroke: (thickness: 1.05pt))
  bezier((5.65, 2.15), (6.30, 2.15), (5.86, 1.817), (6.09, 1.817), stroke: (thickness: 1.05pt))

  // 3) Estrusione a bande di scorrimento (slipband extrusion)
  line(
    (6.30, 2.15), (7.30, 2.15), (7.55, 1.92), (8.05, 2.62),
    (8.18, 2.50), (7.86, 2.06), (8.28, 2.60), (8.40, 2.48),
    (8.16, 2.15), (9.70, 2.15),
    stroke: (thickness: 1.05pt),
  )
  // Piani di scorrimento e micro-vuoti coalescenti interni
  line((7.15, 1.35), (7.55, 1.92), stroke: (paint: black.transparentize(35%), dash: "dashed", thickness: 0.55pt))
  line((7.56, 1.48), (7.86, 2.06), stroke: (paint: black.transparentize(35%), dash: "dashed", thickness: 0.55pt))
  circle((7.34, 1.62), radius: 0.045, fill: white, stroke: (thickness: 0.6pt))
  circle((7.25, 1.49), radius: 0.042, fill: white, stroke: (thickness: 0.6pt))

  // Punti critici di innesco
  circle((2.00, 1.88), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
  circle((4.675, 1.90), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
  circle((7.55, 1.92), radius: 0.16, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))

  // Legenda inferiore
  circle((2.65, 0.45), radius: 0.13, stroke: (paint: red, thickness: 1.0pt), fill: red.transparentize(80%))
  content((2.92, 0.45), text(size: 6.8pt)[Sito di innesco della micro-cricca], anchor: "west")
})
