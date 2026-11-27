// Figura estratta da fatica.typ (riga 1084) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#let circ = sym.degree
#let circ = sym.degree

#canvas(length: 0.95cm, {
  import draw: *
  // BBox: x in [-5.1, 6.8] (dx=11.9), y in [-5.0, 6.4], length=0.95cm -> larghezza = 11.31 cm <= 11.5 cm

  // Poligono di sicurezza campito
  line(
    (-4.0, -4.0),
    (-2.2, -0.4),
    (0.0, 1.8),
    (3.3, 4.0),
    (4.0, 4.0),
    (3.3, 2.6),
    (0.0, -1.8),
    (-2.2, -4.0),
    close: true,
    fill: black.transparentize(90%),
    stroke: none,
  )

  // Assi principali
  line((-5.0, 0.0), (6.2, 0.0), stroke: 0.75pt, mark: (end: ">"))
  line((0.0, -4.8), (0.0, 5.8), stroke: 0.75pt, mark: (end: ">"))
  content((6.3, 0.0), anchor: "west")[#text(size: 8.5pt)[$sigma_m$]]
  content((0.0, 5.9), anchor: "south")[#text(size: 8.5pt)[$sigma_"max", sigma_"min"$]]

  // Bisettrice a 45 gradi, arco angolo e prolungamenti costruzione Goodman
  line((-4.5, -4.5), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((0.0, 0.0), start: -180deg, stop: -135deg, radius: 1.05, anchor: "origin", stroke: 0.55pt)
  content((-1.22, -0.44), anchor: "east")[#text(size: 7.5pt)[$45^circ$]]

  line((3.3, 4.0), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.6pt))
  line((3.3, 2.6), (5.4, 5.4), stroke: (dash: "dashed", thickness: 0.6pt))
  circle((5.4, 5.4), radius: 0.06, fill: black)
  content((5.55, 5.4), anchor: "west")[#text(size: 8pt)[$(R_m, R_m)$]]

  // Linee di costruzione snervamento e proiezioni
  line((0.0, 4.0), (3.3, 4.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((3.3, 4.0), (3.3, 2.6), stroke: (dash: "dashed", thickness: 0.6pt))
  line((4.0, 4.0), (4.0, 0.0), stroke: (dash: "dotted", thickness: 0.6pt))
  line((0.0, -4.0), (-2.2, -4.0), stroke: (dash: "dashed", thickness: 0.6pt))
  line((-2.2, -4.0), (-2.2, -0.4), stroke: (dash: "dashed", thickness: 0.6pt))

  // Contorno poligono di sicurezza in tratto marcato
  line(
    (-4.0, -4.0),
    (-2.2, -0.4),
    (0.0, 1.8),
    (3.3, 4.0),
    (4.0, 4.0),
    (3.3, 2.6),
    (0.0, -1.8),
    (-2.2, -4.0),
    close: true,
    stroke: 1.15pt,
  )

  // Punti notevoli A, B e quote assi (senza collisioni con linee di costruzione)
  circle((3.3, 2.6), radius: 0.055, fill: black)
  content((3.45, 2.45), anchor: "north-west")[#text(size: 8pt)[$A$]]
  circle((4.0, 4.0), radius: 0.055, fill: black)
  content((4.55, 3.75), anchor: "west")[#text(size: 8pt)[$B$]]
  line((4.50, 3.77), (4.08, 3.96), stroke: 0.55pt, mark: (end: ">", scale: 0.5))

  content((-0.15, 4.0), anchor: "east")[#text(size: 8pt)[$R_"eH"$]]
  content((-0.12, 1.92), anchor: "south-east")[#text(size: 8pt)[$+sigma_(D-1)$]]
  content((0.15, -1.85), anchor: "west")[#text(size: 8pt)[$-sigma_(D-1)$]]
  content((0.15, -4.0), anchor: "west")[#text(size: 8pt)[$-R_"eH"$]]
  content((4.0, -0.15), anchor: "north")[#text(size: 8pt)[$R_"eH"$]]

  // Ciclo 1: sicuro (blu) con indicazioni manubrio
  line((1.65, 0.90), (1.65, 2.40), stroke: (paint: blue, thickness: 1.4pt))
  line((1.65, 0.90), (1.65, 0.0), stroke: (dash: "dotted", paint: blue, thickness: 0.6pt))
  circle((1.65, 2.40), radius: 0.055, fill: blue, stroke: blue)
  circle((1.65, 1.65), radius: 0.055, fill: white, stroke: (paint: blue, thickness: 0.9pt))
  circle((1.65, 0.90), radius: 0.055, fill: blue, stroke: blue)
  content((1.52, 2.34), anchor: "east")[#text(size: 7pt, fill: blue)[$sigma_"max"$]]
  content((1.52, 0.86), anchor: "east")[#text(size: 7pt, fill: blue)[$sigma_"min"$]]
  content((1.65, -0.15), anchor: "north")[#text(size: 7.5pt, fill: blue)[$sigma_(m,1)$]]

  // Ciclo 2: uscente (rosso)
  line((2.65, 1.30), (2.65, 4.00), stroke: (paint: red.transparentize(10%), thickness: 1.4pt))
  line((2.65, 1.30), (2.65, 0.0), stroke: (dash: "dotted", paint: red.transparentize(10%), thickness: 0.6pt))
  circle((2.65, 4.00), radius: 0.055, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  circle((2.65, 2.65), radius: 0.055, fill: white, stroke: (paint: red.transparentize(10%), thickness: 0.9pt))
  circle((2.65, 1.30), radius: 0.055, fill: red.transparentize(10%), stroke: red.transparentize(10%))
  content((2.65, -0.15), anchor: "north")[#text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_(m,2)$]]

  // Legenda compatta in alto a sinistra
  content((-4.7, 5.2), anchor: "north-west")[#text(size: 7.5pt, fill: blue, weight: "bold")[Ciclo 1: sicuro]]
  content((-4.7, 4.6), anchor: "north-west")[#text(size: 7.5pt, fill: red.transparentize(10%), weight: "bold")[Ciclo 2: uscente]]
})
