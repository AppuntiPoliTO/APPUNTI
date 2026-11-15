// Figura estratta da capitoli/06-energia-meccanica-nei-fluidi-viscosi.typ (riga 345) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#import "../template.typ": *

#canvas(length: 0.93cm, {
  let ox = 0.6
  let oy = 0.5
  let wx = 6.5
  let wy = 3.9

  // Assi log-log
  freccia((ox, oy), (ox + wx, oy), col: c-geo, sp: 0.9pt)
  freccia((ox, oy), (ox, oy + wy), col: c-geo, sp: 0.9pt)
  etichetta((ox + wx - 0.2, oy - 0.35), $"Re"$, col: c-geo)
  etichetta((ox - 0.35, oy + wy - 0.15), $lambda$, col: c-geo)

  // Fascia di transizione (Re ~ 1000 - 2000)
  let xt1 = ox + 2.45
  let xt2 = ox + 3.55
  draw.rect((xt1, oy), (xt2, oy + wy - 0.45), fill: c-riemp, stroke: (paint: c-aux, thickness: 0.6pt, dash: "dashed"))
  etichetta(((xt1 + xt2) / 2, oy + wy - 0.18), [Transizione], col: c-aux)
  etichetta(((xt1 + xt2) / 2, oy + 2.45), [*?*], col: c-aux)
  etichetta((xt1, oy - 0.32), $10^3$, col: c-aux)
  etichetta((xt2 + 0.15, oy - 0.32), $2 dot 10^3$, col: c-aux)

  // Regione 1: Laminare (lambda = 64 / Re, pendenza -1 in log-log)
  draw.line((ox + 0.35, oy + 3.35), (xt1 + 0.10, oy + 1.35), stroke: 1.5pt + c-norm)
  etichetta((ox + 1.05, oy + 2.65), $lambda = 64 / "Re"$, col: c-norm, anchor: "south-west")
  etichetta((ox + 1.22, oy + 0.8), [Laminare], col: c-norm)

  // Regione 3: Turbolento (lambda ~ Re^(-1/4), pendenza più dolce)
  draw.line((xt2 - 0.05, oy + 2.15), (ox + wx - 0.35, oy + 1.35), stroke: 1.5pt + c-vel)
  etichetta((ox + 5.05, oy + 2.22), $lambda prop "Re"^(-1\/4)$, col: c-vel)
  etichetta((ox + 5.05, oy + 0.8), [Turbolento], col: c-vel)

  // Punti sperimentali dispersi in transizione
  for pt in ((xt1 + 0.25, oy + 1.3), (xt1 + 0.45, oy + 1.55), (xt1 + 0.62, oy + 1.45), (xt1 + 0.78, oy + 1.85), (xt1 + 0.92, oy + 2.05)) {
    draw.circle(pt, radius: 0.05, fill: c-aux, stroke: none)
  }
})
