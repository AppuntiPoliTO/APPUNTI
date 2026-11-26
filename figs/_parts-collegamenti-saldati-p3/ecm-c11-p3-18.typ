#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 1cm, {
  import draw: *

  // Piastra orizzontale principale con bordi frastagliati
  line((1.45, 1.60), (8.35, 1.60), stroke: 1.0pt)
  line((1.45, 0.20), (8.35, 0.20), stroke: 1.0pt)
  line((1.45, 1.60), (1.30, 1.32), (1.58, 1.02), (1.35, 0.72), (1.58, 0.45), (1.45, 0.20), stroke: 0.7pt)
  line((8.35, 1.60), (8.20, 1.32), (8.48, 1.02), (8.25, 0.72), (8.48, 0.45), (8.35, 0.20), stroke: 0.7pt)

  // Frecce di trazione ai lati della piastra
  line((1.15, 0.90), (0.35, 0.90), mark: (end: ">", fill: black), stroke: 1.4pt)
  line((8.65, 0.90), (9.45, 0.90), mark: (end: ">", fill: black), stroke: 1.4pt)

  // Quota spessore t
  line((8.60, 1.60), (9.10, 1.60), stroke: 0.55pt)
  line((8.60, 0.20), (9.10, 0.20), stroke: 0.55pt)
  line((8.85, 0.20), (8.85, 1.60), mark: (start: ">", end: ">", fill: black), stroke: 0.55pt)
  content((9.00, 1.25), text(size: 8.5pt, weight: "bold")[$t$], anchor: "west")

  // Irrigidimento verticale e cordoni d'angolo neri
  line((2.40, 1.60), (2.40, 4.65), stroke: 1.0pt)
  line((3.40, 1.60), (3.40, 4.65), stroke: 1.0pt)
  line((2.40, 4.65), (2.56, 4.74), (2.74, 4.58), (2.92, 4.74), (3.10, 4.58), (3.26, 4.72), (3.40, 4.65), stroke: 0.7pt)
  line((1.75, 1.60), (2.40, 1.60), (2.40, 2.35), close: true, fill: black, stroke: none)
  line((3.40, 1.60), (4.05, 1.60), (3.40, 2.35), close: true, fill: black, stroke: none)

  // Profilo non lineare interno alla piastra al piede del cordone
  bezier((2.70, 1.60), (4.25, 0.20), (4.10, 1.50), (4.50, 0.80), stroke: 0.7pt)

  // Sezione 1 (piede del cordone): distribuzione linearizzata rossa
  line((4.05, 0.20), (4.05, 1.60), (3.40, 1.60), (3.80, 0.20), close: true, stroke: (paint: red, thickness: 1.0pt))
  line((3.76, 0.35), (3.92, 0.20), stroke: (paint: red, thickness: 0.55pt))
  line((3.71, 0.52), (4.05, 0.20), stroke: (paint: red, thickness: 0.55pt))
  line((3.66, 0.69), (4.05, 0.32), stroke: (paint: red, thickness: 0.55pt))
  line((3.61, 0.86), (4.05, 0.45), stroke: (paint: red, thickness: 0.55pt))
  line((3.56, 1.03), (4.05, 0.58), stroke: (paint: red, thickness: 0.55pt))
  line((3.51, 1.20), (4.05, 0.72), stroke: (paint: red, thickness: 0.55pt))
  line((3.46, 1.37), (4.05, 0.86), stroke: (paint: red, thickness: 0.55pt))
  line((3.41, 1.54), (4.05, 1.00), stroke: (paint: red, thickness: 0.55pt))
  line((3.52, 1.60), (4.05, 1.14), stroke: (paint: red, thickness: 0.55pt))
  line((3.68, 1.60), (4.05, 1.28), stroke: (paint: red, thickness: 0.55pt))
  line((3.84, 1.60), (4.05, 1.42), stroke: (paint: red, thickness: 0.55pt))

  // Sezione 2 (x = 4.80)
  line((4.80, 0.20), (4.80, 1.60), stroke: 0.8pt)
  bezier((4.25, 1.60), (4.65, 0.20), (4.55, 1.20), (4.63, 0.60), stroke: 0.8pt)
  line((4.63, 0.35), (4.80, 0.35), stroke: 0.45pt)
  line((4.61, 0.50), (4.80, 0.50), stroke: 0.45pt)
  line((4.59, 0.65), (4.80, 0.65), stroke: 0.45pt)
  line((4.56, 0.80), (4.80, 0.80), stroke: 0.45pt)
  line((4.52, 0.95), (4.80, 0.95), stroke: 0.45pt)
  line((4.48, 1.10), (4.80, 1.10), stroke: 0.45pt)
  line((4.42, 1.25), (4.80, 1.25), stroke: 0.45pt)
  line((4.35, 1.40), (4.80, 1.40), stroke: 0.45pt)
  line((4.27, 1.54), (4.80, 1.54), stroke: 0.45pt)

  // Sezione 3 (x = 5.75)
  line((5.75, 0.20), (5.75, 1.60), stroke: 0.8pt)
  line((5.52, 0.20), (5.33, 1.60), stroke: 0.8pt)
  line((5.50, 0.35), (5.75, 0.35), stroke: 0.45pt)
  line((5.48, 0.50), (5.75, 0.50), stroke: 0.45pt)
  line((5.46, 0.65), (5.75, 0.65), stroke: 0.45pt)
  line((5.44, 0.80), (5.75, 0.80), stroke: 0.45pt)
  line((5.42, 0.95), (5.75, 0.95), stroke: 0.45pt)
  line((5.40, 1.10), (5.75, 1.10), stroke: 0.45pt)
  line((5.38, 1.25), (5.75, 1.25), stroke: 0.45pt)
  line((5.36, 1.40), (5.75, 1.40), stroke: 0.45pt)
  line((5.34, 1.54), (5.75, 1.54), stroke: 0.45pt)

  // Sezione 4 (x = 6.55, regione nominale)
  line((6.55, 0.20), (6.55, 1.60), stroke: 0.8pt)
  line((6.20, 0.20), (6.20, 1.60), stroke: 0.8pt)
  line((6.20, 0.35), (6.55, 0.35), stroke: 0.45pt)
  line((6.20, 0.50), (6.55, 0.50), stroke: 0.45pt)
  line((6.20, 0.65), (6.55, 0.65), stroke: 0.45pt)
  line((6.20, 0.80), (6.55, 0.80), stroke: 0.45pt)
  line((6.20, 0.95), (6.55, 0.95), stroke: 0.45pt)
  line((6.20, 1.10), (6.55, 1.10), stroke: 0.45pt)
  line((6.20, 1.25), (6.55, 1.25), stroke: 0.45pt)
  line((6.20, 1.40), (6.55, 1.40), stroke: 0.45pt)
  line((6.20, 1.54), (6.55, 1.54), stroke: 0.45pt)

  // Sezione 5 (x = 7.75, regione nominale)
  line((7.75, 0.20), (7.75, 1.60), stroke: 0.8pt)
  line((7.40, 0.20), (7.40, 1.60), stroke: 0.8pt)
  line((7.40, 0.35), (7.75, 0.35), stroke: 0.45pt)
  line((7.40, 0.50), (7.75, 0.50), stroke: 0.45pt)
  line((7.40, 0.65), (7.75, 0.65), stroke: 0.45pt)
  line((7.40, 0.80), (7.75, 0.80), stroke: 0.45pt)
  line((7.40, 0.95), (7.75, 0.95), stroke: 0.45pt)
  line((7.40, 1.10), (7.75, 1.10), stroke: 0.45pt)
  line((7.40, 1.25), (7.75, 1.25), stroke: 0.45pt)
  line((7.40, 1.40), (7.75, 1.40), stroke: 0.45pt)
  line((7.40, 1.54), (7.75, 1.54), stroke: 0.45pt)

  // Archi tratteggiati di proiezione e linee verticali tratteggiate
  line((4.05, 1.60), (4.05, 4.95), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((4.05, 1.60), start: 90deg, stop: 180deg, radius: (1.65, 2.70), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))
  arc((4.05, 1.60), start: 90deg, stop: 180deg, radius: (0.65, 0.92), anchor: "origin", stroke: (dash: "dashed", paint: red, thickness: 0.75pt))

  line((4.80, 1.60), (4.80, 2.34), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((4.80, 1.60), start: 90deg, stop: 180deg, radius: (0.55, 0.74), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((5.75, 1.60), (5.75, 2.11), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((5.75, 1.60), start: 90deg, stop: 180deg, radius: (0.42, 0.51), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((6.55, 1.60), (6.55, 2.02), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((6.55, 1.60), start: 90deg, stop: 180deg, radius: (0.35, 0.42), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  line((7.75, 1.60), (7.75, 2.02), stroke: (dash: "dashed", thickness: 0.65pt))
  arc((7.75, 1.60), start: 90deg, stop: 180deg, radius: (0.35, 0.42), anchor: "origin", stroke: (dash: "dashed", thickness: 0.65pt))

  // Curva della tensione totale e retta di estrapolazione hot spot
  bezier((4.05, 4.30), (4.80, 2.34), (4.05, 2.85), (4.35, 2.50), stroke: 1.0pt)
  bezier((4.80, 2.34), (6.30, 2.02), (5.25, 2.23), (5.85, 2.02), stroke: 1.0pt)
  line((6.30, 2.02), (8.35, 2.02), stroke: 1.0pt)

  line((4.05, 2.52), (6.05, 2.04), stroke: (paint: red, thickness: 0.9pt))

  // Punti notevoli
  circle((4.05, 4.30), radius: 0.045, fill: red, stroke: none)
  circle((4.05, 2.52), radius: 0.045, fill: red, stroke: none)
  circle((4.80, 2.34), radius: 0.04, fill: black, stroke: none)
  circle((5.75, 2.11), radius: 0.04, fill: black, stroke: none)

  // Regioni e quote superiori
  line((4.80, 2.34), (4.80, 3.30), stroke: 0.6pt)
  line((6.25, 2.45), (6.25, 3.30), stroke: 0.6pt)
  line((4.80, 2.75), (6.25, 2.75), mark: (start: ">", end: ">", fill: black), stroke: 0.6pt)
  line((8.20, 2.75), (6.25, 2.75), mark: (end: ">", fill: black), stroke: 0.6pt)

  content((5.52, 3.05), text(size: 8pt, weight: "bold")[Structural \ stress region])
  content((7.25, 3.05), text(size: 8pt, weight: "bold")[Nominal \ stress region])

  // Richiami per Notch stress e Hot spot stress
  line((4.85, 4.75), (4.60, 4.75), (4.10, 4.34), mark: (end: ">", fill: black), stroke: 0.6pt)
  content((4.92, 4.75), text(size: 8.5pt, weight: "bold")[Notch stress (non-linear stress peak)], anchor: "west")

  line((4.85, 3.85), (4.60, 3.85), (4.09, 2.58), mark: (end: ">", fill: black), stroke: 0.6pt)
  content((4.92, 3.85), text(size: 8.5pt, weight: "bold")[Hot spot stress], anchor: "west")
})
