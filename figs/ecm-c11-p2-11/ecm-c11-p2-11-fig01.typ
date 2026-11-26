// Figura estratta da _immagini_orfane/figs_orfane/ecm-c11-p2-11.typ (riga 2) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
  import draw: *

  // Griglia logaritmica verticale (decade 10^4 - 10^5)
  line((0.4816, 0), (0.4816, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((0.7634, 0), (0.7634, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((0.9633, 0), (0.9633, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.1184, 0), (1.1184, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.2450, 0), (1.2450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.3522, 0), (1.3522, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.4450, 0), (1.4450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.5268, 0), (1.5268, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((1.6000, 0), (1.6000, 7.0), stroke: 0.5pt + gray)

  // Griglia logaritmica verticale (decade 10^5 - 10^6)
  line((2.0816, 0), (2.0816, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((2.3634, 0), (2.3634, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((2.5633, 0), (2.5633, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((2.7184, 0), (2.7184, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((2.8450, 0), (2.8450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((2.9522, 0), (2.9522, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((3.0450, 0), (3.0450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((3.1268, 0), (3.1268, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((3.2000, 0), (3.2000, 7.0), stroke: 0.5pt + gray)

  // Griglia logaritmica verticale (decade 10^6 - 10^7)
  line((3.6816, 0), (3.6816, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((3.9634, 0), (3.9634, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.1633, 0), (4.1633, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.3184, 0), (4.3184, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.4450, 0), (4.4450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.5522, 0), (4.5522, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.6450, 0), (4.6450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.7268, 0), (4.7268, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((4.8000, 0), (4.8000, 7.0), stroke: 0.5pt + gray)

  // Griglia logaritmica verticale (decade 10^7 - 10^8)
  line((5.2816, 0), (5.2816, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((5.5634, 0), (5.5634, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((5.7633, 0), (5.7633, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((5.9184, 0), (5.9184, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((6.0450, 0), (6.0450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((6.1522, 0), (6.1522, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((6.2450, 0), (6.2450, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((6.3268, 0), (6.3268, 7.0), stroke: 0.35pt + gray.lighten(25%))
  line((6.4000, 0), (6.4000, 7.0), stroke: 0.5pt + gray)

  // Griglia logaritmica orizzontale (decade 10 - 10^2)
  line((0, 0.9633), (6.88, 0.9633), stroke: 0.35pt + gray.lighten(25%))
  line((0, 1.5268), (6.88, 1.5268), stroke: 0.35pt + gray.lighten(25%))
  line((0, 1.9266), (6.88, 1.9266), stroke: 0.35pt + gray.lighten(25%))
  line((0, 2.2367), (6.88, 2.2367), stroke: 0.35pt + gray.lighten(25%))
  line((0, 2.4901), (6.88, 2.4901), stroke: 0.35pt + gray.lighten(25%))
  line((0, 2.7043), (6.88, 2.7043), stroke: 0.35pt + gray.lighten(25%))
  line((0, 2.8900), (6.88, 2.8900), stroke: 0.35pt + gray.lighten(25%))
  line((0, 3.0536), (6.88, 3.0536), stroke: 0.35pt + gray.lighten(25%))
  line((0, 3.2000), (6.88, 3.2000), stroke: 0.5pt + gray)

  // Griglia logaritmica orizzontale (decade 10^2 - 10^3)
  line((0, 4.1633), (6.88, 4.1633), stroke: 0.35pt + gray.lighten(25%))
  line((0, 4.7268), (6.88, 4.7268), stroke: 0.35pt + gray.lighten(25%))
  line((0, 5.1266), (6.88, 5.1266), stroke: 0.35pt + gray.lighten(25%))
  line((0, 5.4367), (6.88, 5.4367), stroke: 0.35pt + gray.lighten(25%))
  line((0, 5.6901), (6.88, 5.6901), stroke: 0.35pt + gray.lighten(25%))
  line((0, 5.9043), (6.88, 5.9043), stroke: 0.35pt + gray.lighten(25%))
  line((0, 6.0900), (6.88, 6.0900), stroke: 0.35pt + gray.lighten(25%))
  line((0, 6.2536), (6.88, 6.2536), stroke: 0.35pt + gray.lighten(25%))
  line((0, 6.4000), (6.88, 6.4000), stroke: 0.5pt + gray)

  // Cornice del grafico
  rect((0, 0), (6.88, 7.0), stroke: 0.65pt + black)

  // Curve S-N per Δτ (categoria 100 MPa e 80 MPa, m=5)
  line((0, 4.6727), (6.40, 2.1127), (6.88, 2.1127), stroke: 1.05pt)
  line((0, 4.3626), (6.40, 1.8026), (6.88, 1.8026), stroke: 1.05pt)

  // Riquadro e freccia C 100 MPa
  rect((3.10, 3.85), (4.50, 4.55), fill: white, stroke: none)
  content((3.80, 4.20), text(size: 8pt)[C \ 100 MPa], anchor: "center")
  line((3.6816, 3.85), (3.6816, 3.22), mark: (end: ">"), stroke: 0.9pt)

  // Riquadro e freccia C 80 MPa
  rect((2.50, 1.35), (3.95, 2.05), fill: white, stroke: none)
  content((3.22, 1.70), text(size: 8pt)[C \ 80 MPa], anchor: "center")
  line((3.6816, 2.08), (3.6816, 2.86), mark: (end: ">"), stroke: 0.9pt)

  // Etichetta pendenza m=5
  rect((4.25, 1.82), (5.05, 2.22), fill: white, stroke: none)
  content((4.65, 2.02), text(size: 8pt)[m=5], anchor: "center")

  // Etichetta e freccia L
  rect((6.20, 0.55), (6.75, 1.00), fill: white, stroke: none)
  content((6.48, 0.78), text(size: 8.5pt)[L], anchor: "center")
  line((6.40, 1.02), (6.40, 1.76), mark: (end: ">"), stroke: 0.9pt)

  // Tacca inferiore per 2·10^6
  line((3.6816, 0), (3.6816, -0.32), stroke: 0.45pt)

  // Etichette asse y
  content((-0.12, 0.0), text(size: 8pt)[10], anchor: "east")
  content((-0.12, 3.2), text(size: 8pt)[$10^2$], anchor: "east")
  content((-0.12, 4.3626), text(size: 8pt)[231], anchor: "east")
  content((-0.12, 6.4), text(size: 8pt)[$10^3$], anchor: "east")
  content((-0.65, 3.5), text(size: 8pt)[$Delta tau$ (MPa)], anchor: "east")

  // Etichette asse x
  content((0.0, -0.15), text(size: 8pt)[$10^4$], anchor: "north")
  content((1.6, -0.15), text(size: 8pt)[$10^5$], anchor: "north")
  content((3.2, -0.15), text(size: 8pt)[$10^6$], anchor: "north")
  content((3.6816, -0.40), text(size: 7.5pt)[$2 dot 10^6$], anchor: "north")
  content((4.8, -0.15), text(size: 8pt)[$10^7$], anchor: "north")
  content((6.4, -0.15), text(size: 8pt)[$10^8$], anchor: "north")
  content((6.88, -0.15), text(size: 8pt)[$N$], anchor: "north")
})
