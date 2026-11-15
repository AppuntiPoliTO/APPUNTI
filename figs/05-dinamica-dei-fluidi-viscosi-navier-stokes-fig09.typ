// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 857) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.95cm, {
  // Parete inferiore
  parete(0, 8.5, 0, passo: 0.5)
  freccia((0, 0), (9.1, 0), sp: 0.8pt)
  etichetta((9.2, 0), $x$, anchor: "west")

  // Piastra superiore finita di lunghezza L a distanza e
  let h_meato = 1.3
  draw.rect((1.2, h_meato), (7.2, h_meato + 0.4), fill: c-riemp, stroke: 1pt + c-geo)
  quota((1.2, h_meato + 0.7), (7.2, h_meato + 0.7))
  etichetta((4.2, h_meato + 0.95), $L$)

  // Quota spessore meato e
  quota((0.8, 0.06), (0.8, h_meato - 0.06))
  etichetta((0.65, h_meato / 2), $e$, anchor: "east")

  // Versore normale in y = 0
  freccia((2.4, 0), (2.4, 0.8), col: c-norm, sp: 0.9pt)
  etichetta((2.25, 0.55), $arrow(n)$, col: c-norm, anchor: "east")

  // Componenti della forza per unità di superficie sulla parete inferiore
  let x0 = 4.4
  freccia((x0, 0), (x0 + 1.5, 0), col: c-forza, sp: 1.1pt)
  etichetta((x0 + 0.75, 0.3), $t_x = tau_0 tilde G e$, col: c-forza, bg: white)

  freccia((x0, 0), (x0, -1.65), col: c-forza, sp: 1.1pt)
  etichetta((x0 - 0.18, -0.85), $t_y = -p_0 tilde G L$, col: c-forza, anchor: "east", bg: white)

  draw.line((x0 + 1.5, 0), (x0 + 1.5, -1.65), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  draw.line((x0, -1.65), (x0 + 1.5, -1.65), stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  freccia((x0, 0), (x0 + 1.5, -1.65), col: c-forza, sp: 1.4pt)
  etichetta((x0 + 1.65, -1.65), $arrow(t)$, col: c-forza, anchor: "west")
})
