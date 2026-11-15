// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 170) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.7cm, {
  import draw: *

  // --- DISEGNO SINISTRO (Serbatoio) ---
  rect((2.5, 1), (4.5, 3.5), fill: c-fluido, stroke: none)

  // Asse z e linea di base
  line((1, 1), (1, 4.5), mark: (end: "stealth", fill: c-geo), stroke: 1pt)
  content((1, 4.8), [$z$])
  line((0.8, 1), (5, 1), mark: (end: "stealth", fill: c-geo), stroke: 1pt)

  // Serbatoio
  line((2.5, 4), (2.5, 1), stroke: 1pt) // Parete sinistra
  line((4.5, 4), (4.5, 1), stroke: 1pt) // Parete destra

  // Pelo libero del fluido
  line((2.5, 3.5), (4.5, 3.5), stroke: (paint: c-norm, thickness: 1pt))

  // Simbolo di pelo libero
  line((2.8, 3.8), (3.2, 3.8), (3, 3.5), close: true, stroke: (paint: c-norm, thickness: 0.8pt))
  line((2.9, 3.4), (3.1, 3.4), stroke: (paint: c-norm, thickness: 0.8pt))
  line((2.95, 3.3), (3.05, 3.3), stroke: (paint: c-norm, thickness: 0.8pt))
  line((2.98, 3.2), (3.02, 3.2), stroke: (paint: c-norm, thickness: 0.8pt))

  // Punto A
  circle((4.2, 3.5), radius: 0.06, stroke: c-geo, fill: white)
  content((4.05, 3.8), text(c-geo)[$A$])

  // Indicatore di profondità (h)
  line((1.8, 2.1), (1.8, 1), mark: (end: "stealth", fill: c-geo), stroke: (paint: c-geo, thickness: 0.7pt))
  line((1.8, 2.4), (1.8, 3.5), mark: (end: "stealth", fill: c-geo), stroke: (paint: c-geo, thickness: 0.7pt))
  content((1.8, 2.25), text(c-geo)[$h$])


  // --- DISEGNO DESTRO (Diagramma delle pressioni) ---

  // Assi z e p
  line((7, 0.7), (7, 4.5), mark: (end: "stealth", fill: c-geo), stroke: 1pt)
  content((7, 4.8), [$z$])
  line((6., 1), (10, 1), mark: (end: "stealth", fill: c-geo), stroke: 1pt)
  content((10.3, 1), [$p$])

  

  // Punto sul pelo libero (vertice del triangolo)
  circle((7, 3.5), radius: 0.06, fill: c-geo)

  // Triangolo delle pressioni
  line((7, 3.5), (9.5, 1), (7, 1), close: true, stroke: 1pt + c-forza)

  circle((7,1), radius: 0.05, fill: c-geo)
  content((6.4,0.3), $p_"atm"$, anchor: "south-west", padding: 0.1)
  // Tratteggio orizzontale interno al triangolo
  line((7, 1.4), (9.1, 1.4), stroke: 0.6pt + c-forza)
  line((7, 1.8), (8.7, 1.8), stroke: 0.6pt + c-forza)
  line((7, 2.2), (8.3, 2.2), stroke: 0.6pt + c-forza)
  line((7, 2.6), (7.9, 2.6), stroke: 0.6pt + c-forza)
  line((7, 3.0), (7.5, 3.0), stroke: 0.6pt + c-forza)
})
