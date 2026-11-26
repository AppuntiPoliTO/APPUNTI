// Figura estratta da fatica.typ (riga 2198) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.0cm, {
  // BBox: x in [0.0, 7.8] (dx=7.8), y in [-0.7, 7.5], length=1.0cm -> larghezza = 7.8 cm <= 8.2 cm
  import draw: *

  // --- (a) Gola cilindrica in trazione ---
  content((3.90, 7.42), text(size: 8.5pt, weight: "bold")[(a) Gola cilindrica in trazione], anchor: "north")

  // Albero con gola (asse x = 1.65, y0 = 5.0)
  line((1.65, 3.25), (1.65, 6.75), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(110)))
  line((0.40, 6.65), (2.90, 6.65), stroke: 1.0pt)
  line((0.40, 3.35), (2.90, 3.35), stroke: 1.0pt)

  // Contorno sinistro con gola U (centro (0.68, 5.0), rho = 0.22 -> radice x = 0.90)
  line((0.40, 6.65), (0.40, 5.22), (0.68, 5.22), stroke: 1.0pt)
  arc((0.68, 5.0), start: 90deg, stop: -90deg, radius: 0.22, anchor: "origin", stroke: 1.0pt)
  line((0.68, 4.78), (0.40, 4.78), (0.40, 3.35), stroke: 1.0pt)

  // Contorno destro con gola U (centro (2.62, 5.0), rho = 0.22 -> radice x = 2.40)
  line((2.90, 6.65), (2.90, 5.22), (2.62, 5.22), stroke: 1.0pt)
  arc((2.62, 5.0), start: 90deg, stop: 270deg, radius: 0.22, anchor: "origin", stroke: 1.0pt)
  line((2.62, 4.78), (2.90, 4.78), (2.90, 3.35), stroke: 1.0pt)

  // Linee di flusso tensionali interne
  bezier((0.70, 6.50), (1.07, 5.00), (0.70, 5.65), (1.07, 5.40), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
  bezier((1.07, 5.00), (0.70, 3.50), (1.07, 4.60), (0.70, 4.35), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
  bezier((2.60, 6.50), (2.23, 5.00), (2.60, 5.65), (2.23, 5.40), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))
  bezier((2.23, 5.00), (2.60, 3.50), (2.23, 4.60), (2.60, 4.35), stroke: (dash: "dashed", thickness: 0.55pt, paint: rgb("#1f77b4")))

  // Carico P
  line((1.65, 6.65), (1.65, 7.05), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
  content((1.85, 6.88), text(size: 8pt)[$P$], anchor: "west")
  line((1.65, 3.35), (1.65, 2.95), stroke: 0.9pt, mark: (end: ">", scale: 0.6))
  content((1.85, 3.12), text(size: 8pt)[$P$], anchor: "west")

  // Sezione minima e quote a, rho (freccia rho entrante nel vano aperto della gola)
  line((0.90, 5.0), (2.40, 5.0), stroke: (dash: "dotted", thickness: 0.6pt))
  line((2.40, 5.0), (2.40, 4.10), stroke: (dash: "dotted", thickness: 0.5pt))
  line((1.65, 4.15), (2.40, 4.15), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
  content((2.03, 4.02), text(size: 7.5pt)[$a$], anchor: "north")
  line((0.26, 5.00), (0.88, 5.00), stroke: 0.55pt, mark: (end: ">", scale: 0.48))
  content((0.22, 5.00), text(size: 7.5pt)[$rho$], anchor: "east")

  // Grafico tensioni principali normalizzate (r in [0, a] -> x in [4.0, 6.6])
  line((4.0, 3.6), (7.10, 3.6), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
  line((4.0, 3.6), (4.0, 6.5), stroke: 0.75pt, mark: (end: ">", scale: 0.55))
  content((3.92, 6.52), text(size: 7.5pt)[$sigma / sigma_n$], anchor: "east")
  content((7.18, 3.60), text(size: 7.5pt)[$r$], anchor: "west")

  // Riferimento r = a e sigma_n = 1
  line((6.6, 3.6), (6.6, 6.30), stroke: (dash: "dotted", thickness: 0.6pt))
  content((6.6, 3.42), text(size: 7.5pt)[$a$], anchor: "north")
  line((4.0, 4.10), (6.6, 4.10), stroke: (dash: "dashed", thickness: 0.6pt, paint: luma(100)))

  // Tacche asse y (scala 0.5 cm/unità)
  for (val, yy) in (("1", 4.10), ("3", 5.10), ("5", 6.10)) {
    line((3.94, yy), (4.00, yy), stroke: 0.6pt)
    content((3.88, yy), text(size: 7pt)[#val], anchor: "east")
  }

  // Curve sigma_z/sigma_n, sigma_t/sigma_n, sigma_r/sigma_n
  bezier((4.0, 3.96), (6.6, 6.10), (5.8, 4.00), (6.4, 4.85), stroke: (paint: blue, thickness: 1.1pt))
  content((6.70, 6.10), text(size: 7.5pt, fill: blue)[$sigma_z / sigma_n$], anchor: "west")

  bezier((4.0, 3.82), (6.6, 4.35), (5.6, 3.86), (6.3, 4.08), stroke: (paint: red.transparentize(10%), thickness: 1.0pt))
  content((6.70, 4.42), text(size: 7.5pt, fill: red.transparentize(10%))[$sigma_t / sigma_n$], anchor: "west")
  content((6.70, 4.02), text(size: 7pt, fill: luma(80))[$sigma_n$], anchor: "west")

  bezier((4.0, 3.82), (6.2, 4.12), (4.9, 3.88), (5.7, 4.15), stroke: (paint: black, thickness: 0.9pt))
  bezier((6.2, 4.12), (6.6, 3.60), (6.45, 4.08), (6.58, 3.78), stroke: (paint: black, thickness: 0.9pt))
  line((5.25, 3.32), (5.50, 3.93), stroke: 0.55pt, mark: (end: ">", scale: 0.45))
  content((5.25, 3.28), text(size: 7.5pt)[$sigma_r / sigma_n$], anchor: "north")

  // Separatore
  line((0.2, 2.68), (7.5, 2.68), stroke: (thickness: 0.4pt, paint: luma(190)))

  // --- (b) Lastra intagliata in flessione ---
  content((3.90, 2.52), text(size: 8.5pt, weight: "bold")[(b) Lastra intagliata in flessione], anchor: "north")

  // Lastra con intagli semicircolari laterali (asse x = 1.65, y0 = 0.85, rho = 0.35 -> a = 0.65)
  line((1.65, -0.25), (1.65, 1.95), stroke: (dash: "dashed", thickness: 0.55pt, paint: luma(110)))
  line((0.65, 1.95), (2.65, 1.95), stroke: 1.0pt)
  line((0.65, -0.25), (2.65, -0.25), stroke: 1.0pt)
  line((0.65, 1.95), (0.65, 1.20), stroke: 1.0pt)
  arc((0.65, 0.85), start: 90deg, stop: -90deg, radius: 0.35, anchor: "origin", stroke: 1.0pt)
  line((0.65, 0.50), (0.65, -0.25), stroke: 1.0pt)
  line((2.65, 1.95), (2.65, 1.20), stroke: 1.0pt)
  arc((2.65, 0.85), start: 90deg, stop: 270deg, radius: 0.35, anchor: "origin", stroke: 1.0pt)
  line((2.65, 0.50), (2.65, -0.25), stroke: 1.0pt)

  // Momenti flettenti M (fibre destre +a tese, fibre sinistre -a compresse)
  arc((1.65, 1.98), start: 35deg, stop: 145deg, radius: (0.85, 0.24), anchor: "origin", stroke: 0.75pt, mark: (end: ">", scale: 0.5))
  content((0.88, 2.15), text(size: 7.5pt)[$M$], anchor: "east")
  arc((1.65, -0.28), start: 325deg, stop: 215deg, radius: (0.85, 0.24), anchor: "origin", stroke: 0.75pt, mark: (end: ">", scale: 0.5))
  content((0.88, -0.45), text(size: 7.5pt)[$M$], anchor: "east")

  // Sezione minima e quota a
  line((1.00, 0.85), (2.30, 0.85), stroke: (dash: "dotted", thickness: 0.6pt))
  line((2.30, 0.85), (2.30, 0.12), stroke: (dash: "dotted", thickness: 0.5pt))
  line((1.65, 0.16), (2.30, 0.16), stroke: 0.6pt, mark: (start: "triangle", end: "triangle", fill: white, scale: 0.5))
  content((1.98, 0.04), text(size: 7.5pt)[$a$], anchor: "north")

  // Profilo a farfalla distorto (x in [4.2, 6.7], centro x = 5.45, base y = 0.85)
  line((4.2, 0.85), (6.7, 0.85), stroke: 0.75pt)
  line((4.2, -0.25), (4.2, 1.95), stroke: (dash: "dotted", thickness: 0.55pt))
  line((5.45, 0.15), (5.45, 1.55), stroke: (dash: "dotted", thickness: 0.55pt))
  line((6.7, -0.25), (6.7, 1.95), stroke: (dash: "dotted", thickness: 0.55pt))

  // Farfalla nominale lineare
  line((4.2, 0.20), (6.7, 1.50), stroke: (dash: "dashed", thickness: 0.75pt, paint: luma(80)))
  content((6.78, 1.48), text(size: 7pt, fill: luma(80))[$sigma_n$], anchor: "west")

  // Profilo reale non lineare
  bezier((5.45, 0.85), (6.7, 1.92), (6.00, 1.12), (6.50, 1.42), stroke: (paint: blue, thickness: 1.1pt))
  bezier((5.45, 0.85), (4.2, -0.22), (4.90, 0.58), (4.40, 0.28), stroke: (paint: blue, thickness: 1.1pt))
  content((6.78, 1.92), text(size: 7.5pt, fill: blue)[$sigma_"max"$], anchor: "west")

  // Frecce tensione nella farfalla
  line((5.98, 0.85), (5.98, 1.15), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
  line((6.38, 0.85), (6.38, 1.45), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
  line((4.92, 0.85), (4.92, 0.55), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))
  line((4.52, 0.85), (4.52, 0.25), stroke: (paint: blue, thickness: 0.55pt), mark: (end: ">", scale: 0.42))

  content((4.10, 0.85), text(size: 7pt)[$-a$], anchor: "east")
  content((5.36, 0.98), text(size: 7pt)[$0$], anchor: "south-east")
  content((6.78, 0.85), text(size: 7pt)[$+a$], anchor: "west")
})
