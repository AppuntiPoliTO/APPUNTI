// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 410) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Vista laterale trave a sezione rettangolare ingobbata e ruotata
  // Faccia principale anteriore (griglia distorta)
  line((0.1, 1.25), (5.8, 0.75), stroke: 0.9pt)
  line((0.0, -0.85), (5.7, -1.35), stroke: 0.9pt)
  line((0.1, 1.25), (0.0, -0.85), stroke: 0.9pt)
  line((5.8, 0.75), (5.7, -1.35), stroke: 0.9pt)

  // Linee longitudinali della griglia anteriore
  line((0.08, 0.83), (5.78, 0.33), stroke: 0.5pt)
  line((0.06, 0.41), (5.76, -0.09), stroke: 0.5pt)
  line((0.04, -0.01), (5.74, -0.51), stroke: 0.5pt)
  line((0.02, -0.43), (5.72, -0.93), stroke: 0.5pt)

  // Linee trasversali ingobbate (leggermente inclinate)
  line((0.67, 1.20), (0.57, -0.90), stroke: 0.5pt)
  line((1.24, 1.15), (1.14, -0.95), stroke: 0.5pt)
  line((1.81, 1.10), (1.71, -1.00), stroke: 0.5pt)
  line((2.38, 1.05), (2.28, -1.05), stroke: 0.5pt)
  line((2.95, 1.00), (2.85, -1.10), stroke: 0.5pt)
  line((3.52, 0.95), (3.42, -1.15), stroke: 0.5pt)
  line((4.09, 0.90), (3.99, -1.20), stroke: 0.5pt)
  line((4.66, 0.85), (4.56, -1.25), stroke: 0.5pt)
  line((5.23, 0.80), (5.13, -1.30), stroke: 0.5pt)

  // Lembo superiore destro visibile per torsione (da x = 2.95 a 5.8)
  line((2.95, 1.00), (5.85, 1.15), stroke: 0.8pt)
  line((5.85, 1.15), (5.8, 0.75), stroke: 0.8pt)
  line((3.52, 0.95), (5.83, 1.05), stroke: 0.4pt)
  line((4.09, 0.90), (5.82, 0.95), stroke: 0.4pt)
  line((4.66, 0.85), (5.81, 0.85), stroke: 0.4pt)

  // Lembo inferiore sinistro visibile per torsione (da x = 0 a 2.85)
  line((0.0, -0.85), (0.05, -1.25), stroke: 0.8pt)
  line((0.05, -1.25), (2.85, -1.10), stroke: 0.8pt)
  line((0.02, -0.98), (2.28, -1.05), stroke: 0.4pt)
  line((0.04, -1.12), (1.71, -1.00), stroke: 0.4pt)
})
