// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 1697) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.85cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Sezione circolare intera (centro (-1.8, 0), R = 1.35) ---
  circle((-1.8, 0), radius: 1.35, stroke: 1.1pt)
  circle((-1.8, 0), radius: 0.65, stroke: 0.6pt)
  circle((-1.8, 0), radius: 0.48, stroke: 0.6pt)

  line((-3.5, 0), (-0.1, 0), stroke: 0.6pt)
  line((-1.8, -1.65), (-1.8, 1.85), stroke: 0.6pt)
  content((-3.55, 0), text(size: 7pt)[$z$], anchor: "east")
  content((-1.65, 1.8), text(size: 7pt)[$y$], anchor: "west")
  content((-1.68, -0.22), text(size: 7pt)[$O$])

  // Raggio r e spessore dr
  line((-1.8, 0), (-1.46, 0.34), mark: (end: ">"), stroke: 0.8pt)
  content((-1.72, 0.22), text(size: 7pt)[$r$])
  line((-0.7, 1.1), (-1.34, 0.46), mark: (end: ">"), stroke: 0.8pt)
  content((-1.42, 0.68), text(size: 7pt)[$d r$])

  // --- PANNELLO DESTRO: Semicerchio superiore per S_z,max (centro (1.8, -0.35), R = 1.35) ---
  arc((1.8, -0.35), start: 0deg, stop: 180deg, radius: 1.35, anchor: "origin", stroke: 1.1pt)
  arc((1.8, -0.35), start: 0deg, stop: 180deg, radius: 0.65, anchor: "origin", stroke: 0.6pt)
  arc((1.8, -0.35), start: 0deg, stop: 180deg, radius: 0.48, anchor: "origin", stroke: 0.6pt)

  line((0.2, -0.35), (3.4, -0.35), stroke: 0.6pt)
  line((1.8, -0.55), (1.8, 1.55), stroke: 0.6pt)
  content((1.95, 1.5), text(size: 7pt)[$y$], anchor: "west")

  line((1.8, -0.35), (2.14, -0.01), mark: (end: ">"), stroke: 0.8pt)
  content((1.88, -0.12), text(size: 7pt)[$r$])
  line((2.9, 0.75), (2.26, 0.11), mark: (end: ">"), stroke: 0.8pt)
  content((2.18, 0.33), text(size: 7pt)[$d r$])
})
