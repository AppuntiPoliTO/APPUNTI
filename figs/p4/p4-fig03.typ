// Disegno creato con Studio di LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw
#canvas(length: 0.88cm, {
  import draw: *

  // === SOPRA: Configurazione a Z (beta_2 = +beta_1, assi 1 e 2 paralleli) ===
  let zx0 = -2.9
  let zx1 = -1.1
  let zy1 = 0.0
  let zx2 = 1.2
  let zy2 = 1.44

  line((zx0, zy1), (zx1, zy1), stroke: 1.4pt)
  rect((zx1 - 0.08, zy1 - 0.35), (zx1 + 0.08, zy1 + 0.35), fill: white, stroke: 0.9pt)
  circle((zx1, zy1), radius: 0.12, fill: white, stroke: 0.85pt)

  line((zx1, zy1), (zx2, zy2), stroke: 1.4pt)
  line((zx1, zy1), (zx1 + 1.8, zy1), stroke: (dash: "dashed", thickness: 0.55pt))
  arc((zx1, zy1), start: 0deg, stop: 32deg, radius: 1.25, anchor: "origin", stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.7))
  content((zx1 + 1.52, zy1 + 0.34), text(size: 8.5pt)[$beta_1$])

  rect((zx2 - 0.08, zy2 - 0.35), (zx2 + 0.08, zy2 + 0.35), fill: white, stroke: 0.9pt)
  circle((zx2, zy2), radius: 0.12, fill: white, stroke: 0.85pt)

  line((zx2, zy2), (3.0, zy2), stroke: 1.4pt)
  line((zx2, zy2), (zx2 - 1.6, zy2), stroke: (dash: "dashed", thickness: 0.55pt))
  arc((zx2, zy2), start: 180deg, stop: 212deg, radius: 1.25, anchor: "origin", stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.7))
  content((zx2 - 1.50, zy2 - 0.34), text(size: 8.5pt)[$beta_2$])

  circle((zx0 + 0.6, zy1 - 0.48), radius: 0.20, stroke: 0.65pt)
  content((zx0 + 0.6, zy1 - 0.48), text(size: 7pt)[1])
  content((zx0 + 0.75, zy1 + 0.36), text(size: 7.5pt)[$M_1, Omega_1, theta_1$])

  circle((2.35, zy2 + 0.48), radius: 0.20, stroke: 0.65pt)
  content((2.35, zy2 + 0.48), text(size: 7pt)[2])
  content((2.35, zy2 - 0.36), text(size: 7.5pt)[$M_2, Omega_2, theta_2$])

  content((0.05, zy1 - 1.00), text(size: 8pt)[*Configurazione a Z* ($beta_2 = +beta_1$)])

  // === SOTTO: Configurazione a W (beta_2 = -beta_1) ===
  let rx0 = -2.35
  let ry1 = -4.40
  let rx1 = rx0 + 1.5
  let rx2 = rx1 + 1.9
  let ry2 = ry1 + 1.18

  line((rx0, ry1), (rx1, ry1), stroke: 1.4pt)
  rect((rx1 - 0.08, ry1 - 0.35), (rx1 + 0.08, ry1 + 0.35), fill: white, stroke: 0.9pt)
  circle((rx1, ry1), radius: 0.12, fill: white, stroke: 0.85pt)

  line((rx1, ry1), (rx2, ry2), stroke: 1.4pt)
  line((rx1, ry1), (rx1 + 1.5, ry1), stroke: (dash: "dashed", thickness: 0.55pt))
  arc((rx1, ry1), start: 0deg, stop: 32deg, radius: 1.15, anchor: "origin", stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.7))
  content((rx1 + 1.38, ry1 + 0.32), text(size: 8.5pt)[$beta_1$])

  rect((rx2 - 0.08, ry2 - 0.35), (rx2 + 0.08, ry2 + 0.35), fill: white, stroke: 0.9pt)
  circle((rx2, ry2), radius: 0.12, fill: white, stroke: 0.85pt)

  line((rx2, ry2), (rx2 + 0.72, ry2 + 1.48), stroke: 1.4pt)
  line((rx2, ry2), (rx2 + 1.35, ry2 + 0.84), stroke: (dash: "dashed", thickness: 0.55pt))
  arc((rx2, ry2), start: 32deg, stop: 64deg, radius: 1.15, anchor: "origin", stroke: 0.65pt, mark: (start: ">", end: ">", scale: 0.7))
  content((rx2 + 1.05, ry2 + 1.06), text(size: 8.5pt)[$beta_2$])

  circle((rx0 + 0.55, ry1 - 0.48), radius: 0.20, stroke: 0.65pt)
  content((rx0 + 0.55, ry1 - 0.48), text(size: 7pt)[1])
  circle((rx2 + 0.22, ry2 + 1.38), radius: 0.20, stroke: 0.65pt)
  content((rx2 + 0.22, ry2 + 1.38), text(size: 7pt)[2])

  content((0.05, ry1 - 1.00), text(size: 8pt)[*Configurazione a W* ($beta_2 = -beta_1$)])
})
