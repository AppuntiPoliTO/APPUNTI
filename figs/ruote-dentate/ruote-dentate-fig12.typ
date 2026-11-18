// Figura estratta da ruote dentate.typ (riga 1708) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // 1. CAMPITURA A LINEE VERTICALI NELLA SEZIONE (passo 0.22 cm, da x = -3.08 a x = 3.08)
  // Zona fondo sinistro
  line((-3.08, 0.00), (-3.08, 0.65), stroke: 0.45pt)
  line((-2.86, 0.00), (-2.86, 0.65), stroke: 0.45pt)

  // Dente 1 (tra -2.70 e -1.30)
  line((-2.64, 0.00), (-2.64, 0.82), stroke: 0.45pt)
  line((-2.42, 0.00), (-2.42, 1.43), stroke: 0.45pt)
  line((-2.20, 0.00), (-2.20, 1.65), stroke: 0.45pt)
  line((-1.98, 0.00), (-1.98, 1.65), stroke: 0.45pt)
  line((-1.76, 0.00), (-1.76, 1.65), stroke: 0.45pt)
  line((-1.54, 0.00), (-1.54, 1.32), stroke: 0.45pt)
  line((-1.32, 0.00), (-1.32, 0.71), stroke: 0.45pt)

  // Vano 1 (tra -1.30 e -0.70)
  line((-1.10, 0.00), (-1.10, 0.65), stroke: 0.45pt)
  line((-0.88, 0.00), (-0.88, 0.65), stroke: 0.45pt)

  // Dente 2 (tra -0.70 e 0.70)
  line((-0.66, 0.00), (-0.66, 0.76), stroke: 0.45pt)
  line((-0.44, 0.00), (-0.44, 1.37), stroke: 0.45pt)
  line((-0.22, 0.00), (-0.22, 1.65), stroke: 0.45pt)
  line((0.00, 0.00), (0.00, 1.65), stroke: 0.45pt)
  line((0.22, 0.00), (0.22, 1.65), stroke: 0.45pt)
  line((0.44, 0.00), (0.44, 1.37), stroke: 0.45pt)
  line((0.66, 0.00), (0.66, 0.76), stroke: 0.45pt)

  // Vano 2 (tra 0.70 e 1.30)
  line((0.88, 0.00), (0.88, 0.65), stroke: 0.45pt)
  line((1.10, 0.00), (1.10, 0.65), stroke: 0.45pt)

  // Dente 3 (tra 1.30 e 2.70)
  line((1.32, 0.00), (1.32, 0.71), stroke: 0.45pt)
  line((1.54, 0.00), (1.54, 1.32), stroke: 0.45pt)
  line((1.76, 0.00), (1.76, 1.65), stroke: 0.45pt)
  line((1.98, 0.00), (1.98, 1.65), stroke: 0.45pt)
  line((2.20, 0.00), (2.20, 1.65), stroke: 0.45pt)
  line((2.42, 0.00), (2.42, 1.43), stroke: 0.45pt)
  line((2.64, 0.00), (2.64, 0.82), stroke: 0.45pt)

  // Zona fondo destro
  line((2.86, 0.00), (2.86, 0.65), stroke: 0.45pt)
  line((3.08, 0.00), (3.08, 0.65), stroke: 0.45pt)

  // 2. CONTORNO SUPERIORE DEI TRE DENTI E BASE INFERIORE (stroke: 1.3pt)
  line(
    (-3.20, 0.65),
    (-2.70, 0.65), (-2.34, 1.65), (-1.66, 1.65), (-1.30, 0.65),
    (-0.70, 0.65), (-0.34, 1.65), (0.34, 1.65), (0.70, 0.65),
    (1.30, 0.65), (1.66, 1.65), (2.34, 1.65), (2.70, 0.65),
    (3.20, 0.65),
    stroke: 1.3pt
  )

  // Bordo inferiore spesso
  line((-3.20, 0.00), (3.20, 0.00), stroke: 1.5pt)

  // 3. LINEA PRIMITIVA ORIZZONTALE MOLTO SPESSA (tratto-punto a y = 1.15, stroke: 2.2pt)
  line((-3.20, 1.15), (-0.28, 1.15), stroke: 2.2pt)
  line((-0.14, 1.15), (0.14, 1.15), stroke: 2.2pt)
  line((0.28, 1.15), (3.20, 1.15), stroke: 2.2pt)

  // 4. QUOTA DELL'ANGOLO DI PRESSIONE TRASVERSALE phi_t
  // Linea verticale di riferimento (in x = -0.52)
  line((-0.52, 1.35), (-0.52, 3.25), stroke: 0.55pt)

  // Linea obliqua di riferimento (prolungamento del fianco sinistro del Dente 2, a 70deg)
  line((-0.30, 1.76), (0.20, 3.13), stroke: 0.55pt)

  // Archi con frecce (centro in (-0.52, 1.15), raggio R = 1.80)
  arc((-0.52, 1.15), start: 90deg, stop: 108deg, radius: 1.80, anchor: "origin", mark: (start: ">", fill: black), stroke: 0.55pt)
  arc((-0.52, 1.15), start: 52deg, stop: 70deg, radius: 1.80, anchor: "origin", mark: (end: ">", fill: black), stroke: 0.55pt)

  // 5. ETICHETTE (tutte con text(size: 7pt))
  content((-0.24, 2.82), text(size: 7pt)[$phi_t$], anchor: "center")
  content((0.00, -0.55), text(size: 7pt)[Sezione $A$-$A$], anchor: "center")
})
