// Figura estratta da solidi.typ (riga 146) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 1cm, {
import draw: *

// Assi di simmetria
line((0, -2.2), (0, 2.2), stroke: (dash: "dash-dotted", thickness: 0.6pt))
line((-2.2, 0), (2.2, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))

// Faccia frontale
circle((0, 0), radius: 1.4, stroke: 1pt)
circle((0, 0), radius: 1.8, stroke: 1pt)

// Corpo del cilindro (linee tangenti)
line((-0.632, 1.685), (3.368, 3.185), stroke: 1pt)
line((0.632, -1.685), (4.632, -0.185), stroke: 1pt)

// Faccia posteriore (arco visibile tra i punti di tangenza)
arc((4.0, 1.5), start: -69.44deg, stop: 110.56deg, radius: 1.8, anchor: "origin", stroke: 1pt)

// Frecce pressione interna p_i
line((0.580, 0.155), (1.352, 0.362), mark: (end: ">"), stroke: 1pt)
line((0.424, 0.424), (0.990, 0.990), mark: (end: ">"), stroke: 1pt)
line((0.155, 0.580), (0.362, 1.352), mark: (end: ">"), stroke: 1pt)
line((-0.155, 0.580), (-0.362, 1.352), mark: (end: ">"), stroke: 1pt)
line((-0.424, 0.424), (-0.990, 0.990), mark: (end: ">"), stroke: 1pt)
line((-0.580, 0.155), (-1.352, 0.362), mark: (end: ">"), stroke: 1pt)
line((-0.580, -0.155), (-1.352, -0.362), mark: (end: ">"), stroke: 1pt)
line((-0.424, -0.424), (-0.990, -0.990), mark: (end: ">"), stroke: 1pt)
line((-0.155, -0.580), (-0.362, -1.352), mark: (end: ">"), stroke: 1pt)
line((0.155, -0.580), (0.362, -1.352), mark: (end: ">"), stroke: 1pt)
line((0.424, -0.424), (0.990, -0.990), mark: (end: ">"), stroke: 1pt)
line((0.580, -0.155), (1.352, -0.362), mark: (end: ">"), stroke: 1pt)

// Quota D_i (da 135 a 315 gradi)
line((-0.990, 0.990), (0.990, -0.990), mark: (start: ">", end: ">"), stroke: 0.6pt)

// Quota s (spessore, a 45 gradi)
line((0.707, 0.707), (0.990, 0.990), mark: (end: ">"), stroke: 0.6pt)
line((1.556, 1.556), (1.273, 1.273), mark: (end: ">"), stroke: 0.6pt)

// Quota L (lunghezza cilindro)
line((0.702, -1.872), (1.158, -3.089), stroke: 0.6pt)
line((4.702, -0.372), (5.158, -1.589), stroke: 0.6pt)
line((1.053, -2.808), (5.053, -1.308), mark: (start: ">", end: ">"), stroke: 0.6pt)

// Etichette
content((-0.6, -0.4), [$p_i$])
content((0.2, 0.3), [$D_i$])
content((1.7, 1.6), [$s$])
content((3.2, -2.4), [$L$])
})
