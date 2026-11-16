// Figura estratta da capitoli/cap7.typ (riga 420) con LocalTypst
#import "/template.typ": *
#import "@preview/cetz:0.3.4"

#canvas(length: 1cm, {
  import draw: *

  // Riempimenti (paratoia e diagrammi di pressione)
  line((0.15, 1.0), (0.95, 1.0), (0.95, 3.4), close: true, fill: c-aux.transparentize(93%), stroke: none)
  
  rect((4.80, 2.10), (4.94, 3.80), fill: c-aux.transparentize(81%), stroke: 1pt)

  // Fondo orizzontale, sezione di monte e pelo libero
  line((1.50, 1.0), (7.10, 1.0), stroke: 1.1pt)
  line((1.50, 1.0), (1.50, 3.4), stroke: 0.9pt)
  line((1.50, 3.4), (4.80, 3.4), stroke: 1pt)
  bezier((4.94, 2.10), (7.10, 1.80), (5.45, 1.92), (6.30, 1.80), stroke: 1pt)

  // Simbolo pelo libero
  line((3.88, 3.58), (4.12, 3.58), (4.00, 3.40), close: true, stroke: 0.7pt)
  line((3.91, 3.31), (4.09, 3.31), stroke: 0.65pt)
  line((3.95, 3.22), (4.05, 3.22), stroke: 0.65pt)

  // Diagramma delle pressioni a monte
  line((0.15, 1.0), (0.95, 1.0), (0.95, 3.4), close: true, stroke: 0.8pt)
  line((0.283, 1.4), (0.95, 1.4), stroke: 0.55pt)
  line((0.417, 1.8), (0.95, 1.8), stroke: 0.55pt)
  line((0.550, 2.2), (0.95, 2.2), stroke: 0.55pt)
  line((0.683, 2.6), (0.95, 2.6), stroke: 0.55pt)
  line((0.817, 3.0), (0.95, 3.0), stroke: 0.55pt)

  

  // Quote h1 e h2
  line((1.75, 1.0), (1.75, 3.4), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((1.88, 2.20), text(size: 8.5pt)[$h_1$], anchor: "west")

  line((7.10, 1.0), (7.10, 1.8), mark: (start: ">", end: ">"), stroke: 0.85pt)
  content((7.24, 1.24), text(size: 8pt)[$h_2$], anchor: "west")

  // Direzione velocità, forza sulla paratoia e sforzi sul fondo
  line((2.00, 3.95), (4.30, 3.95), mark: (end: ">"), stroke: 0.9pt)
  content((3.15, 4.08), text(size: 8.5pt)[$v$], anchor: "south")

  line((6.05, 2.95), (4.98, 2.95), mark: (end: ">"), stroke: 1.1pt)
  content((5.52, 3.08), text(size: 8.5pt)[$arrow(F)_x$], anchor: "south")

  line((5.05, 0.72), (3.55, 0.72), mark: (end: ">"), stroke: 0.85pt)
  content((4.30, 0.56), text(size: 7.5pt)[$arrow(sigma) " trascurabili"$], anchor: "north")

  // Versori normali uscenti (blu) e richiamo S_g
  line((1.50, 1.60), (1.05, 1.60), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.85pt))
  content((1.27, 1.72), text(size: 7.5pt, fill: c-norm)[$arrow(n)$], anchor: "south")

  line((4.80, 2.48), (5.32, 2.48), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.85pt))
  content((5.38, 2.48), text(size: 7.5pt, fill: c-norm)[$arrow(n)$], anchor: "west")

  line((7.10, 1.62), (7.55, 1.62), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.85pt))
  content((7.40, 1.72), text(size: 7.5pt, fill: c-norm)[$arrow(n)$], anchor: "south")

  line((5.42, 3.85), (4.96, 3.45), mark: (end: ">"), stroke: (paint: c-norm, thickness: 0.65pt))
  content((5.46, 3.88), text(size: 8pt, fill: c-norm)[$S_g$], anchor: "west")
})
