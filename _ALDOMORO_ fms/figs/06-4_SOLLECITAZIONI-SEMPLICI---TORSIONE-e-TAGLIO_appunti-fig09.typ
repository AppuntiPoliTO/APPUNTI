// Figura estratta da 06-4_SOLLECITAZIONI SEMPLICI - TORSIONE e TAGLIO_appunti.typ (riga 720) con LocalTypst
#import "@preview/cetz:0.3.4": canvas as cetz-canvas, draw

#let canvas(..args) = align(center, cetz-canvas(..args))

#canvas(length: 0.82cm, {
  import draw: *
  // --- PANNELLO SINISTRO: Sezione chiusa generica ---
  // Contorno esterno
  bezier((-2.2, 0), (0, 1.55), (-2.2, 1.1), (-1.1, 1.55), stroke: 1.2pt)
  bezier((0, 1.55), (2.2, 0), (1.1, 1.55), (2.2, 1.1), stroke: 1.2pt)
  bezier((2.2, 0), (0, -1.55), (2.2, -1.1), (1.1, -1.55), stroke: 1.2pt)
  bezier((0, -1.55), (-2.2, 0), (-1.1, -1.55), (-2.2, -1.1), stroke: 1.2pt)

  // Linea mediana tratteggiata
  bezier((-2.02, 0), (0, 1.38), (-2.02, 0.98), (-0.98, 1.38), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((0, 1.38), (2.02, 0), (0.98, 1.38), (2.02, 0.98), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((2.02, 0), (0, -1.38), (2.02, -0.98), (0.98, -1.38), stroke: (dash: "dashed", thickness: 0.6pt))
  bezier((0, -1.38), (-2.02, 0), (-0.98, -1.38), (-2.02, -0.98), stroke: (dash: "dashed", thickness: 0.6pt))

  // Contorno interno
  bezier((-1.85, 0), (0, 1.22), (-1.85, 0.85), (-0.85, 1.22), stroke: 1.2pt)
  bezier((0, 1.22), (1.85, 0), (0.85, 1.22), (1.85, 0.85), stroke: 1.2pt)
  bezier((1.85, 0), (0, -1.22), (1.85, -0.85), (0.85, -1.22), stroke: 1.2pt)
  bezier((0, -1.22), (-1.85, 0), (-0.85, -1.22), (-1.85, -0.85), stroke: 1.2pt)

  // Tratteggio obliquo per indicare l'area Omega racchiusa dalla linea mediana
  line((-1.4, -0.8), (0.8, 1.2), stroke: 0.35pt)
  line((-1.7, -0.4), (0.3, 1.3), stroke: 0.35pt)
  line((-1.8, 0.1), (-0.3, 1.3), stroke: 0.35pt)
  line((-0.9, -1.1), (1.3, 0.9), stroke: 0.35pt)
  line((-0.4, -1.3), (1.6, 0.5), stroke: 0.35pt)
  line((0.2, -1.3), (1.8, 0.1), stroke: 0.35pt)

  // Etichetta Omega su sfondo bianco
  rect((-0.3, -0.3), (0.3, 0.3), fill: white, stroke: none)
  content((0, 0), text(size: 7pt)[$Omega$])

  // Quota spessore s a sinistra
  line((-2.65, -0.25), (-2.2, -0.25), mark: (end: ">"), stroke: 0.6pt)
  line((-1.4, -0.25), (-1.85, -0.25), mark: (end: ">"), stroke: 0.6pt)
  content((-2.35, -0.15), text(size: 7pt)[$s$], anchor: "south")

  // Vettore tau = tau_m
  line((-2.02, 0.25), (-2.02, -0.45), mark: (end: ">"), stroke: 0.9pt)
  content((-1.95, 0.55), text(size: 7pt)[$tau = tau_m$], anchor: "east")

  // Elemento dl in alto a destra
  line((0.55, 1.15), (0.72, 1.85), stroke: 0.5pt)
  line((1.05, 1.02), (1.22, 1.72), stroke: 0.5pt)
  line((0.25, 1.80), (0.69, 1.69), mark: (end: ">"), stroke: 0.6pt)
  line((1.62, 1.46), (1.18, 1.57), mark: (end: ">"), stroke: 0.6pt)
  content((0.98, 1.78), text(size: 7pt)[$d l$], anchor: "south")

  // --- PANNELLO DESTRO: Dettaglio settore d Omega (x da 3.2 a 6.4) ---
  // Triangolo grigio d Omega con vertice nel polo/baricentro (6.3, -0.7)
  line((6.3, -0.7), (3.85, 0.45), (3.45, -0.35), close: true, fill: luma(215), stroke: 0.6pt)
  content((4.75, -0.25), text(size: 7pt)[$d Omega$])

  // Elemento di parete di spessore s e lunghezza dl
  line((3.72, 0.52), (3.98, 0.38), (3.58, -0.42), (3.32, -0.28), close: true, stroke: 0.8pt)

  // Retta d'azione tangente alla linea mediana e forza dF
  line((4.35, 1.25), (3.05, -1.35), stroke: 0.5pt)
  line((3.65, 0.05), (3.15, -0.95), mark: (end: ">"), stroke: 1.2pt)
  content((3.35, -0.95), text(size: 7pt)[$d F$], anchor: "west")

  // Braccio delta perpendicolare alla tangente
  line((6.3, -0.7), (4.15, 0.85), stroke: (dash: "dashed", thickness: 0.8pt))
  content((5.25, 0.25), text(size: 7pt)[$delta$], anchor: "south")

  // Quote dl e s sul dettaglio
  line((3.12, -0.18), (3.52, 0.62), mark: (start: ">", end: ">"), stroke: 0.6pt)
  content((3.22, 0.32), text(size: 7pt)[$d l$], anchor: "east")

  line((3.55, 0.92), (3.82, 0.48), mark: (end: ">"), stroke: 0.6pt)
  line((4.22, -0.18), (3.92, 0.28), mark: (end: ">"), stroke: 0.6pt)
  content((3.95, 0.72), text(size: 7pt)[$s$], anchor: "south")
})
