// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 605) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.78cm, {
  import draw: *
  // Griglia 3x2 di profilati aperti sottili (C, T, Z in alto; I, H, L in basso)
  // 1. Profilo a C (x: 0..1.2, y: 1.5..3.1)
  line((0, 1.5), (1.1, 1.5), (1.1, 1.72), (0.22, 1.72), (0.22, 2.88), (1.1, 2.88), (1.1, 3.1), (0, 3.1), close: true, fill: luma(210), stroke: 0.8pt)
  content((0.55, 1.15), text(size: 7pt)[Profilo a C])

  // 2. Profilo a T rovesciata (x: 2.3..3.7, y: 1.5..3.1)
  line((2.3, 1.5), (3.7, 1.5), (3.7, 1.72), (3.11, 1.72), (3.11, 3.1), (2.89, 3.1), (2.89, 1.72), (2.3, 1.72), close: true, fill: luma(210), stroke: 0.8pt)
  content((3.0, 1.15), text(size: 7pt)[Profilo a T])

  // 3. Profilo a Z (x: 4.8..6.2, y: 1.5..3.1)
  line((4.8, 2.88), (5.4, 2.88), (5.4, 1.5), (6.2, 1.5), (6.2, 1.72), (5.62, 1.72), (5.62, 3.1), (4.8, 3.1), close: true, fill: luma(210), stroke: 0.8pt)
  content((5.5, 1.15), text(size: 7pt)[Profilo a Z])

  // 4. Profilo a I (x: 0..1.1, y: -1.1..0.5)
  line((0.05, -1.1), (1.05, -1.1), (1.05, -0.88), (0.66, -0.88), (0.66, 0.28), (1.05, 0.28), (1.05, 0.5), (0.05, 0.5), (0.05, 0.28), (0.44, 0.28), (0.44, -0.88), (0.05, -0.88), close: true, fill: luma(210), stroke: 0.8pt)
  content((0.55, -1.45), text(size: 7pt)[Profilo a I])

  // 5. Profilo ad H / ali larghe (x: 2.3..3.7, y: -1.1..0.5)
  line((2.3, -1.1), (3.7, -1.1), (3.7, -0.88), (3.11, -0.88), (3.11, 0.28), (3.7, 0.28), (3.7, 0.5), (2.3, 0.5), (2.3, 0.28), (2.89, 0.28), (2.89, -0.88), (2.3, -0.88), close: true, fill: luma(210), stroke: 0.8pt)
  content((3.0, -1.45), text(size: 7pt)[Profilo ad H])

  // 6. Profilo ad L (x: 4.9..6.1, y: -1.1..0.5)
  line((4.9, -1.1), (6.1, -1.1), (6.1, -0.88), (5.12, -0.88), (5.12, 0.5), (4.9, 0.5), close: true, fill: luma(210), stroke: 0.8pt)
  content((5.5, -1.45), text(size: 7pt)[Profilo ad L])
})
