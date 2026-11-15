// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 750) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.7cm, {
  import draw: *
  rect((0.5, 0), (7, 3), fill: c-fluido, stroke: none)
  
  // Terreno e tratteggio
  line((0.5, 0), (10, 0), stroke: 1pt)
  line((0.5, 0), (0.2, -0.3), stroke: 0.6pt)
  line((1.0, 0), (0.7, -0.3), stroke: 0.6pt)
  line((1.5, 0), (1.2, -0.3), stroke: 0.6pt)
  line((2.0, 0), (1.7, -0.3), stroke: 0.6pt)
  line((2.5, 0), (2.2, -0.3), stroke: 0.6pt)
  line((3.0, 0), (2.7, -0.3), stroke: 0.6pt)
  line((3.5, 0), (3.2, -0.3), stroke: 0.6pt)
  line((4.0, 0), (3.7, -0.3), stroke: 0.6pt)
  line((4.5, 0), (4.2, -0.3), stroke: 0.6pt)
  line((5.0, 0), (4.7, -0.3), stroke: 0.6pt)
  line((5.5, 0), (5.2, -0.3), stroke: 0.6pt)
  line((6.0, 0), (5.7, -0.3), stroke: 0.6pt)
  line((6.5, 0), (6.2, -0.3), stroke: 0.6pt)
  line((7.0, 0), (6.7, -0.3), stroke: 0.6pt)
  line((7.5, 0), (7.2, -0.3), stroke: 0.6pt)
  line((8.0, 0), (7.7, -0.3), stroke: 0.6pt)
  line((8.5, 0), (8.2, -0.3), stroke: 0.6pt)
  line((9.0, 0), (8.7, -0.3), stroke: 0.6pt)
  line((9.5, 0), (9.2, -0.3), stroke: 0.6pt)
  line((10.0, 0), (9.7, -0.3), stroke: 0.6pt)

  // Parete verticale
  rect((7, 0), (7.15, 4), stroke: 1pt, fill: c-riemp)

  // Livello del fluido
  line((0.5, 3), (7, 3), stroke: 0.8pt + c-norm)
  
  // Quota h
  line((1, 1.8), (1, 3.0), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  line((1, 1.2), (1, 0.0), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  content((1, 1.5), $h$)

  // Fluido
  content((3.5, 1.5), $gamma$)

  // Punti G e C sulla parete
  circle((7, 1.6), radius: 0.05, fill: c-geo, stroke: none)
  content((6.6, 1.6), $G$)
  circle((7, 1.0), radius: 0.05, fill: c-geo, stroke: none)
  content((6.6, 1.0), $C$)

  // Spinta S
  line((5.2, 1.0), (6, 1.0), stroke: 1.2pt + c-forza, mark: (end: "stealth", fill: c-forza))
  content((5.2, 1.4), text(c-forza, $arrow(S)$))

  // Diagramma delle pressioni
  line((7.15, 3), (7.8, 3), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  content((8.4, 3), [p.c.i.])
  line((7.15, 3), (9, 0), stroke: (paint: c-forza, thickness: 0.6pt, dash: "dashed"))
  
  // Vettori pressione interni al diagramma
  line((7.15, 2.5), (7.46, 2.5), stroke: 0.6pt + c-forza)
  line((7.15, 2.0), (7.77, 2.0), stroke: 0.6pt + c-forza)
  line((7.15, 1.5), (8.08, 1.5), stroke: 0.6pt + c-forza)
  line((7.15, 1.0), (8.38, 1.0), stroke: 0.6pt + c-forza)
  line((7.15, 0.5), (8.69, 0.5), stroke: 0.6pt + c-forza)
})
