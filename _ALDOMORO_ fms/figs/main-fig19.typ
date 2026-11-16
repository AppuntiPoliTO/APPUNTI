// Figura estratta da main.typ (riga 1400) con LocalTypst
#import "@preview/cetz:0.3.4": canvas, draw

#canvas(length: 0.95cm, {
  import draw: *
  // Sezione a L (origine dello schizzo nello spigolo inferiore destro (0,0))
  line((0, 0), (-3, 0), (-3, 1), (-1.5, 1), (-1.5, 3), (0, 3), close: true, fill: rgb(195, 214, 238), stroke: 1.4pt)
  line((-1.5, 1), (0, 1), stroke: (dash: "dashed", thickness: 1pt))

  // Baricentri locali (+)
  content((-1.5, 0.5), text(size: 8pt)[$+$])
  content((-2.1, 0.5), text(size: 8pt)[$A_1$])
  content((-0.75, 2.0), text(size: 8pt)[$+$])
  content((-0.75, 2.45), text(size: 8pt)[$A_2$])

  // Baricentro globale G in (-1.125, 1.25)
  let gx = -1.125
  let gy = 1.25
  circle((gx, gy), radius: 0.14, fill: white, stroke: 0.8pt)
  arc((gx, gy), start: 90deg, stop: 180deg, radius: 0.14, mode: "PIE", fill: black)
  arc((gx, gy), start: 270deg, stop: 360deg, radius: 0.14, mode: "PIE", fill: black)

  // Assi baricentrici z_G e y_G
  line((gx, gy), (-3.8, gy), mark: (end: ">"), stroke: 0.8pt)
  line((gx, gy), (gx, 3.6), mark: (end: ">"), stroke: 0.8pt)
  content((-3.7, gy + 0.3), text(size: 8pt)[$z_G$])
  content((gx + 0.35, 3.45), text(size: 8pt)[$y_G$])

  // Assi principali d'inerzia zeta e eta (ruotati di 36.99 deg in senso orario rispetto a z_G, y_G)
  line((gx + 0.6, gy - 0.45), (gx - 2.6, gy + 1.96), mark: (end: ">"), stroke: 1.3pt + rgb(210, 30, 30))
  line((gx - 0.55, gy - 0.73), (gx + 1.85, gy + 2.45), mark: (end: ">"), stroke: 1.3pt + rgb(210, 30, 30))
  content((gx - 2.35, gy + 2.15), text(size: 9pt, fill: rgb(210, 30, 30))[$zeta$])
  content((gx + 2.05, gy + 2.25), text(size: 9pt, fill: rgb(210, 30, 30))[$eta$])

  // Arco per alpha_1 tra z_G e zeta
  arc((gx, gy), start: 180deg, stop: 143deg, radius: 1.1, anchor: "origin", mark: (end: ">", size: 0.14), stroke: 1.1pt + rgb(210, 30, 30))
  content((gx - 1.35, gy + 0.42), text(size: 8pt, fill: rgb(210, 30, 30))[$alpha_1$])

  // Quote baricentro 11,25 e 12,5
  line((gx, 0), (gx, -0.95), stroke: 0.5pt)
  line((0, 0), (0, -0.95), stroke: 0.5pt)
  line((gx, -0.8), (0, -0.8), mark: (start: ">", end: ">", size: 0.12), stroke: 0.6pt)
  content((gx / 2, -0.58), text(size: 7pt)[$11,25$])

  line((-3.5, 0), (-3.5, gy), mark: (start: ">", end: ">", size: 0.12), stroke: 0.6pt)
  content((-3.95, gy / 2), text(size: 7pt)[$12,5$])
})
