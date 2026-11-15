// Figura estratta da 27-50_appunti.typ (riga 1181) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Radice: Leghe Ferrose
  content((5.2, 5.5), text(size: 7pt)[*Leghe Ferrose*])
  line((5.2, 5.3), (5.2, 4.7), stroke: (paint: blue, thickness: 1.8pt))

  // Diramazione principale Acciai vs Ghise
  line((3.0, 4.7), (5.2, 4.7), stroke: (paint: red, thickness: 1.5pt))
  line((3.0, 4.7), (3.0, 4.2), stroke: (paint: red, thickness: 1.5pt))
  content((4.1, 4.95), text(size: 7pt)[$C < 2.1\%$])
  content((3.0, 3.95), text(size: 7pt)[*Acciai*])

  line((5.2, 4.7), (7.5, 4.7), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((7.5, 4.7), (7.5, 4.2), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  content((6.35, 4.95), text(size: 7pt)[$2.1\% < C < 4.6\%$])
  content((7.5, 3.95), text(size: 7pt)[*Ghise*])

  // Sotto-albero Ghise
  line((7.5, 3.75), (7.5, 3.3), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((5.7, 3.3), (9.3, 3.3), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((5.7, 3.3), (5.7, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((6.8, 3.3), (6.8, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((8.0, 3.3), (8.0, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  line((9.3, 3.3), (9.3, 2.8), stroke: (paint: rgb(0, 150, 60), thickness: 1.5pt))
  content((5.7, 2.55), text(size: 7pt)[Grigie])
  content((6.8, 2.55), text(size: 7pt)[Sferoidali])
  content((8.0, 2.55), text(size: 7pt)[Bianche])
  content((9.3, 2.55), text(size: 7pt)[Malleabili])

  // Sotto-albero Acciai: Basso-legati e Alto-legati
  line((3.0, 3.75), (3.0, 3.3), stroke: (paint: red, thickness: 1.5pt))
  line((1.8, 3.3), (4.8, 3.3), stroke: (paint: red, thickness: 1.5pt))
  line((1.8, 3.3), (1.8, 2.85), stroke: (paint: red, thickness: 1.5pt))
  line((4.8, 3.3), (4.8, 1.95), stroke: (paint: red, thickness: 1.5pt))
  content((1.8, 2.6), text(size: 7pt)[*Basso-legati*])
  content((4.8, 1.7), text(size: 7pt)[*Alto-legati*])

  // Diramazioni Basso-legati (Basso, Medio, Alto carbonio)
  line((1.8, 2.4), (1.8, 2.0), stroke: (paint: red, thickness: 1.5pt))
  line((0.5, 2.0), (3.6, 2.0), stroke: (paint: red, thickness: 1.5pt))
  line((0.5, 2.0), (0.5, 1.55), stroke: (paint: red, thickness: 1.5pt))
  line((2.0, 2.0), (2.0, 1.55), stroke: (paint: red, thickness: 1.5pt))
  line((3.6, 2.0), (3.6, 1.55), stroke: (paint: red, thickness: 1.5pt))
  content((0.5, 1.3), text(size: 7pt)[Basso carbonio])
  content((2.0, 1.3), text(size: 7pt)[Medio carbonio])
  content((3.6, 1.3), text(size: 7pt)[Alto carbonio])

  // Foglie Basso carbonio
  line((0.5, 1.1), (0.5, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((0.0, 0.75), (1.1, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((0.0, 0.75), (0.0, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((1.1, 0.75), (1.1, 0.4), stroke: (paint: red, thickness: 1.5pt))
  content((0.0, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((1.1, 0.1), text(size: 7pt)[Basso-legati,\ alta resistenza])

  // Foglie Medio carbonio
  line((2.0, 1.1), (2.0, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((1.85, 0.75), (2.8, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((1.85, 0.75), (1.85, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((2.8, 0.75), (2.8, 0.4), stroke: (paint: red, thickness: 1.5pt))
  content((2.0, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((2.85, 0.1), text(size: 7pt)[Trattabili\ a caldo])

  // Foglie Alto carbonio e Alto-legati
  line((3.6, 1.1), (3.6, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((3.5, 0.75), (4.4, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((3.5, 0.75), (3.5, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((4.4, 0.75), (4.4, 0.4), stroke: (paint: red, thickness: 1.5pt))

  line((4.8, 1.5), (4.8, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((4.55, 0.75), (5.4, 0.75), stroke: (paint: red, thickness: 1.5pt))
  line((4.55, 0.75), (4.55, 0.4), stroke: (paint: red, thickness: 1.5pt))
  line((5.4, 0.75), (5.4, 0.4), stroke: (paint: red, thickness: 1.5pt))

  content((3.65, 0.1), text(size: 7pt)[Comuni al\ carbonio])
  content((4.5, 0.15), text(size: 7pt)[Utensili])
  content((5.45, 0.15), text(size: 7pt)[Inossidabili])
})
