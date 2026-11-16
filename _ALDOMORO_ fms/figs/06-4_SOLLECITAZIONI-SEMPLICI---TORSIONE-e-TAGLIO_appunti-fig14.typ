// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1169) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.9cm, {
  import draw: *
  // Concio di trave di larghezza dx (x: -0.9..0.9, y: -1.6..1.6)
  rect((-0.9, -1.6), (0.9, 1.6), stroke: 0.8pt)

  // Sistema di riferimento al centro (0, -0.1)
  line((0, -0.1), (0.7, -0.1), stroke: 0.5pt)
  line((0, -0.1), (0, 0.65), stroke: 0.5pt)
  circle((0, -0.1), radius: 0.2, stroke: 0.5pt)
  circle((0, -0.1), radius: 0.05, fill: black, stroke: none)
  content((0.55, -0.25), text(size: 7pt)[$x$], anchor: "north")
  content((-0.12, 0.55), text(size: 7pt)[$y$], anchor: "east")
  content((-0.25, -0.35), text(size: 7pt)[$z$], anchor: "north")

  // Quota dx in alto
  line((-0.9, 1.75), (-0.9, 2.25), stroke: 0.5pt)
  line((0.9, 1.75), (0.9, 2.25), stroke: 0.5pt)
  line((-0.35, 2.05), (-0.9, 2.05), mark: (end: ">"), stroke: 0.6pt)
  line((0.35, 2.05), (0.9, 2.05), mark: (end: ">"), stroke: 0.6pt)
  content((0, 2.05), text(size: 7pt)[$d x$])

  // Sollecitazioni a sinistra: Ty verso l'alto, Mz orario
  line((-1.15, -0.2), (-1.15, 1.35), mark: (end: ">"), stroke: 1pt)
  content((-1.3, 1.3), text(size: 7pt)[$T_y$], anchor: "east")

  arc((-1.55, 0), start: 105deg, stop: 255deg, radius: (0.45, 0.8), anchor: "origin", mark: (start: ">"), stroke: 1pt)
  content((-2.05, 0.45), text(size: 7pt)[$M_z$], anchor: "east")

  // Sollecitazioni a destra: Ty verso il basso, Mz + dMz antiorario
  line((1.15, -0.15), (1.15, -1.6), mark: (end: ">"), stroke: 1pt)
  content((1.3, -1.3), text(size: 7pt)[$T_y$], anchor: "west")

  arc((1.55, 0), start: -75deg, stop: 75deg, radius: (0.45, 0.8), anchor: "origin", mark: (end: ">"), stroke: 1pt)
  content((1.95, 0.65), text(size: 7pt)[$M_z + d M_z$], anchor: "west")
})
