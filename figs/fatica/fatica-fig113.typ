// Figura estratta da fatica.typ (riga 4284) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.1cm, {
  // BBox: x in [-0.9, 6.8] (dx=7.7), y in [-0.85, 4.70], length=1.0cm -> larghezza = 7.70 cm <= 8.2 cm
  import draw: line, circle, arc, content

  // Griglia leggera (passo 100 MPa = 1.0 unità)
  for gx in (1, 2, 3, 4, 5, 6) {
    line((gx, 0), (gx, 4.25), stroke: (paint: black.transparentize(88%), thickness: 0.45pt, dash: "dotted"))
    line((gx, -0.07), (gx, 0.07), stroke: 0.6pt)
    content((gx, -0.14), anchor: "north", text(size: 7pt)[#(gx * 100)])
  }
  for gy in (1, 2, 3, 4) {
    line((0, gy), (6.25, gy), stroke: (paint: black.transparentize(88%), thickness: 0.45pt, dash: "dotted"))
    line((-0.07, gy), (0.07, gy), stroke: 0.6pt)
    content((-0.14, gy), anchor: "east", text(size: 7pt)[#(gy * 100)])
  }
  content((-0.12, -0.14), anchor: "north-east", text(size: 7pt)[0])

  // Campitura regione di sicurezza (interna a C 15)
  arc((0, 0), start: 0deg, stop: 90deg, radius: (2.5, 1.5), anchor: "origin", mode: "PIE", fill: black.transparentize(88%), stroke: none)

  // Assi cartesiani
  line((-0.15, 0), (6.55, 0), mark: (end: ">", scale: 0.65), stroke: 0.8pt)
  line((0, -0.15), (0, 4.55), mark: (end: ">", scale: 0.65), stroke: 0.8pt)
  content((3.25, -0.52), anchor: "north", text(size: 8pt)[$sigma_a " (MPa)"$])
  content((0.15, 4.50), anchor: "west", text(size: 8pt)[$tau_a " (MPa)"$])

  // Curve ellittiche limite
  arc((0, 0), start: 0deg, stop: 90deg, radius: (2.5, 1.5), anchor: "origin", stroke: (paint: blue, thickness: 1.15pt))
  arc((0, 0), start: 0deg, stop: 90deg, radius: (5.5, 3.3), anchor: "origin", stroke: (paint: red.transparentize(10%), thickness: 1.15pt))

  // Punti sperimentali schematici
  for pt in ((0.35, 1.52), (0.95, 1.38), (1.55, 1.14), (2.10, 0.85), (2.42, 0.35)) {
    circle(pt, radius: 0.045, fill: black, stroke: none)
  }
  for pt in ((0.50, 3.34), (1.60, 3.10), (2.75, 2.92), (4.15, 2.12), (4.95, 1.38), (5.38, 0.60)) {
    circle(pt, radius: 0.045, fill: black, stroke: none)
  }

  // Etichette curve e regione sicura
  content((0.52, 0.52), anchor: "center", text(size: 6.5pt, fill: luma(55))[Regione \ sicura])
  line((2.82, 1.25), (1.98, 0.92), mark: (end: ">", scale: 0.5, fill: blue), stroke: (paint: blue, thickness: 0.6pt))
  content((2.86, 1.25), anchor: "west", text(size: 7pt, fill: blue)[C 15 \ $R_m = 425$ MPa])

  line((4.18, 3.40), (3.78, 2.40), mark: (end: ">", scale: 0.5, fill: red.transparentize(10%)), stroke: (paint: red.transparentize(10%), thickness: 0.6pt))
  content((4.22, 3.45), anchor: "west", text(size: 7pt, fill: red.transparentize(10%))[30 Ni Cr Mo 12 \ $R_m = 900$ MPa])

  // Punto limite e punto insicuro
  circle((2.20, 3.02), radius: 0.065, fill: white, stroke: (paint: rgb("#c25e00"), thickness: 1.1pt))
  line((2.62, 3.55), (2.25, 3.09), mark: (end: ">", scale: 0.5, fill: rgb("#c25e00")), stroke: (paint: rgb("#c25e00"), thickness: 0.6pt))
  content((2.65, 3.58), anchor: "south", text(size: 6.8pt, fill: rgb("#c25e00"))[Limite])

  circle((5.30, 2.60), radius: 0.06, fill: red.transparentize(10%), stroke: none)
  content((5.42, 2.60), anchor: "west", text(size: 6.8pt, fill: red.transparentize(10%))[Insicuro])
})
