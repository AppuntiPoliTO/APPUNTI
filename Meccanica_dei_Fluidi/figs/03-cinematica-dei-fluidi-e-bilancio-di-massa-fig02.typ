// Figura estratta da capitoli/03-cinematica-dei-fluidi-e-bilancio-di-massa.typ (riga 148) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.72cm, {
  import draw: *

  // Contorno chiuso del dominio D(t) / V_s(t)
  bezier((2.00, 4.10), (3.85, 4.80), (1.75, 4.60), (3.20, 5.20), stroke: 1pt + c-geo)
  bezier((3.85, 4.80), (5.20, 1.80), (4.50, 4.40), (5.85, 2.90), stroke: 1pt + c-geo)
  bezier((5.20, 1.80), (3.45, 2.30), (4.65, 0.90), (3.45, 1.50), stroke: 1pt + c-geo)
  bezier((3.45, 2.30), (2.00, 4.10), (3.45, 3.20), (2.25, 3.60), stroke: 1pt + c-geo)

  // Linee di corrente (archi di cerchio)
  arc((6.93, -3.55), start: 112.1deg, stop: 141.5deg, radius: 8.85, anchor: "origin", stroke: 1pt + c-vel)
  arc((7.80, -3.50), start: 109.5deg, stop: 148.5deg, radius: 8.45, anchor: "origin", stroke: 1pt + c-vel)
  arc((9.50, -4.20), start: 113.0deg, stop: 149.8deg, radius: 8.35, anchor: "origin", stroke: 1pt + c-vel)

  // Frecce di direzione lungo la linea di corrente S1
  line((0.94, 2.96), (1.01, 3.03), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)
  line((2.69, 4.21), (2.78, 4.26), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)

  // Frecce di direzione lungo la linea di corrente S2
  line((1.65, 2.30), (1.72, 2.37), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)
  line((3.49, 3.77), (3.58, 3.82), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)

  // Frecce di direzione lungo la linea di corrente S3
  line((3.22, 1.32), (3.29, 1.39), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)
  line((4.99, 2.83), (5.08, 2.88), mark: (end: "stealth", size: 0.25, fill: c-vel), stroke: 1pt + c-vel)

  // Vettore normale uscente n (in grigio come nell'immagine)
  line((4.67, 4.04), (5.22, 4.48), mark: (end: "stealth", size: 0.22, fill: c-norm), stroke: (paint: c-norm, thickness: 1.1pt))

  // Vettore velocità della superficie u_s
  line((5.26, 2.82), (6.05, 3.12), mark: (end: "stealth", size: 0.22, fill: c-vel), stroke: 1.2pt + c-vel)

  // Etichette
  content((1.95, 4.65), [$cal(D)(t)$], anchor: "east")
  content((5.38, 4.25), [#text(fill: c-norm)[$arrow(n)$]], anchor: "west")
  content((6.3, 3.45), text(c-vel)[$arrow(u)_s (arrow(x), t)$], anchor: "west")
  content((5.15, 1.10), [$cal(V)_s (t)$], anchor: "west")
})
