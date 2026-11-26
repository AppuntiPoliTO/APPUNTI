// Figura estratta da fatica.typ (riga 3960) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.8cm, {
  // BBox: x in [0.0, 10.0] (dx=10.0), y in [0.3, 8.6], length=0.8cm -> larghezza = 8.00 cm <= 8.2 cm
  import draw: *

  // --- PANNELLO A: Trattamento superficiale (~1 mm / tempra induzione) ---
  content((0.2, 8.35), anchor: "west", text(size: 7.3pt, weight: "bold")[A) Trattamento superficiale (\~1 mm / induzione)])

  // Sezione componente
  rect((0.4, 4.9), (5.4, 6.75), fill: black.transparentize(92%), stroke: (paint: black, thickness: 0.9pt))
  rect((0.4, 6.75), (5.4, 7.45), fill: blue.transparentize(82%), stroke: (paint: black, thickness: 1.0pt))

  content((2.9, 5.82), anchor: "center", text(size: 7pt)[Cuore tenace indeformato])
  content((2.9, 7.82), anchor: "center", text(size: 7pt)[Espansione impedita (+0.5%)])

  // Frecce compressione nello strato trattato
  line((0.7, 7.1), (1.7, 7.1), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.7))
  line((5.1, 7.1), (4.1, 7.1), stroke: (paint: blue, thickness: 1.0pt), mark: (end: ">", scale: 0.7))
  content((2.9, 7.1), anchor: "center", text(size: 7.2pt, fill: blue, weight: "bold")[$sigma_"res" < 0$])

  // Quota spessore ~1 mm e linea di proiezione interfaccia
  line((5.55, 6.75), (5.55, 7.45), stroke: (paint: black, thickness: 0.6pt), mark: (start: "triangle", end: "triangle", fill: white, scale: 0.42))
  content((5.72, 7.1), anchor: "west", text(size: 7pt)[\~1 mm])
  line((5.4, 6.75), (8.1, 6.75), stroke: (paint: black.transparentize(45%), dash: "dotted", thickness: 0.55pt))

  // Profilo qualitativo auto-equilibrato sigma_res(z)
  line((7.05, 7.45), (7.10, 6.95), (8.1, 6.75), (8.1, 7.45), close: true, fill: blue.transparentize(84%), stroke: none)
  line((8.1, 6.75), (8.48, 6.50), (8.25, 5.05), (8.1, 5.05), close: true, fill: red.transparentize(86%), stroke: none)
  line((8.1, 7.45), (8.1, 4.95), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
  line((6.8, 7.45), (9.6, 7.45), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
  line((7.05, 7.45), (7.10, 6.95), (8.1, 6.75), (8.48, 6.50), (8.25, 5.05), stroke: (paint: black, thickness: 1.1pt))

  content((7.3, 7.75), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
  content((8.7, 7.75), anchor: "center", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$+$])
  content((9.45, 7.75), anchor: "center", text(size: 7pt)[$sigma_"res"$])
  content((8.1, 4.72), anchor: "center", text(size: 7pt)[$z$])

  // Separatore orizzontale
  line((0.2, 4.35), (9.8, 4.35), stroke: (paint: black.transparentize(65%), dash: "dashed", thickness: 0.55pt))

  // --- PANNELLO B: Gradiente termico locale (saldatura / rettifica) ---
  content((0.2, 3.95), anchor: "west", text(size: 7.3pt, weight: "bold")[B) Gradiente termico locale (saldatura / rettifica)])

  // Piastra con ZTA centrale
  rect((0.4, 1.1), (5.4, 2.5), fill: black.transparentize(92%), stroke: (paint: black, thickness: 0.9pt))
  rect((2.1, 1.1), (3.7, 2.5), fill: red.transparentize(82%), stroke: (paint: red.transparentize(25%), dash: "dashed", thickness: 0.7pt))
  bezier((2.35, 2.5), (3.45, 2.5), (2.6, 2.95), (3.2, 2.95), stroke: (paint: red.transparentize(15%), thickness: 0.95pt))

  content((2.9, 1.8), anchor: "center", text(size: 7.2pt, weight: "bold")[ZTA])
  content((1.25, 1.8), anchor: "center", text(size: 7pt, fill: blue)[$sigma_"res" < 0$])
  content((4.55, 1.8), anchor: "center", text(size: 7pt, fill: blue)[$sigma_"res" < 0$])
  content((2.9, 3.35), anchor: "center", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$sigma_"res" > 0$])
  line((2.9, 3.16), (2.9, 2.82), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">", scale: 0.6))
  content((2.9, 0.55), anchor: "center", text(size: 7pt)[Raffreddamento differenziale vincolato])

  // Profilo qualitativo sigma_res(x)
  line((8.1, 0.7), (8.1, 3.1), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))
  line((6.4, 1.6), (9.7, 1.6), stroke: (paint: black, thickness: 0.7pt), mark: (end: ">", scale: 0.65))

  bezier((6.5, 1.6), (7.55, 1.6), (6.8, 1.05), (7.3, 1.05), stroke: (paint: blue, thickness: 1.1pt))
  bezier((7.55, 1.6), (8.65, 1.6), (7.85, 3.05), (8.35, 3.05), stroke: (paint: red.transparentize(10%), thickness: 1.1pt))
  bezier((8.65, 1.6), (9.65, 1.6), (8.9, 1.05), (9.4, 1.05), stroke: (paint: blue, thickness: 1.1pt))

  content((8.1, 3.35), anchor: "center", text(size: 7pt)[$sigma_"res"$])
  content((9.72, 1.78), anchor: "south-east", text(size: 7pt)[$x$])
  content((8.48, 2.75), anchor: "west", text(size: 7pt, fill: red.transparentize(10%), weight: "bold")[$+$])
  content((7.05, 0.88), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
  content((9.15, 0.88), anchor: "center", text(size: 7pt, fill: blue, weight: "bold")[$-$])
})
