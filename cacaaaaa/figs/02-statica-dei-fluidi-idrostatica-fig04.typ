// Figura estratta da capitoli/02-statica-dei-fluidi-idrostatica.typ (riga 247) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.8cm, {
  import draw: *
  
  // Riempimento del liquido (serbatoio e tubo)
  line((0,3), (3,3), (3,1), (3.5,1), (3.5,3), (4,3), (4,0.5), (3,0.5), (3,0), (0,0), close: true, fill: c-fluido, stroke: none)
  
  // Linee di pelo libero nel serbatoio e nel tubo
  line((0, 3), (3, 3), stroke: 1pt + c-norm)
  line((3.5, 3), (4, 3), stroke: 1pt + c-norm)
  
  // Simbolo di pelo libero (triangolo rovesciato)
  line((1.5, 3), (1.3, 3.3), (1.7, 3.3), close: true, stroke: 0.8pt + c-norm)
  
  // Linea del piano dei carichi idrostatici (p.c.i.)
  line((4.2, 3), (5.5, 3), stroke: (paint: c-aux, dash: "dashed", thickness: 0.6pt))
  content((5.7, 3), text(c-aux)[p.c.i.], anchor: "west")
  
  // Pareti esterne continue (sinistra serbatoio, fondo, fondo tubo, destra tubo)
  line((0, 4), (0, 0), (3, 0), (3, 0.5), (4, 0.5), (4, 4), stroke: 1pt)
  
  // Pareti interne continue (destra serbatoio, sopra tubo, sinistra tubo)
  line((3, 4), (3, 1), (3.5, 1), (3.5, 4), stroke: 1pt)
})
