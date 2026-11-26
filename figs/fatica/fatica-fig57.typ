// Figura estratta da fatica.typ (riga 3632) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.76cm, {
  import draw: *
  // BBox: x in [0.0, 9.8] (dx=9.8), y in [0.4, 6.6], length=0.76cm -> larghezza = 7.45 cm <= 8.2 cm

  // a) Micro-indentazione da pallinatura
  content((0.1, 6.45), anchor: "west", [#text(size: 7.3pt, weight: "bold")[a) Micro-indentazione superficiale]])

  // Substrato elastico
  rect((0.5, 3.65), (5.9, 4.42), fill: black.transparentize(90%), stroke: 0.85pt)
  content((3.2, 4.02), anchor: "center", [#text(size: 6.8pt)[Cuore elastico]])

  // Strato compresso con impronta centrale e bordi rialzati
  line(
    (0.5, 4.42), (0.5, 5.02), (2.35, 5.02), (2.60, 5.15),
    (2.90, 4.83), (3.20, 4.75), (3.50, 4.83), (3.80, 5.15),
    (4.05, 5.02), (5.9, 5.02), (5.9, 4.42), close: true,
    fill: blue.transparentize(82%), stroke: (paint: blue, thickness: 0.9pt),
  )

  // Frecce compressione laterale nello strato corticale
  line((0.85, 4.72), (1.85, 4.72), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.65))
  line((5.55, 4.72), (4.55, 4.72), stroke: (paint: blue, thickness: 0.9pt), mark: (end: ">", scale: 0.65))
  content((2.10, 4.72), anchor: "west", [#text(fill: blue, size: 6.8pt, weight: "bold")[$-$]])
  content((4.30, 4.72), anchor: "east", [#text(fill: blue, size: 6.8pt, weight: "bold")[$-$]])

  // Sferetta dura in impatto
  circle((3.2, 5.55), radius: 0.33, fill: black.transparentize(68%), stroke: 0.9pt)
  line((3.2, 6.28), (3.2, 5.92), stroke: 1.0pt, mark: (end: ">", scale: 0.7))
  content((3.38, 6.12), anchor: "west", [#text(size: 7pt)[$v$ (sferetta)]])

  // Richiamo bordo sollevato e quota h_pall
  line((4.65, 5.52), (3.86, 5.19), stroke: 0.55pt, mark: (end: ">", scale: 0.6))
  content((4.72, 5.55), anchor: "west", [#text(size: 6.6pt)[Bordo sollevato]])
  line((6.12, 4.42), (6.12, 5.02), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42))
  content((6.30, 4.72), anchor: "west", [#text(size: 6.8pt)[$h_"pall" approx 1 "mm"$]])
  content((6.30, 4.20), anchor: "west", [#text(fill: blue, size: 6.8pt, weight: "bold")[$sigma_"res" < 0$]])

  // Separatore
  line((0.1, 3.30), (9.6, 3.30), stroke: (dash: "dotted", thickness: 0.6pt))

  // b) Sistema provino Almen
  content((0.1, 2.96), anchor: "west", [#text(size: 7.3pt, weight: "bold")[b) Taratura con lamella Almen]])

  // Fase 1: Lamella vincolata sotto getto
  rect((0.45, 0.55), (3.65, 1.15), fill: black.transparentize(88%), stroke: 0.8pt)
  content((2.05, 0.85), anchor: "center", [#text(size: 6.5pt)[Afferraggio]])
  rect((0.70, 1.15), (3.40, 1.40), fill: blue.transparentize(80%), stroke: 0.8pt)
  rect((0.88, 1.40), (1.12, 1.52), fill: black.transparentize(65%), stroke: 0.6pt)
  rect((2.98, 1.40), (3.22, 1.52), fill: black.transparentize(65%), stroke: 0.6pt)

  // Ugello e getto di sferette
  rect((1.82, 2.30), (2.28, 2.65), fill: black.transparentize(78%), stroke: 0.75pt)
  line((1.90, 2.30), (1.50, 1.45), stroke: (dash: "dashed", thickness: 0.55pt))
  line((2.20, 2.30), (2.60, 1.45), stroke: (dash: "dashed", thickness: 0.55pt))
  line((2.05, 2.22), (2.05, 1.52), stroke: 0.7pt, mark: (end: ">", scale: 0.6))
  content((2.42, 2.48), anchor: "west", [#text(size: 6.6pt)[Getto]])

  // Freccia transizione
  line((3.90, 1.15), (4.55, 1.15), stroke: 0.8pt, mark: (end: ">", scale: 0.65))

  // Fase 2: Svincolo, incurvamento e misura freccia f
  rect((4.85, 0.45), (9.35, 0.68), fill: black.transparentize(88%), stroke: 0.75pt)
  circle((5.35, 0.80), radius: 0.12, fill: black.transparentize(70%), stroke: 0.7pt)
  circle((8.85, 0.80), radius: 0.12, fill: black.transparentize(70%), stroke: 0.7pt)

  // Corda di riferimento tratteggiata e lamella incurvata (picco intradosso y = 1.46)
  line((5.15, 0.92), (9.05, 0.92), stroke: (dash: "dotted", thickness: 0.55pt))
  bezier((5.05, 0.92), (9.15, 0.92), (6.35, 1.64), (7.85, 1.64), stroke: (paint: blue, thickness: 1.1pt))
  bezier((5.05, 1.12), (9.15, 1.12), (6.35, 1.84), (7.85, 1.84), stroke: (paint: blue, thickness: 1.1pt))
  line((5.05, 0.92), (5.05, 1.12), stroke: (paint: blue, thickness: 1.0pt))
  line((9.15, 0.92), (9.15, 1.12), stroke: (paint: blue, thickness: 1.0pt))

  // Comparatore e freccia d'arco f al centro dell'arco (pulita, zero sovrapposizioni)
  circle((7.10, 2.42), radius: 0.35, fill: white, stroke: 0.8pt)
  line((7.10, 2.42), (7.32, 2.59), stroke: (paint: red.transparentize(10%), thickness: 0.8pt))
  line((7.10, 2.07), (7.10, 1.69), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
  content((7.58, 2.42), anchor: "west", [#text(size: 6.6pt)[Comparatore]])

  line((7.10, 0.94), (7.10, 1.44), stroke: 0.6pt, mark: (start: ">", end: ">", scale: 0.45))
  content((7.25, 1.18), anchor: "west", [#text(size: 7pt)[$f$]])
})
