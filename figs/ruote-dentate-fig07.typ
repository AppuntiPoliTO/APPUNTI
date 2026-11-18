// Figura estratta da ruote dentate.typ (riga 826) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. CIRCONFERENZE DI RIFERIMENTO (archi sottili, centro (0, -18.0))
  // Circonferenza di testa (R_a = 20.04)
  arc((0, -18.0), start: 81.1deg, stop: 103.6deg, radius: 20.04, anchor: "origin", stroke: 0.4pt)

  // Circonferenza primitiva (R_p = 19.15)
  arc((0, -18.0), start: 80.7deg, stop: 104.3deg, radius: 19.15, anchor: "origin", stroke: 0.4pt)

  // Circonferenza di piede (R_f = 18.00)
  arc((0, -18.0), start: 80.7deg, stop: 105.2deg, radius: 18.00, anchor: "origin", stroke: 0.4pt)

  // 2. PROFILO INGRASSATO DEI DUE DENTI (stroke: 1.2pt)
  // Dente 1 (sinistra): raccordo sinistro -> fianco sinistro -> smusso -> testa -> smusso -> fianco destro
  bezier((-4.36, -0.54), (-3.85, -0.05), (-4.10, -0.45), (-3.92, -0.30), stroke: 1.2pt)
  bezier((-3.85, -0.05), (-3.55, 1.60), (-3.80, 0.50), (-3.72, 1.10), stroke: 1.2pt)
  line((-3.55, 1.60), (-3.46, 1.74), (-2.81, 1.84), (-2.70, 1.72), stroke: 1.2pt)
  bezier((-2.70, 1.72), (-1.92, 0.25), (-2.42, 1.32), (-2.12, 0.78), stroke: 1.2pt)

  // Vano centrale (raccordo sul fondo a R_f = 18.00)
  bezier((-1.92, 0.25), (-1.02, 0.32), (-1.75, -0.15), (-1.18, -0.12), stroke: 1.2pt)

  // Dente 2 (destra): fianco sinistro -> smusso -> testa -> smusso -> fianco destro -> raccordo destro
  bezier((-1.02, 0.32), (-0.43, 1.92), (-0.88, 0.85), (-0.68, 1.45), stroke: 1.2pt)
  line((-0.43, 1.92), (-0.33, 2.04), (0.33, 2.04), (0.43, 1.92), stroke: 1.2pt)
  bezier((0.43, 1.92), (1.02, 0.32), (0.68, 1.45), (0.88, 0.85), stroke: 1.2pt)
  bezier((1.02, 0.32), (1.60, -0.07), (1.14, 0.02), (1.35, -0.05), stroke: 1.2pt)

  // 3. QUOTE E FRECCE (stroke: 0.5pt)
  // Frecce per la quota "e" (larghezza del vano lungo la circonferenza primitiva)
  line((-1.95, 1.057), (-2.251, 1.017), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((-1.05, 1.116), (-0.752, 1.135), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Frecce per la quota "s" (spessore del dente lungo la circonferenza primitiva)
  line((-0.45, 1.146), (-0.752, 1.135), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((0.45, 1.146), (0.752, 1.135), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Linee di estensione verticali e arco per la quota "p" (passo circolare)
  line((-2.251, 1.017), (-2.251, 0.22), stroke: 0.5pt)
  line((0.752, 1.135), (0.752, 0.32), stroke: 0.5pt)
  arc((0, -18.0), start: 87.67deg, stop: 96.98deg, radius: 18.50, anchor: "origin", stroke: 0.5pt)
  line((-1.95, 0.40), (-2.251, 0.363), mark: (end: ">", fill: black), stroke: 0.5pt)
  line((0.45, 0.495), (0.752, 0.485), mark: (end: ">", fill: black), stroke: 0.5pt)

  // Quota "a" (addendum, lungo il raggio a 83.5deg)
  line((2.168, 1.027), (2.268, 1.911), mark: (start: ">", end: ">", fill: black), stroke: 0.5pt)

  // Quota "d" (dedendum, lungo il raggio a 83.5deg)
  line((2.037, -0.116), (2.168, 1.027), mark: (start: ">", end: ">", fill: black), stroke: 0.5pt)

  // 4. ETICHETTE (tutte con text(size: 7pt))
  content((-1.50, 1.38), text(size: 7pt)[e], anchor: "center")
  content((0.00, 1.38), text(size: 7pt)[s], anchor: "center")
  content((-0.15, 0.25), text(size: 7pt)[p], anchor: "center")
  content((2.58, 1.50), text(size: 7pt)[a], anchor: "center")
  content((2.48, 0.50), text(size: 7pt)[d], anchor: "center")
})
