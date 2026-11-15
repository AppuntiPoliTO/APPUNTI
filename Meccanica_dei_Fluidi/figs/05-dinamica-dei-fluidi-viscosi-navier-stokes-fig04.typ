// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 543) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  // Titolo schema 2
  draw.content((3.0, 2.6), text(size: 8pt, weight: "bold")[Parete $arrow.r$ Fluido ($arrow(n) = (0, -1, 0)$)], anchor: "center")

  // Parete inferiore
  parete(0.5, 5.3, 0.2)
  freccia((0.5, 0.2), (5.5, 0.2), sp: 1pt)
  etichetta((5.6, 0.2), $x_1$, anchor: "west")

  // Versore normale entrante nella parete (verso il basso)
  freccia((4.8, 0.2), (4.8, -0.6), col: c-norm)
  etichetta((4.9, -0.3), $arrow(n)$, col: c-norm, anchor: "west")

  // Componente tangenziale -mu Ue / h (opposta al moto)
  freccia((3.4, 0.2), (1.6, 0.2), col: c-forza, sp: 1pt)
  etichetta((2.5, -0.05), $-mu U_e / h$, col: c-forza, anchor: "north")

  // Componente normale +p (verso l'alto)
  freccia((3.4, 0.2), (3.4, 1.6), col: c-forza, sp: 1pt)
  etichetta((3.55, 0.9), $+p$, col: c-forza, anchor: "west")

  // Linee di proiezione
  draw.line((1.6, 0.2), (1.6, 1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  draw.line((3.4, 1.6), (1.6, 1.6), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))

  // Vettore risultante
  freccia((3.4, 0.2), (1.6, 1.6), col: c-forza, sp: 1.5pt)
  etichetta((1.5, 1.75), $arrow(t)_("parete" arrow.r "fluido")$, col: c-forza, anchor: "east")
})
