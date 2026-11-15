// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 266) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 1cm, {
  import draw: *
  // Cerchio sezione (centro (0,0), R = 1.6)
  circle((0, 0), radius: 1.6, stroke: 1.4pt)

  // Assi z (sinistra) e y (alto)
  line((2.0, 0), (-2.2, 0), mark: (end: ">"), stroke: 0.7pt)
  content((-2.1, -0.25), text(size: 7pt)[$z$], anchor: "north")
  line((0, -2.0), (0, 2.2), mark: (end: ">"), stroke: 0.7pt)
  content((0.2, 2.1), text(size: 7pt)[$y$], anchor: "west")

  // 4 triangoli di distribuzione farfalla (quota massima h = 0.85)
  // 1. Asse +y (da (0,0) a (0, 1.6), estensione a sinistra x = -0.85)
  line((0, 0), (0, 1.6), (-0.85, 1.6), close: true, stroke: 0.7pt)
  line((-0.11, 0.2), (0, 0.2), stroke: 0.5pt)
  line((-0.21, 0.4), (0, 0.4), stroke: 0.5pt)
  line((-0.32, 0.6), (0, 0.6), stroke: 0.5pt)
  line((-0.43, 0.8), (0, 0.8), stroke: 0.5pt)
  line((-0.53, 1.0), (0, 1.0), stroke: 0.5pt)
  line((-0.64, 1.2), (0, 1.2), stroke: 0.5pt)
  line((-0.74, 1.4), (0, 1.4), stroke: 0.5pt)

  // 2. Asse -y (da (0,0) a (0, -1.6), estensione a destra x = +0.85)
  line((0, 0), (0, -1.6), (0.85, -1.6), close: true, stroke: 0.7pt)
  line((0, -0.2), (0.11, -0.2), stroke: 0.5pt)
  line((0, -0.4), (0.21, -0.4), stroke: 0.5pt)
  line((0, -0.6), (0.32, -0.6), stroke: 0.5pt)
  line((0, -0.8), (0.43, -0.8), stroke: 0.5pt)
  line((0, -1.0), (0.53, -1.0), stroke: 0.5pt)
  line((0, -1.2), (0.64, -1.2), stroke: 0.5pt)
  line((0, -1.4), (0.74, -1.4), stroke: 0.5pt)

  // 3. Asse +z (sinistra, x = -1.6, estensione in basso y = -0.85)
  line((0, 0), (-1.6, 0), (-1.6, -0.85), close: true, stroke: 0.7pt)
  line((-1.6, -0.15), (-0.28, -0.15), stroke: 0.5pt)
  line((-1.6, -0.30), (-0.56, -0.30), stroke: 0.5pt)
  line((-1.6, -0.45), (-0.85, -0.45), stroke: 0.5pt)
  line((-1.6, -0.60), (-1.13, -0.60), stroke: 0.5pt)
  line((-1.6, -0.75), (-1.41, -0.75), stroke: 0.5pt)

  // 4. Asse -z (destra, x = +1.6, estensione in alto y = +0.85)
  line((0, 0), (1.6, 0), (1.6, 0.85), close: true, stroke: 0.7pt)
  line((0.28, 0.15), (1.6, 0.15), stroke: 0.5pt)
  line((0.56, 0.30), (1.6, 0.30), stroke: 0.5pt)
  line((0.85, 0.45), (1.6, 0.45), stroke: 0.5pt)
  line((1.13, 0.60), (1.6, 0.60), stroke: 0.5pt)
  line((1.41, 0.75), (1.6, 0.75), stroke: 0.5pt)

  // Etichette tau_max
  content((-0.45, 1.7), text(size: 7pt)[$tau_"max"$], anchor: "south")
  content((0.45, -1.75), text(size: 7pt)[$tau_"max"$], anchor: "north")
})
