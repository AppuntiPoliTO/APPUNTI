// Figura estratta da main.typ (riga 1139) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.85cm, {
  import draw: *
  // Grafico di I_a in funzione di alpha (Slide 14)
  line((0, 0), (5.8, 0), mark: (end: ">"), stroke: 0.8pt)
  line((0, 0), (0, 3.6), mark: (end: ">"), stroke: 0.8pt)
  content((5.8, -0.35), text(size: 8pt)[$alpha$])
  content((-0.35, 3.4), text(size: 8pt)[$I_a$])

  // Linea media
  line((0, 1.7), (5.2, 1.7), stroke: 0.5pt + luma(120))

  // Curva sinusoidale di periodo pi: minimo in alpha_1 = 0.9, massimo in alpha_2 = 2.9
  bezier((0.1, 1.4), (0.9, 0.85), (0.3, 1.0), (0.6, 0.85), stroke: 1.2pt)
  bezier((0.9, 0.85), (1.9, 1.7), (1.3, 0.85), (1.6, 1.25), stroke: 1.2pt)
  bezier((1.9, 1.7), (2.9, 2.55), (2.2, 2.15), (2.5, 2.55), stroke: 1.2pt)
  bezier((2.9, 2.55), (3.9, 1.7), (3.3, 2.55), (3.6, 2.15), stroke: 1.2pt)
  bezier((3.9, 1.7), (4.6, 1.05), (4.2, 1.25), (4.4, 1.1), stroke: 1.2pt)

  // Tangenti orizzontali di minimo e massimo
  line((0.4, 0.85), (1.4, 0.85), stroke: 0.6pt)
  line((2.4, 2.55), (3.4, 2.55), stroke: 0.6pt)

  // Proiezioni verticali per alpha_1, pi/2, alpha_2, pi
  line((0.9, 0), (0.9, 0.85), stroke: 0.6pt)
  line((2.1, 0), (2.1, 1.98), stroke: 0.6pt)
  line((2.9, 0), (2.9, 2.55), stroke: 0.6pt)
  line((4.1, 0), (4.1, 1.4), stroke: 0.6pt)

  // Etichette
  content((0.15, -0.35), text(size: 8pt)[$0$])
  content((0.9, -0.35), text(size: 8pt)[$alpha_1$])
  content((2.0, -0.35), text(size: 8pt)[$pi / 2$])
  content((2.9, -0.35), text(size: 8pt)[$alpha_2$])
  content((4.1, -0.35), text(size: 8pt)[$pi$])

  content((0.65, 1.15), text(size: 8pt)[$I_(alpha_1)$])
  content((2.9, 2.85), text(size: 8pt)[$I_(alpha_2)$])
})
