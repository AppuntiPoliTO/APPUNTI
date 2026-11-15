// Figura estratta da capitoli/01-fondamenti-proprieta-dei-fluidi-e-strumenti-mate.typ (riga 41) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.95cm, {
  import draw: *
  // Parete fissa
  parete(0, 4, 0)
  etichetta((2,-0.55), [Parete fissa])

  // Piastra mobile
  line((0,2.5), (4,2.5), stroke: 1pt + c-geo)
  etichetta((2,2.9), [Piastra mobile])

  // Forza F
  freccia((4,2.5), (5,2.5), col: c-forza, sp: 1.2pt)
  etichetta((5.2,2.5), $F$, col: c-forza, anchor: "west")

  // Asse y
  freccia((0,0), (0,3), sp: 0.8pt)
  etichetta((0,3.3), $y$)

  // Asse u(y)
  freccia((0,0), (4.5,0), sp: 0.8pt)
  etichetta((4.8,0), $u(y)$, anchor: "west")

  // Frecce del profilo di velocità
  for y in (0.5, 1.0, 1.5, 2.0, 2.5) {
    freccia((0,y), (y * 1.6, y), col: c-vel, sp: 1pt)
  }

  // Linea tratteggiata
  line((0,0), (4,2.5), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
})
