// Figura estratta da esami.typ (riga 844) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1.5cm, {
  import draw: *

  // Telaio di riferimento
  line((0, 0), (0, 2.0), (3.6, 2.0), (3.6, 0), stroke: 0.6pt)
  circle((1.8, 2.0), radius: 0.06, fill: white, stroke: 0.6pt)

  // Segno X su AB (M_f = 0)
  line((-0.12, 0.88), (0.12, 1.12), stroke: 1pt)
  line((-0.12, 1.12), (0.12, 0.88), stroke: 1pt)

  // Arco parabolico BC (4000 Nm)
  bezier((0, 2.0), (1.8, 2.0), (0.6, 1.53), (1.2, 1.53), stroke: 1pt)
  line((0.3, 2.0), (0.3, 1.79), stroke: 0.6pt)
  line((0.6, 2.0), (0.6, 1.69), stroke: 0.6pt)
  line((0.9, 2.0), (0.9, 1.65), stroke: 0.6pt)
  line((1.2, 2.0), (1.2, 1.69), stroke: 0.6pt)
  line((1.5, 2.0), (1.5, 1.79), stroke: 0.6pt)

  // Ramo parabolico CD (fino a -12000 Nm in D)
  bezier((1.8, 2.0), (2.7, 3.05), (2.1, 2.25), (2.4, 2.6), stroke: 1pt)
  line((2.1, 2.0), (2.1, 2.27), stroke: 0.6pt)
  line((2.4, 2.0), (2.4, 2.62), stroke: 0.6pt)
  line((2.7, 2.0), (2.7, 3.05), stroke: 1pt)

  // Ramo parabolico DE (da -12000 Nm in D a -2000 Nm in E)
  bezier((2.7, 3.05), (3.6, 2.25), (3.0, 2.65), (3.3, 2.38), stroke: 1pt)
  line((3.0, 2.0), (3.0, 2.69), stroke: 0.6pt)
  line((3.3, 2.0), (3.3, 2.43), stroke: 0.6pt)
  line((3.6, 2.0), (3.6, 2.25), stroke: 1pt)

  // Diagramma triangolare su EF (da 0 in F a -2000 Nm in E)
  line((3.6, 0), (4.25, 2.0), (3.6, 2.0), stroke: 1pt)
  line((3.6, 0.4), (3.73, 0.4), stroke: 0.6pt)
  line((3.6, 0.8), (3.86, 0.8), stroke: 0.6pt)
  line((3.6, 1.2), (3.99, 1.2), stroke: 0.6pt)
  line((3.6, 1.6), (4.12, 1.6), stroke: 0.6pt)

  // Etichette (con text(size: 7pt))
  content((0.9, 1.55), text(size: 7pt)[$4000 "Nm"$], anchor: "north")
  content((2.65, 3.15), text(size: 7pt)[$-12000 "Nm"$], anchor: "south")
  content((3.45, 2.48), text(size: 7pt)[$-2000 "Nm"$], anchor: "south")
  content((4.3, 2.05), text(size: 7pt)[$-2000 "Nm"$], anchor: "west")
  content((0.12, 0.05), text(size: 7pt)[$A$], anchor: "west")
  content((-0.12, 1.88), text(size: 7pt)[$B$], anchor: "east")
  content((1.8, 1.8), text(size: 7pt)[$C$], anchor: "north")
  content((2.7, 1.8), text(size: 7pt)[$D$], anchor: "north")
  content((3.48, 0.05), text(size: 7pt)[$F$], anchor: "east")
  content((1.8, 0.75), text(size: 7pt)[*Mf*], anchor: "center")
})
