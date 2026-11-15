// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 835) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.7cm, {
  import draw: *
  rect((1, 0), (8.5, 3), fill: c-fluido, stroke: none)

  // Fondo orizzontale
  line((1, 0), (10.5, 0), stroke: 1pt)

  // Piastra orizzontale (riempimento e contorno separati)
  rect((3, 0), (6, 0.2), fill: c-riemp, stroke: none)
  rect((3, 0), (6, 0.2), stroke: 1pt)

  // Pelo libero (p.c.i.)
  line((1, 3), (2.5, 3), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  line((2.5, 3), (8.5, 3), stroke: 0.8pt + c-norm)
  content((0.4, 3), [p.c.i.])

  // Quota profondità h
  line((1.5, 1.8), (1.5, 3), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  line((1.5, 1.2), (1.5, 0), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  content((1.5, 1.5), $h$)

  // Quota larghezza piastra h
  line((4.2, -0.4), (3, -0.4), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  line((4.8, -0.4), (6, -0.4), stroke: 0.6pt, mark: (end: "stealth", fill: c-geo))
  content((4.5, -0.4), $h$)

  // Posizione dei centri G e C
  content((4.5, -1.0), $G equiv C$)

  // Vettore spinta S concentrato
  line((4.5, 1.8), (4.5, 0.2), stroke: 1.2pt + c-forza, mark: (end: "stealth", fill: c-forza))
  content((4.9, 1.2), text(c-forza, $arrow(S)$))

  // Peso specifico del fluido
  content((7.5, 1.5), $gamma$)

  // Diagramma delle pressioni p(z)
  line((8.5, 3), (8.5, 0), stroke: 1pt + c-forza)
  line((8.5, 3), (10.5, 0), stroke: 1pt + c-forza)
  line((8.5, 0), (10.5, 0), stroke: 1pt + c-forza)

  // Vettori di pressione interni al diagramma
  line((8.5, 2.5), (8.83, 2.5), stroke: 0.6pt + c-forza)
  line((8.5, 2.0), (9.17, 2.0), stroke: 0.6pt + c-forza)
  line((8.5, 1.5), (9.50, 1.5), stroke: 0.6pt + c-forza)
  line((8.5, 1.0), (9.83, 1.0), stroke: 0.6pt + c-forza)
  line((8.5, 0.5), (10.17, 0.5), stroke: 0.6pt + c-forza)

  // Etichetta p(z)
  content((10.3, 1.5), text(c-forza, $p(z)$))
})
