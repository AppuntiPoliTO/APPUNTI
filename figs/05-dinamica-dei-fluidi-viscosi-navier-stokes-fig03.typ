// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 512) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 1cm, {
  // Titolo schema 1
  draw.content((3.0, 2.3), text(size: 8pt, weight: "bold")[Fluido $arrow.r$ Parete ($arrow(n) = (0, 1, 0)$)], anchor: "center")

  // Parete inferiore
  parete(0.5, 5.3, 1.0)
  freccia((0.5, 1.0), (5.5, 1.0), sp: 1pt)
  etichetta((5.6, 1.0), $x_1$, anchor: "west")

  // Versore normale uscente dalla parete (verso l'alto)
  freccia((1.5, 1.0), (1.5, 1.8), col: c-norm)
  etichetta((1.4, 1.6), $arrow(n)$, col: c-norm, anchor: "east")

  // Componente tangenziale +mu Ue / h
  freccia((2.8, 1.0), (4.6, 1.0), col: c-forza, sp: 1pt)
  etichetta((3.7, 1.25), $mu U_e / h$, col: c-forza, anchor: "south")

  // Componente normale -p
  freccia((2.8, 1.0), (2.8, -0.4), col: c-forza, sp: 1pt)
  etichetta((2.65, 0.3), $-p$, col: c-forza, anchor: "east")

  // Linee di proiezione
  draw.line((4.6, 1.0), (4.6, -0.4), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  draw.line((2.8, -0.4), (4.6, -0.4), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))

  // Vettore risultante
  freccia((2.8, 1.0), (4.6, -0.4), col: c-forza, sp: 1.5pt)
  etichetta((4.7, -0.45), $arrow(t)_("fluido" arrow.r "parete")$, col: c-forza, anchor: "west")
})
