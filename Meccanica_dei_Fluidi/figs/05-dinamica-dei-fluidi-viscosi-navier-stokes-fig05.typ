// Figura estratta da capitoli/05-dinamica-dei-fluidi-viscosi-navier-stokes.typ (riga 626) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.95cm, {
  let H = 2.8

  // Pareti
  parete(-1.8, 2.8, 0)
  parete(-1.8, 2.8, H, sotto: false)

  // Profilo di velocità
  profilo(0, 0, eta => (eta - 1) * (1 - 3 * eta), H: H, s: 1.35, n: 8)

  // Assi
  freccia((-1.8, 0), (3.5, 0), sp: 0.9pt)
  freccia((0, 0), (0, H + 0.65), sp: 0.9pt)
  etichetta((3.65, 0), $x$, anchor: "west")
  etichetta((0.15, H + 0.65), $y$, anchor: "west")

  // Quota e
  quota((2.15, 0.05), (2.15, H - 0.05))
  etichetta((2.3, H / 2), $e$, anchor: "west")

  // Etichette
  etichetta((-1.7, H + 0.42), $y = e$, anchor: "west")
  etichetta((-1.7, -0.42), $y = 0$, anchor: "west")
  etichetta((0.25, -0.42), $(-U, 0, 0)$, col: c-vel)
})
